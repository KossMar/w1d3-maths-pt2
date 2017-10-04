//
//  QuestionFactory.m
//  Maths
//
//  Created by Mar Koss on 2017-10-04.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questionSubclassArr = @[@"AdditionQuestion",
                                    @"SubtractionQuestion",
                                    @"MultiplicationQuestion",
                                    @"DivisionQuestion",];
    }
    return self;
}

-(Question*)generateRandomQuestion {
 int r = arc4random_uniform(4);
    
    return [[NSClassFromString(self.questionSubclassArr[r]) alloc]init];
    
}

@end
