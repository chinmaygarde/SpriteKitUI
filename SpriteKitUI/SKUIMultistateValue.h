//
//  SKUIMultistateValue.h
//  SpriteKitUI
//
//  Created by Chinmay Garde on 10/22/13.
//  Copyright (c) 2013 Chinmay Garde. All rights reserved.
//

#import "SKUIControl.h"

@interface SKUIMultistateValue : NSObject

-(void) setValue:(id) value forControlState:(SKUIControlState) state;
-(id) valueForState:(SKUIControlState) state;

@end
