//
//  AdditionQuestion.m
//  Maths
//
//  Created by Sanjay Shah on 2017-10-03.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
      
        NSInteger x = arc4random_uniform(10);
        NSInteger y = arc4random_uniform(10);
        
        NSString * question  = [NSString stringWithFormat:@"%ld + %ld", (long)x, (long)y];
        
        NSLog(@"%@", question);
        
        _startTime = [NSDate date];
        
        _answer = x + y;
        
    }
    return self;
}

- (NSInteger)answerFunc:(NSInteger)userAnswer {
    _endTime = [NSDate date];
    
    NSTimeInterval timeTaken = [_endTime timeIntervalSinceDate:_startTime];
    NSLog(@"You took %f seconds. Try harder!", timeTaken);
    return _answer;
}





@end
