//
//  RPSTurn.m
//  Paper sci rock
//
//  Created by Ahmed Nafie on 20/11/2023.
//

#import "RPSTurn.h"

@implementation RPSTurn

-(instancetype)initWithMove:(Move) move {
    
    self = [super init];
    
    if (self){
        _move = move;
    }
    
    return self;
}

-(instancetype)init {
    
    self = [super init];
    
    if (self){
        _move = [self generateMove];
    }
    
    return self;
}


-(Move)generateMove  {
    
    NSUInteger randomNumber = arc4random_uniform(3);
    switch(randomNumber) {
        case 0:
            return Rock;
            break;
        case 1:
            return Paper;
            break;
        case 2: return Scissors;
            break;
        default:
            return Invalid;
            break;
    }
    return Rock;
}

-(BOOL)defeats:(RPSTurn*) turn {
    return false;
    
}


@end
