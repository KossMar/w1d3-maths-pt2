//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Mar Koss on 2017-10-04.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    super.answer = (super.leftValue * super.rightValue);
    super.question = [NSString stringWithFormat:@"%ld * %ld", (long)super.leftValue, (long)super.rightValue];
    NSLog(@"%@", super.question);
}

@end
