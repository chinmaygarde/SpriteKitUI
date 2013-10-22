//
//  SKUIButton.h
//  SpriteKitUI
//
//  Created by Chinmay Garde on 10/22/13.
//  Copyright (c) 2013 Chinmay Garde. All rights reserved.
//

#import "SKUIControl.h"

@interface SKUIButton : SKUIControl

@property (nonatomic, retain, readonly) UIGestureRecognizer *tapRecognizer;

-(void) setTexture:(SKTexture *) texture forState:(SKUIControlState) state;

-(SKTexture *) textureForState:(SKUIControlState) state;

@end
