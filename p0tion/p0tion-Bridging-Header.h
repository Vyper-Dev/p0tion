//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//
#import "commands.h"
#include "cicuta_virosa.h"
#import <Foundation/Foundation.h>
\
#include <stdio.h>
#include <spawn.h>
#include <signal.h>

int main(int argc, char *argv[], char *envp[]) {
    setuid(0);
    setuid(0);
    setgid(0);
    pid_t pid;
    int status;
    argv[0] = "launchctl";
    posix_spawn(&pid, "/bin/launchctl", NULL, NULL, argv, NULL);
    waitpid(pid, &status, WEXITED);
    return 0;
}

void sandbox(){
    [[NSFileManager defaultManager] createFileAtPath:@"/var/mobile/escaped" contents:nil attributes:nil];
    if([[NSFileManager defaultManager] fileExistsAtPath:@"/var/mobile/escaped"]){
        NSLog(@"Escaped sandbox!\n");
        [[NSFileManager defaultManager] removeItemAtPath:@"/var/mobile/escaped" error:nil];
    } else {
        NSLog(@"Could not escape the sandbox\n");
        }
    }


void unpacktarbootstrap(){
    pid_t pid;
    int status;
    char *argv[3];
    argv[0] = "tar";
    argv[1] = "-xzvf";
    argv[2] = "bootstrap.tar.gz";
    posix_spawn(&pid, "/bin/tar", NULL, NULL, argv, NULL);
    if (status == 0) {
        NSLog(@"waitpid");
        if (waitpid(pid, &status, 0) == -1) {
            NSLog(@"waitpid %i", status);
        }
    } else {
        NSLog(@"posix_spawn: %i", status);
    }
}
