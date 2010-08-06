//
//  StarRating.m
//  StarRatingDemo
//
//  Created by Scott Newman on 8/5/10.

#import "SNStarRating.h"

const float BTN_WIDTH = 42.0;
const float BTN_HEIGHT = 42.0;

@implementation SNStarRating

@synthesize numberStars;
@synthesize rating;

// You're not supposed to use initWithFrame, but it's here in case someone didn't get the memo.
- (id)initWithFrame:(CGRect)frame 
{
	return [self initWithNumberOfStars:5 initialRating:0];
}

// Convenience method if you don't want/have an initial value
- (id)initWithNumberOfStars:(int)numStars
{	
	return [self initWithNumberOfStars:numStars initialRating:0];
}

// This is the *real* method that will ultimately get called
- (id)initWithNumberOfStars:(int)numStars initialRating:(int)initialRating
{
	CGRect frame = CGRectMake(0.0, 0.0, (numStars * BTN_WIDTH), BTN_HEIGHT);
	if ((self = [super initWithFrame:frame])) 
	{
		[self setNumberStars:numStars];
		[self setRating:initialRating];		
		// If you set the view as opaque, drawRect will NOT
		// redraw properly and you will get angry.
		[self setOpaque:NO];
    }
    return self;	
}

- (void)drawRect:(CGRect)rect 
{
	UIImage *starImage = [UIImage imageNamed:@"star.png"];
	UIImage *dotImage = [UIImage imageNamed:@"dot.png"];
	
	// Loop through each star and see if we are suppoed to draw a 
	// star or a dot.
	for (int i=1; i<=[self numberStars]; i++)
	{
		UIImage *img = (i <= [self rating]) ? starImage : dotImage;
		CGPoint imagePoint;
		imagePoint.x = BTN_WIDTH * (i-1);
		imagePoint.y = 0.0f;
		[img drawAtPoint:imagePoint];
	}
	
}

- (void)updateRatingFromTouch:(CGPoint)touchPoint
{	
	// Dividing the X location that was touched by the width of each image 
	// and then rounding to an int will tell us pretty accurately which image 
	// they touched. We add one so the first button doesn't get considered to 
	// be zero.
	float region = touchPoint.x / BTN_WIDTH;
	int newRating = (int)region + 1;
	
	// Not every touch move is into a new region, so let's try and limit 
	// the amound of redrawing we do.
	if (newRating != [self rating]) {
		[self setRating:newRating];
		[self setNeedsDisplay];
	}
	
}

// We have to use both touchesBegan and touchesMoved because pressing
// your finger straight down on a star won't invoke the move method.
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	CGPoint touchPoint = [[touches anyObject] locationInView:self];
	[self updateRatingFromTouch:touchPoint];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	CGPoint touchPoint = [[touches anyObject] locationInView:self];
	[self updateRatingFromTouch:touchPoint];
}


- (void)dealloc 
{
	[super dealloc];
}


@end
