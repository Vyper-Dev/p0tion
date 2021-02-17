//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//
#import "commands.h"
#include "cicuta_virosa.h"
#import <Foundation/Foundation.h>
#import <sys/wait.h>
#include <stdio.h>
#include <spawn.h>
#include <signal.h>
extern char **environ;

void sandbox(){
    [[NSFileManager defaultManager] createFileAtPath:@"/var/mobile/escaped" contents:nil attributes:nil];
    if([[NSFileManager defaultManager] fileExistsAtPath:@"/var/mobile/escaped"]){
        NSLog(@"Escaped sandbox!\n");
        [[NSFileManager defaultManager] removeItemAtPath:@"/var/mobile/escaped" error:nil];
    } else {
        NSLog(@"Could not escape the sandbox\n");
        }
    }

void unpacktarbootstrap() {
    char *binaryPath = "/p0tion/tar";
    char *args[] = {binaryPath, "-xzf", "/p0tion/bootstrap.tar.gz", NULL};
    pid_t pid;
    posix_spawn(&pid, binaryPath, NULL, NULL, args, environ);
    int status;
    waitpid(pid, &status, 0);
    
    if (status == 0) {
        NSLog(@"Success");
    }
    else {
        NSLog(@"Failed");
    }
}
