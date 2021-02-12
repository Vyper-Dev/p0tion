//
//  File.m
//  
//
//  Created by Jack Sangster on 2021-02-12.
//

#import <Foundation/Foundation.h>

@interface NSTask: NSObject
@property NSString *launchPath;
@property NSArray *arguments;
- (void)launch;
@end
