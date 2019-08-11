//
//  SFApp.h
//  Sci-fi quotes
//
//  Created by iosdev on 7/15/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSQuote.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSApp : NSObject
@property NSMutableArray<NSQuote* > *quotes;
-(instancetype)initWithName:(NSString*)filename;
-(void)printQuote;
@end

NS_ASSUME_NONNULL_END
