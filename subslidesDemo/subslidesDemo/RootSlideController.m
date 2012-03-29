//
//  RootSlideController.m
//  subslidesDemo
//
//  Created by Sergey Kuryanov on 29.03.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RootSlideController.h"
#import "SubslideController.h"

@implementation RootSlideController
@synthesize scrollView = _scrollView;

- (id)initWithNumber:(int)number andSlidesCount:(int)slidesCount;
{
    self = [super init];
    if (self)
    {
        _number = number;
        _slidesCount = slidesCount;
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
    
    _scrollView.pagingEnabled = YES;
    _scrollView.contentSize = CGSizeMake(self.view.frame.size.width,
                                         self.view.frame.size.width * _slidesCount);
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.showsVerticalScrollIndicator = NO;
    _scrollView.scrollsToTop = NO;
    _scrollView.delegate = self;

    for (int i = 0; i < _slidesCount; i++)
    {
        NSString *text = [NSString stringWithFormat:@"%d.%d", _number, i];
        SubslideController *subslide = [[SubslideController alloc] initWithText:text];
        CGRect frame = self.view.frame;
        frame.origin.x = 0;
        frame.origin.y = frame.size.height * i;
        subslide.view.frame = frame;
        [_scrollView addSubview:subslide.view];
    }
}

- (void)viewDidUnload
{
    [self setScrollView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}
- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    UIScrollView *parentScroll = (UIScrollView *)[self.view.superview viewWithTag:1];
    if (sender.contentOffset.y == 0)
    {
        parentScroll.scrollEnabled = YES;
    }
    else
    {
        parentScroll.scrollEnabled = NO;
    }
}
@end
