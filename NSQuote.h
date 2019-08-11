//
//  NSQuote.h
//  Sci-fi quotes
//
//  Created by iosdev on 7/15/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSQuote : NSObject
@property NSString *text;
@property NSString *person;

- (nullable instancetype) initWithLine: (NSString*)line;
@end

NS_ASSUME_NONNULL_END
