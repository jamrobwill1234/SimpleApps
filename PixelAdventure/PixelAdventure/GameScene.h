//
//  GameScene.h
//  PixelAdventure
//

//  Copyright (c) 2015 James Williams. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface GameScene : SKScene
- (void)movePixelInDirection:(CGVector)direction;
- (void)normalAttack;
- (void)specialAttack;

@end
