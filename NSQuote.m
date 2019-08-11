//
//  NSQuote.m
//  Sci-fi quotes
//
//  Created by iosdev on 7/15/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

#import "NSQuote.h"

@implementation NSQuote
- (instancetype)initWithLine:(NSString *)line{
    if (self = [super init]) {
        NSArray *split = [line componentsSeparatedByString:@"/"];
        if ([split count] != 2){
            return nil;
        }
        
        self.text = split[0];
        self.person = split[1];
    }
     return self;
}
@end
