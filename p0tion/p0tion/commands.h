//
//  commands.h
//  p0tion
//
//  Created by Jack Sangster on 2021-02-12.
//

#ifndef commands_h
#define commands_h


#endif /* commands_h */

#import <Foundation/Foundation.h>

@interface NSTask: NSObject
@property NSString *launchPath;
@property NSArray *arguments;
- (void)launch;
@end
