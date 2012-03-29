//
//  SubslideController.h
//  subslidesDemo
//
//  Created by Sergey Kuryanov on 29.03.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SubslideController : UIViewController
{
    NSString *_text;
}
- (id)initWithText:(NSString *)text;
@property (weak, nonatomic) IBOutlet UILabel *numberLabel;
@end
