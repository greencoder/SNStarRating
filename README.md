Overview
================================

SNStarRating is an iOS UI control that lets users choose a rating visually by tapping on the appropriate number of stars. This implementation is contained in a `UIView` and uses no subviews; instead, drawRect is overridden and draws the images directly into the context. (It was designed with performance in mind)

There are only four files: a header and implementation for SNStarRating and two images that represent the on/off states for each star. (Also included is the Photoshop PSD file used to create the images)

Usage
================================

1. Copy SNStarRating.h and SNStarRating.m into your project. 

2. Copy dot.png and star.png into your application's resources folder.

3. Allocate the object and initialize it with `initWithNumberOfStars`:

        SNStarRating *starRating = [[SNStarRating alloc] initWithNumberOfStars:5];
        [starRating setCenter:CGPointMake(320.0/2, 100.0)];
        [[self view] addSubview:starRating];
        [starRating release];

4. If you wish to specify an initial rating, you can do so by initializing with `initialRating`:

        SNStarRating *starRating2 = [[SNStarRating alloc] initWithNumberOfStars:5 initialRating:3];
        [starRating2 setCenter:CGPointMake(320.0/2, 200.0)];
        [[self view] addSubview:starRating2];
        [starRating2 release];

5. SNStarRating is similar to UIButton in that you don't `initWithFrame`, so you have to either manually set the frame to change the X/Y or (preferred) set the center to a `CGPoint`.

6. You can get the value of the control by using the `rating` property.


Customization
================================

You can create any number of stars you wish by changing the argument value for the `initWithNumberOfStars:` selector. See the example project for this.

The `BTN_HEIGHT` and `BTN_WIDTH` constants must be set to the width of your images; the `touchesBegan` and `touchesMoved` methods use the width to determine the ratings

`initWithNumberOfStars:` automatically creates a frame based on the number of stars you are initializing with. The frame size is automatically calculated; you shouldn't have to mess with it.


Feedback
================================

If you have any suggestions or feedback, feel free to drop me a note.
