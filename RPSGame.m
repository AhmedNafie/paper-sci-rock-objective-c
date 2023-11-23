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

-(RPSTurn*)winner {
    return [self.firstTurn defeats:self.secondTurn] ? self.firstTurn : self.secondTurn;

}
-(RPSTurn*)looser {
    return [self.firstTurn defeats:self.secondTurn] ? self.secondTurn : self.firstTurn;

}

- (NSString*) resultsString: (RPSGame*) game {
    return [game.firstTurn defeats:game.secondTurn] ? @"You Win!" : @"You Lose!";
}


@end
