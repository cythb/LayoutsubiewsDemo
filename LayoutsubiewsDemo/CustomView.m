//
//  CustomView.m
//  aaa
//
//  Created by Tang Haibo on 12-6-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CustomView.h"
#import "CustomSubview.h"

@implementation CustomView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        sub = [[[CustomSubview alloc] initWithFrame:self.bounds] autorelease];
        [self addSubview:sub];
        [self performSelector:@selector(changeSubFrame) withObject:nil afterDelay:3];
    }
    return self;
}

- (void)changeSubFrame{
    NSLog(@"3s后改变子视图Bounds");
    sub.bounds = CGRectMake(0, 0, 10, 10);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)layoutSubviews{
    NSLog(@"layoutSubviews");
}
@end
