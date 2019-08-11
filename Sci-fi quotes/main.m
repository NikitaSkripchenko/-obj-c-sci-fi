//
//  main.m
//  Sci-fi quotes
//
//  Created by iosdev on 7/15/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSApp.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        NSString *path = [paths objectAtIndex:0];
        NSApp *app = [[NSApp alloc] initWithName:[path stringByAppendingPathComponent:@"quotes.txt"]];
        [app printQuote];
    }
    return 0;
}
