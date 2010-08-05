//
//  StarRating.h
//  StarRatingDemo
//
//  Created by Scott Newman on 8/5/10.

#import <UIKit/UIKit.h>


@interface SNStarRating:UIView
{
	int numberStars;
	int rating;
}

@property int numberStars;
@property int rating;

- (id)initWithNumberOfStars:(int)numStars;
- (id)initWithNumberOfStars:(int)numStars initialRating:(int)initialRating;
- (void)updateRatingFromTouch:(CGPoint)touchPoint;

@end
