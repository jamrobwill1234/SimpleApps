//
//  GameScene.m
//  PixelAdventure
//
//  Created by James Williams on 6/8/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene
{
    
    SKShapeNode * pixel;
}

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:view.frame];
    NSLog(@"%f %f",view.frame.size.width, view.frame.size.height);

    
//    SKFieldNode * field = [SKFieldNode radialGravityField];
//    
//    field.position = view.center;
//    field.strength = 100;
//    
//    self.backgroundColor = [UIColor blackColor];
//    [self addChild:field];
//
    pixel = [SKShapeNode shapeNodeWithEllipseOfSize:CGSizeMake(10,10)];
    pixel.fillColor = [UIColor cyanColor];
    pixel.strokeColor = [UIColor clearColor];
    pixel.position = CGPointMake(10,10);
    
    pixel.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:5];
    
    
    [self addChild:pixel];

}

- (void)movePixelInDirection:(CGVector)direction {
    
    //[pixel.physicsBody applyForce:direction];
    
    CGFloat newX = pixel.position.x + direction.dx;
    CGFloat newY = pixel.position.y + direction.dy;
    
    pixel.position = CGPointMake(newX, newY);

}
- (void)normalAttack {
    
    SKShapeNode * babyPixel = [SKShapeNode shapeNodeWithEllipseOfSize:CGSizeMake(2,2)];
    
    babyPixel.fillColor = [UIColor magentaColor];
    babyPixel.strokeColor = [UIColor clearColor];
    
    babyPixel.position = CGPointMake(pixel.position.x + 10, pixel.position.y);
    
    [self addChild:babyPixel];
    babyPixel.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:1];
    [babyPixel.physicsBody applyImpulse:CGVectorMake(1, 0)];
    babyPixel.physicsBody.affectedByGravity = NO;
}

- (void)specialAttack{
    SKEmitterNode * fireBall = [SKEmitterNode nodeWithFileNamed:@"Attack"];
    
    [self addChild:fireBall];
    fireBall.position = CGPointMake(pixel.position.x + 10, pixel.position.y);
    

    fireBall.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:1];
    [fireBall.physicsBody applyImpulse:CGVectorMake(0.1, 0.1)];
    fireBall.physicsBody.affectedByGravity = NO;
}

    



-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
