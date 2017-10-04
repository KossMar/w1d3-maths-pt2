//
//  AdditionQuestion.h
//  Maths
//
//  Created by Sanjay Shah on 2017-10-03.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property NSString * question;
@property NSInteger answer;
@property NSDate *startTime;
@property NSDate *endTime;

- (NSInteger)answerFunc:(NSInteger)userAnswer;

@end
