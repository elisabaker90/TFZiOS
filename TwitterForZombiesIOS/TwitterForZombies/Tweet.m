//
//  Tweet.m
//  TwitterForZombies
//
//  Created by Kyle Reden on 8/6/12.
//  Copyright (c) 2012 Pathfinder Development. All rights reserved.
//

#import "Tweet.h"

@implementation Tweet

@synthesize Identifier = _Identifier;
@synthesize status = _status, zombie = _zombie;

-(id) init
{
    self = [super init];
    if (self){
        _Identifier = 0;
        _status = @"empty status";
        _zombie = @"no zombie";
        return self;
    }
    return nil;
}

-(id)initWithIdentifier:(NSInteger *)Identifier{
    self = [super init];
    if (self){
        _Identifier = Identifier;
        _status = @"empty status";
        _zombie = @"no zombie";
        return self;
    }
    return nil;
}

-(id)initWithIdnetifier:(NSInteger *)Identifier AndStatus:(NSString *)Status{
    self = [self initWithIdentifier:Identifier];
    if (self){
        _status = Status;
        _zombie = @"no zombie";
        return self;
    }
    return nil;
}

-(id)initWithIdnetifier:(NSInteger *)Identifier AndStatus:(NSString *)Status AndZombie:(NSString *)Zombie{
    self = [self initWithIdnetifier:Identifier AndStatus:Status];
    if(self){
        _zombie = Zombie;
    }
    return self;
}
@end
