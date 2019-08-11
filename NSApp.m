//
//  SFApp.m
//  Sci-fi quotes
//
//  Created by iosdev on 7/15/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

#import "NSApp.h"

@implementation NSApp
- (instancetype)initWithName:(NSString *)filename{
    if(self = [super init]){
        NSError *error;
        NSString *contents = [NSString stringWithContentsOfFile:filename encoding:nil error: &error];
        if (error != nil){
            NSLog(@"Fatal error: %@", [error localizedDescription]);
            exit(0);
        }
        NSArray *lines = [contents componentsSeparatedByString:@"\n"];
        self.quotes = [NSMutableArray arrayWithCapacity: [lines count]];
        
        for (NSString *line in lines) {
            NSQuote *quote = [[NSQuote alloc] initWithLine:line];
            if (quote != nil){
                [self.quotes addObject:quote];
            }
        }
    }
    return self;
}

-(void)printQuote{
    NSInteger random = arc4random_uniform((u_int32_t) [self.quotes count]);
    NSQuote *selected = self.quotes[random];
    
    printf("%s\n", [selected.text cStringUsingEncoding:NSUTF8StringEncoding]);
    printf("\t - %s\n", [selected.person cStringUsingEncoding:NSUTF8StringEncoding]);
    
}
@end
