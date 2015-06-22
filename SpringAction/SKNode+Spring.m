//
//  SKNode+Spring.m
//  TestSpringAction
//
//  Created by Benny Khoo on 6/22/15.
//  Copyright (c) 2015 Benny Khoo. All rights reserved.
//

#import "SKNode+Spring.h"

@implementation SKNode (Spring)

- (CGFloat)x
{
    return self.position.x;
}

- (void)setX:(CGFloat)x
{
    self.position = CGPointMake(x, self.y);
}

- (CGFloat)y
{
    return self.position.y;
}

- (void)setY:(CGFloat)y
{
    self.position = CGPointMake(self.x, y);
}

@end
