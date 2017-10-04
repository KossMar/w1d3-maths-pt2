//
//  ScoreKeeper.m
//  Maths
//
//  Created by Sanjay Shah on 2017-10-03.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

NSInteger right = 0;
NSInteger wrong = 0;
double score;



-(void) showScore: (NSInteger) right wrong:(NSInteger) wrong{
    score = (100*right)/(right+wrong);
    NSLog(@"You have %ld right, and %ld wrong. Percentage is %f ", (long)right, (long)wrong, score);
}
@end
