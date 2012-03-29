//
//  RootSlideController.h
//  subslidesDemo
//
//  Created by Sergey Kuryanov on 29.03.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootSlideController : UIViewController
<UIScrollViewDelegate>
{
    int _number;
    int _slidesCount;
}
- (id)initWithNumber:(int)number andSlidesCount:(int)slidesCount;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end
