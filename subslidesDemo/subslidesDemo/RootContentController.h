//
//  RootContentController.h
//  subslidesDemo
//
//  Created by Sergey Kuryanov on 29.03.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootContentController : UIViewController
<UIScrollViewDelegate>
{
    NSArray *_subviews;
    NSMutableArray *_viewControllers;
}
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end
