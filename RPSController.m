//
//  RPSController.m
//  Paper sci rock
//
//  Created by Ahmed Nafie on 21/11/2023.
//

#import "RPSController.h"
#import "RPSTurn.h"

@implementation RPSController
-(void)throwDown:(Move) playersMove {
    RPSTurn *playersTurn = [[RPSTurn alloc]initWithMove:playersMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
    
    self.game = [[RPSGame alloc] initWithFirstTurn:playersTurn
                                        secondTurn:computersTurn];
}

-(NSString*)messageForGame:(RPSGame*)game {
    // First, handle the tie
    if(game.firstTurn.description == game.secondTurn.description) {
        return @"It's a tie";
    } else {
    
    NSString *winnerString = [[game winner] description];
    NSString *loserString = [[game looser] description];
    NSString *resultsString = [game resultsString: game];
    
    // Build the resultsString here.
    NSString *wholeString =  [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @" defeats ", loserString, @".",  resultsString];
        
    return wholeString;
    }
    
}

@end
