//
//  SKUIButton.m
//  SpriteKitUI
//
//  Created by Chinmay Garde on 10/22/13.
//  Copyright (c) 2013 Chinmay Garde. All rights reserved.
//

#import "SKUIButton.h"
#import "SKUIControl+SubclassEyesOnly.h"
#import "SKUIMultistateValue.h"

@interface SKUIButton ()

@property (nonatomic, retain) SKUIMultistateValue *textures;

@end

@implementation SKUIButton

-(instancetype) init {
    self = [super init];
    if (self) {
        _tapRecognizer = [[UIGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
    }
    return self;
}

-(void) setTexture:(SKTexture *) texture forState:(SKUIControlState) state {
    [self.textures setValue:texture forControlState:state];
}

-(SKTexture *) textureForState:(SKUIControlState) state {
    return [self.textures valueForState:state];
}

-(void) onTap:(UIGestureRecognizer *) recognizer {
    if(self.isDisabled)
        return;
    
    SKUIControlState newState = SKUIControlStateNormal;

    switch (recognizer.state) {
        case UIGestureRecognizerStateBegan:
            newState = SKUIControlStateHighlighted;
            break;
        case UIGestureRecognizerStatePossible:
        case UIGestureRecognizerStateChanged:
        case UIGestureRecognizerStateEnded:
        case UIGestureRecognizerStateCancelled:
        case UIGestureRecognizerStateFailed:
            newState = SKUIControlStateNormal;
            break;
    }
    
    self.state = newState;
}

@end
