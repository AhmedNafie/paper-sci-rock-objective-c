//
//  RPSTurn.h
//  Paper sci rock
//
//  Created by Ahmed Nafie on 20/11/2023.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors,
    Invalid
};

@interface RPSTurn : NSObject

@property (nonatomic) Move move;

-(instancetype)initWithMove:(Move) move;
-(BOOL)defeats:(RPSTurn*) turn;
-(Move)generateMove;
-(instancetype)init;
@end
