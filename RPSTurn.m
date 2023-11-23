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

-(Move)generateMove  {
    return Rock;
}


-(BOOL)defeats:(RPSTurn*) turn {
    return false;

}


@end
