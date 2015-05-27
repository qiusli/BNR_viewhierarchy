//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Qiushi Li on 5/26/15.
//  Copyright (c) 2015 BigNerdRanch. All rights reserved.
//

#import "BNRHypnosisView.h"

@implementation BNRHypnosisView

- (instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */

- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // 定义画笔
    UIBezierPath *path = [[UIBezierPath alloc] init];
    path.lineWidth = 10;
    [[UIColor lightGrayColor] setStroke];
    float maxRadius = hypotf(bounds.size.width, bounds.size.height) / 2;
    for (float radius = maxRadius; radius > 0; radius -= 20) {
        [path moveToPoint:CGPointMake(center.x + radius, center.y)];
        [path addArcWithCenter:center radius:radius startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    }
    
    [path stroke];
    
    UIImage *chelse = [UIImage imageNamed:@"shapeimage_26.png"];
    [chelse drawInRect:CGRectMake(center.x - 50, center.y - 50, 100, 100)];
}


@end
