//
//  SKUIControl.m
//  SpriteKitUI
//
//  Created by Chinmay Garde on 10/22/13.
//  Copyright (c) 2013 Chinmay Garde. All rights reserved.
//

#import "SKUIControl.h"
#import "SKUIControl+SubclassEyesOnly.h"

@implementation SKUIControl

-(void) setDisabled:(BOOL)disabled {
    SKUIControlState newState = self.state;
    
    if (disabled)
        newState |= (1 << 2);
    else
        newState &= ~(1 << 2);
    
    self.state = newState;
}

-(BOOL) disabled {
    return _state & SKUIControlStateDisabled;
}

-(void) setHighlighted:(BOOL)highlighted {
    SKUIControlState newState = self.state;
    
    if (highlighted)
        newState |= (1 << 0);
    else
        newState &= ~(1 << 0);
    
    self.state = newState;
}

-(BOOL) isHighlighted {
    return _state & SKUIControlStateHighlighted;
}

-(void) setSelected:(BOOL)selected {
    SKUIControlState newState = self.state;
    
    if (selected)
        newState |= (1 << 1);
    else
        newState &= ~(1 << 1);
    
    self.state = newState;
}

-(BOOL) isSelected {
    return _state & SKUIControlStateSelected;
}

@end

@implementation SKUIControl (SubclassEyesOnly)

-(void) setState:(SKUIControlState) state {
    SKUIControlState current = self.state;
    
    if (current == _state)
        return;
    
    _state = current;
    
    [self stateDidChangeFrom:current to:_state];
}

-(void) stateDidChangeFrom:(SKUIControlState) from to:(SKUIControlState) to {
    // Subclass responsibility
}

@end
