//
//  TweetDataController.m
//  TwitterForZombies
//
//  Created by Kyle Reden on 8/6/12.
//  Copyright (c) 2012 Pathfinder Development. All rights reserved.
//

#import "JSONHelper.h"
#import "Tweet.h"
#import "TweetDataController.h"

@implementation TweetDataController

@synthesize TweetList = _TweetList;

-(NSUInteger) countOfTweetList{
    return [self.TweetList count];
}

-(Tweet*) objectInTweetListAtIndex:(NSUInteger)index{
    return [self.TweetList objectAtIndex:index];
}

-(void) addTweet:(NSInteger*) Identifier status:(NSString*) Status zombie:(NSString*) Zombie
{
    Tweet * tweet;
    tweet = [[Tweet alloc] initWithIdnetifier:Identifier AndStatus:Status AndZombie:Zombie];
    [self.TweetList addObject:tweet];
}

-(void) initiliazeDefaultDataList
{
    NSMutableArray *tweetList = [[NSMutableArray alloc] init];
    self.TweetList = tweetList;
    [self addTweet:0 status: @"ALIVE" zombie:@"BRO 1"];
    
    [self getTweets];
}

-(void) setTweetList:(NSMutableArray *)newList
{
    if (_TweetList != newList) {
        _TweetList = [newList mutableCopy];
    }
}

-(void) getTweets{
    
    NSDictionary * jsonResults = [JSONHelper JSONget:@"http://elisa-twitter.herokuapp.com/tweet.json"];
    //show po jsonResults
    //NSLog(@"json items count:%i",[jsonResults count]);
    
    //NSDictionary * results = [jsonResults dictionaryWithValuesForKeys:[[NSArray alloc] initWithObjects:@"results", nil]];
    //NSLog(@"results count:%i",[results count]);
    
    
    
    //NSMutableString *tweet = [[NSMutableString alloc] initWithCapacity:100];
    //[tweet appendString:[NSString stringWithFormat:@"tweets count:%i",[results count]]];
    //for (NSString* key in tweets) {
    //    id value = [tweets objectForKey:key];
    //    // do stuff
    //    [tweet stringByAppendingString:value];
    //}
    //More text for demo?
    
    for (NSArray *jsonA in jsonResults) {
        [self addTweet:(NSInteger)[jsonA valueForKey:@"id"] status:[jsonA valueForKey:@"status"] zombie:[jsonA valueForKey:@"created_at"]];
    }
    
    
    /*
    //another request using the other method
    NSString * jsonString = [JSONHelper JSONgetString:@"http://elisa-twitter.herokuapp.com/tweet.json"];
    [self addTweet:jsonString.length status:jsonString];
    */
}


-(id)init{
    if(self = [super init])
    {
        [self initiliazeDefaultDataList];
    }
    return self;
}




@end
