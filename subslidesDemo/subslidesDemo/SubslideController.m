//
//  SubslideController.m
//  subslidesDemo
//
//  Created by Sergey Kuryanov on 29.03.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SubslideController.h"

@implementation SubslideController
@synthesize numberLabel;

- (id)initWithText:(NSString *)text
{
    self = [super init];
    if (self)
    {
        _text = text;
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    numberLabel.text = _text;
    
    self.view.backgroundColor = [[UIColor alloc] initWithRed:(float)random()/RAND_MAX
                                                       green:(float)random()/RAND_MAX
                                                        blue:(float)random()/RAND_MAX
                                                       alpha:1.0];
}

- (void)viewDidUnload
{
    [self setNumberLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

@end
