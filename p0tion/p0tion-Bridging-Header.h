//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//
#import "commands.h"
#include "cicuta_virosa.h"
#import <Foundation/Foundation.h>

void sandbox(){
    [[NSFileManager defaultManager] createFileAtPath:@"/var/mobile/escaped" contents:nil attributes:nil];
    if([[NSFileManager defaultManager] fileExistsAtPath:@"/var/mobile/escaped"]){
        NSLog(@"Escaped sandbox!\n");
        [[NSFileManager defaultManager] removeItemAtPath:@"/var/mobile/escaped" error:nil];
    } else {
        NSLog(@"Could not escape the sandbox\n");
    }
}
