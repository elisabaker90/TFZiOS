//
//  MasterViewController.h
//  TwitterForZombies
//
//  Created by Kyle Reden on 8/6/12.
//  Copyright (c) 2012 Pathfinder Development. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TweetDataController;
@class DetailViewController;

@interface MasterViewController : UITableViewController
@property (strong, nonatomic) TweetDataController *tweetDataController;

@end
