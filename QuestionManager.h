

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property NSMutableArray *questionArr;

- (void) addToArray:(Question*) currentQuestion;

- (void) timeOutput;

@end
