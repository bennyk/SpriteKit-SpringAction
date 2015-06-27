//
//  SKAction+Spring.m
//  TestSpringAction
//
//  Created by Benny Khoo on 6/21/15.
//  Copyright (c) 2015 Benny Khoo. All rights reserved.
//

#import "SKAction+Spring.h"

@implementation SKAction (Spring)

#pragma mark Move

+ (SKAction *) moveByX:(CGFloat)deltaX y:(CGFloat)deltaY duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    id moveByX = [self animateKeyPath:@"x" byValue:@(deltaX) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
    id moveByY = [self animateKeyPath:@"y" byValue:@(deltaY) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
    return [SKAction group:@[moveByX, moveByY]];
}

+ (SKAction *) moveBy:(CGVector)delta duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    id moveByX = [self animateKeyPath:@"x" byValue:@(delta.dx) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
    id moveByY = [self animateKeyPath:@"y" byValue:@(delta.dy) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
    return [SKAction group:@[moveByX, moveByY]];
}

+ (SKAction *) moveTo:(CGPoint)location duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    id moveToX = [self animateKeyPath:@"x" toValue:@(location.x) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
    id moveToY = [self animateKeyPath:@"y" toValue:@(location.y) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
    return [SKAction group:@[moveToX, moveToY]];
}

+ (SKAction *) moveToX:(CGFloat)x duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:@"x" toValue:@(x) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

+ (SKAction *) moveToY:(CGFloat)y duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:@"y" toValue:@(y) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

# pragma mark Rotate

+ (SKAction *) rotateByAngle:(CGFloat)radians duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:@"zRotation" byValue:@(radians) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

+ (SKAction *) rotateToAngle:(CGFloat)radians duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:@"zRotation" toValue:@(radians) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

# pragma mark Scale

+ (SKAction *)scaleBy:(CGFloat)scale duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self scaleXBy:scale y:scale duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

+ (SKAction *)scaleTo:(CGFloat)scale duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self scaleXTo:scale y:scale duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

+ (SKAction *)scaleXBy:(CGFloat)xScale y:(CGFloat)yScale duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    id scaleXBy = [self animateKeyPath:@"xScale" byValue:@(xScale) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
    id scaleYBy = [self animateKeyPath:@"yScale" byValue:@(yScale) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
    return [SKAction group:@[scaleXBy, scaleYBy]];
}

+ (SKAction *)scaleXTo:(CGFloat)scale duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:@"xScale" toValue:@(scale) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

+ (SKAction *)scaleYTo:(CGFloat)scale duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:@"yScale" toValue:@(scale) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

+ (SKAction *)scaleXTo:(CGFloat)xScale y:(CGFloat)yScale duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    id scaleXTo = [self scaleXTo:xScale duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
    id scaleYTo = [self scaleYTo:yScale duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
    return [SKAction group:@[scaleXTo, scaleYTo]];
}

# pragma mark Fade

+ (SKAction *)fadeInWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:@"alpha" toValue:@(1) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

+ (SKAction *)fadeOutWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:@"alpha" toValue:@(0) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

+ (SKAction *)fadeAlphaBy:(CGFloat)factor duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:@"alpha" byValue:@(factor) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

+ (SKAction *)fadeAlphaTo:(CGFloat)factor duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:@"alpha" toValue:@(factor) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

# pragma mark Resize

+ (SKAction *)resizeByWidth:(CGFloat)width height:(CGFloat)height duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    id resizeByWidth = [self animateKeyPath:@"width" byValue:@(width) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
    id resizeByHeight = [self animateKeyPath:@"height" byValue:@(height) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
    return [SKAction group:@[resizeByWidth, resizeByHeight]];
}

+ (SKAction *)resizeToWidth:(CGFloat)width duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:@"width" toValue:@(width) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

+ (SKAction *)resizeToHeight:(CGFloat)height duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:@"height" toValue:@(height) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

+ (SKAction *)resizeToWidth:(CGFloat)width height:(CGFloat)height duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    id resizeByWidth = [self resizeToWidth:width duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
    id resizeByHeight = [self resizeToHeight:height duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
    return [SKAction group:@[resizeByWidth, resizeByHeight]];
}

# pragma mark Colorize

+ (SKAction *)colorizeWithColorBlendFactor:(CGFloat)colorBlendFactor duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:@"height" toValue:@(colorBlendFactor) duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

# pragma mark Keypath animation

+ (SKAction *)animateKeyPath:(NSString *)keyPath byValue:(id)initialDistance duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:keyPath byValue:initialDistance toValue:nil duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

+ (SKAction *)animateKeyPath:(NSString *)keyPath toValue:(id)finalValue duration:(NSTimeInterval)duration                       delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    return [self animateKeyPath:keyPath byValue:nil toValue:finalValue duration:duration delay:delay usingSpringWithDamping:dampingRatio initialSpringVelocity:velocity];
}

+ (SKAction *)animateKeyPath:(NSString *)keyPath byValue:(id)initialDistance toValue:(id)finalValue                    duration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity
{
    __block CGFloat naturalFrequency, dampedFrequency, t1, t2, s1, s2, d1;
    __block BOOL init = NO;
        
    SKAction *animation = [SKAction customActionWithDuration:duration actionBlock:^(SKNode *node, CGFloat elapsedTime) {
        
        if (!init) {
            
            s1 = [[node valueForKeyPath:keyPath] floatValue];
            
            d1 = initialDistance != nil ? [initialDistance floatValue] : [finalValue floatValue] - s1;
            s2 = finalValue != nil ? [finalValue floatValue] : s1 + [initialDistance floatValue];
            
            CGFloat magicNumber;
            if (dampingRatio < 1) {
                magicNumber = 8 / dampingRatio;
            }
            else if (dampingRatio == 1) {
                magicNumber = 10;
            }
            else {
                magicNumber = 12 * dampingRatio;
            }
            
            naturalFrequency = magicNumber / (CGFloat)duration;
            dampedFrequency = naturalFrequency * sqrt(1 - powf(dampingRatio, 2));
            
            t1 = 1 / (naturalFrequency * (dampingRatio - sqrt(pow(dampingRatio, 2) - 1)));
            t2 = 1 / (naturalFrequency * (dampingRatio + sqrt(pow(dampingRatio, 2) - 1)));
            
            init = YES;
        }
        
        CGFloat A, B, currentValue;
        if (elapsedTime < (CGFloat)duration) {
            if (dampingRatio < 1) {
                A = d1;
                B = (dampingRatio * naturalFrequency - velocity) * d1 / dampedFrequency;
                
                currentValue = s2 - exp(-dampingRatio * naturalFrequency * elapsedTime) * (A * cos(dampedFrequency * elapsedTime) + B * sin(dampedFrequency * elapsedTime));
                
            }
            else if (dampingRatio == 1) {
                A = d1;
                B = (naturalFrequency - velocity) * d1;
                
                currentValue = s2 - exp(-dampingRatio * naturalFrequency * elapsedTime) * (A + B * elapsedTime);
                
            }
            else {
                A = (t1 * t2 / (t1 - t2)) * d1 * (1/t2 - velocity);
                B = (t1 * t2 / (t2 - t1)) * d1 * (1/t1 - velocity);
                
                currentValue = s2 - A * exp(-elapsedTime/t1) - B * exp(-elapsedTime/t2);
            }
        }
        else {
            currentValue = s2;
        }
        
        [node setValue:@(currentValue) forKey:keyPath];
    }];
    
    if (delay > 0) {
        return [SKAction sequence:@[[SKAction waitForDuration:delay], animation]];
    }
    else {
        return animation;
    }
    
}

@end
