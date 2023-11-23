//
//  main.m
//  Paper sci rock
//
//  Created by Ahmed Nafie on 20/11/2023.
//

#import <UIKit/UIKit.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"RPSGame!");
        
        // Start the game with controller
        RPSController *controller = [[RPSController alloc]init];
        
        // Human player choose ...
        [controller throwDown:Paper];
        
        NSString *resultsMessage;
        
        // Who wins
        resultsMessage = [controller messageForGame:controller.game];
        
        NSLog(@"%@", resultsMessage);
        
    }
    return 0;
}
