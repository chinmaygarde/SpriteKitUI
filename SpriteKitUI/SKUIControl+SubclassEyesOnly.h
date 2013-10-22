//
//  SKUIControl+SubclassEyesOnly.h
//  SpriteKitUI
//
//  Created by Chinmay Garde on 10/22/13.
//  Copyright (c) 2013 Chinmay Garde. All rights reserved.
//

#import "SKUIControl.h"

@interface SKUIControl (SubclassEyesOnly)

-(void) setState:(SKUIControlState) state;

-(void) stateDidChangeFrom:(SKUIControlState) from to:(SKUIControlState) to;

@end
