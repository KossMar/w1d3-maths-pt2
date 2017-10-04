//
//  ScoreKeeper.h
//  Maths
//
//  Created by Sanjay Shah on 2017-10-03.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSInteger right;
@property NSInteger wrong;
@property double score;

-(void) showScore: (NSInteger) right wrong:(NSInteger) wrong;
@end
