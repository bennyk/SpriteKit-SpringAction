//
//  SKSpriteNode+Spring.m
//  TestSpringAction
//
//  Created by Benny Khoo on 6/22/15.
//  Copyright (c) 2015 Benny Khoo. All rights reserved.
//

#import "SKSpriteNode+Spring.h"

@implementation SKSpriteNode (Spring)

- (CGFloat)width
{
    return self.size.width;
}

- (void)setWidth:(CGFloat)width
{
    self.size = CGSizeMake(width, self.size.height);
}

- (CGFloat)height
{
    return self.size.height;
}

- (void)setHeight:(CGFloat)height
{
    self.size = CGSizeMake(self.size.width, height);
}

@end
