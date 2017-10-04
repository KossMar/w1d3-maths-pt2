//
//  QuestionManager.m
//  Maths
//
//  Created by Mar Koss on 2017-10-04.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questionArr = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString*) timeOutput {
    
    NSString *timeMessage = @"total time: 60s, average time: 10s";
    
    return timeMessage;
}

@end
