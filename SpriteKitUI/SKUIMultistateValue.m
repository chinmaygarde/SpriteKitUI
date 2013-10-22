//
//  SKUIMultistateValue.m
//  SpriteKitUI
//
//  Created by Chinmay Garde on 10/22/13.
//  Copyright (c) 2013 Chinmay Garde. All rights reserved.
//

#import "SKUIMultistateValue.h"

@interface SKUIMultistateValue ()

@property (nonatomic, retain) NSMutableDictionary *values;

@end

@implementation SKUIMultistateValue

-(instancetype) init {
    self = [super init];
    if(self) {
        _values = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(void) setValue:(id) value forControlState:(SKUIControlState) state {
    if (value)
        [self.values setObject:value forKey:@(state)];
    else
        [self.values removeObjectForKey:@(state)];
}

-(id) valueForState:(SKUIControlState) state {
    
    NSMutableDictionary *allValues = self.values;
    NSNumber *composite = @(state);
    
    id match = allValues[composite];

    // Check exact match for composite state
    if (match)
        return match;
    
    // Fallback to best match for suitable non composite state
    if(state & SKUIControlStateDisabled) {
        match = allValues[@(SKUIControlStateDisabled)];
        if (match)
            return match;
    }
    
    if(state & SKUIControlStateSelected) {
        match = allValues[@(SKUIControlStateSelected)];
        if (match)
            return match;
    }
    
    if(state & SKUIControlStateHighlighted) {
        match = allValues[@(SKUIControlStateHighlighted)];
        if (match)
            return match;
    }

    if(state & SKUIControlStateNormal)
        match = allValues[@(SKUIControlStateNormal)];
    
    return match;
}

@end
