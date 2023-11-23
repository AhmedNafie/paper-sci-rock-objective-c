//
//  RPSGame.m
//  Paper sci rock
//
//  Created by Ahmed Nafie on 20/11/2023.
//

#import "RPSGame.h"

@implementation RPSGame

-(instancetype)initWithFirstTurn:(RPSTurn*) playerTurn secondTurn: (RPSTurn*)computerTurn {
    self = [super init];

    if(self) {
        _firstTurn = playerTurn;
        _secondTurn = computerTurn;
    }

    return self;
}

@end
