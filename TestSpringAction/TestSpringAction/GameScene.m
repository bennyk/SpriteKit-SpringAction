//
//  GameScene.m
//  TestSpringAction
//
//  Created by Benny Khoo on 6/21/15.
//  Copyright (c) 2015 Benny Khoo. All rights reserved.
//

#import "GameScene.h"

#import "SKAction+Spring.h"

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
    myLabel.text = @"Hello, World!";
    myLabel.fontSize = 65;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    
    [self addChild:myLabel];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.xScale = 0.5;
        sprite.yScale = 0.5;
        sprite.position = location;
        
//        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
//        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
        
        id move = [SKAction moveByX:0 y:200 duration:3 delay:0.1 usingSpringWithDamping:0.2 initialSpringVelocity:0];
        [sprite runAction:move];
        
        id rotate = [SKAction rotateByAngle:M_PI duration:3 delay:0.1 usingSpringWithDamping:0.2 initialSpringVelocity:0];
        [sprite runAction:rotate];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
