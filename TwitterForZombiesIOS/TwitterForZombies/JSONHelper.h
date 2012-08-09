//
//  JSONHelper.h
//  JSON
//
//  Created by jeff on 3/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSONHelper : NSObject

+ (NSDictionary *)JSONget:(NSString *)query;
+ (NSString *)JSONgetString:(NSString *)query;
+ (NSString *)JSONpostString:(NSString *)query;
+ (NSString *)JSONpostString:(NSString *)query
                   withData:(NSString *)jsonData;
@end
