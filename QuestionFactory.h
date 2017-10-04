//
//  QuestionFactory.h
//  Maths
//
//  Created by Mar Koss on 2017-10-04.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic) NSArray *questionSubclassArr;


-(Question*)generateRandomQuestion;

@end
