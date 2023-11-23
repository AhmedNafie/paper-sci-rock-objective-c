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
    
    self.game = [[RPSgame alloc] initWithFirstTurn:playersTurn
                                        secondTurn:computersTurn];
    
}
@end
