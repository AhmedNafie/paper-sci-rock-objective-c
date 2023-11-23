//
//  RPSGame.h
//  Paper sci rock
//
//  Created by Ahmed Nafie on 20/11/2023.
//

#import "RPSTurn.h"

@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

-(instancetype)initWithFirstTurn:(RPSTurn*) playerTurn
                      secondTurn: (RPSTurn*)computerTurn;

-(RPSTurn*) winner;
-(RPSTurn*) looser;
-(NSString*) resultsString: (RPSGame*) game;


@end
