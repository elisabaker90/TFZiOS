//
//  TweetDataController.h
//  TwitterForZombies
//
//  Created by Kyle Reden on 8/6/12.
//  Copyright (c) 2012 Pathfinder Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tweet.h"

@class Tweet;
@interface TweetDataController : NSObject
@property (nonatomic, copy) NSMutableArray *TweetList;

-(NSUInteger) countOfTweetList;
-(Tweet*) objectInTweetListAtIndex:(NSUInteger)index;
-(void) addTweet:(NSInteger*) Identifier status:(NSString*) Status zombie:(NSString*) Zombie;
-(void) initiliazeDefaultDataList;
-(void) getTweets;

@end
