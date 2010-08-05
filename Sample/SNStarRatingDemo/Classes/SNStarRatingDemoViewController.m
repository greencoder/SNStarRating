//
//  SNStarRatingDemoViewController.m
//  SNStarRatingDemo
//
//  Created by Scott Newman on 8/5/10.

#import "SNStarRatingDemoViewController.h"
#import "SNStarRating.h"

@implementation SNStarRatingDemoViewController

- (void)viewDidLoad 
{
    [super viewDidLoad];
	[[self view] setBackgroundColor:[UIColor grayColor]];
		
	// Example one 
	SNStarRating *starRating = [[SNStarRating alloc] initWithNumberOfStars:5];
	[starRating setCenter:CGPointMake(320.0/2, 100.0)];
	[[self view] addSubview:starRating];
	[starRating release];

	// Example with an initial rating
	SNStarRating *starRating2 = [[SNStarRating alloc] initWithNumberOfStars:4 initialRating:3];
	[starRating2 setCenter:CGPointMake(320.0/2, 200.0)];
	[[self view] addSubview:starRating2];
	[starRating2 release];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
}


- (void)dealloc {
    [super dealloc];
}

@end
