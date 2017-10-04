

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic) NSArray *questionSubclassArr;


-(Question*)generateRandomQuestion;

@end
