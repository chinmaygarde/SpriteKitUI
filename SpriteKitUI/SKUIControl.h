//
//  SKUIControl.h
//  SpriteKitUI
//
//  Created by Chinmay Garde on 10/22/13.
//  Copyright (c) 2013 Chinmay Garde. All rights reserved.
//

@import SpriteKit;

typedef NS_OPTIONS(NSInteger, SKUIControlState) {
    SKUIControlStateNormal          = 0,
    SKUIControlStateHighlighted     = 1 << 0,
    SKUIControlStateSelected        = 1 << 1,
    SKUIControlStateDisabled        = 1 << 2,
};

@interface SKUIControl : SKNode

@property (nonatomic, getter = isDisabled) BOOL disabled;
@property (nonatomic, getter = isSelected) BOOL selected;
@property (nonatomic, getter = isHighlighted) BOOL highlighted;

@property (nonatomic, readonly) SKUIControlState state;

@end
