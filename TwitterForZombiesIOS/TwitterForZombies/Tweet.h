//
//  Tweet.h
//  TwitterForZombies
//
//  Created by Kyle Reden on 8/6/12.
//  Copyright (c) 2012 Pathfinder Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tweet : NSObject

@property (nonatomic) NSInteger *Identifier;

@property (nonatomic, strong) NSString *status, *zombie;

-(id) init;
-(id) initWithIdentifier: (NSInteger*) Identifier;
-(id) initWithIdnetifier: (NSInteger*) Identifier AndStatus: (NSString*) Status;
-(id) initWithIdnetifier: (NSInteger*) Identifier AndStatus: (NSString*) Status AndZombie: (NSString*) Zombie;
@end