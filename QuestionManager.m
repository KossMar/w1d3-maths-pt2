

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questionArr = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) addToArray:(Question*) currentQuestion {
    
    [self.questionArr addObject:currentQuestion];
}

- (void) timeOutput {
    
    int totalTime = 0;
    int averageTime = 0;
    
    for (Question *question in self.questionArr){
        totalTime = totalTime + [question answerTime];
    }
    
    averageTime = totalTime / self.questionArr.count;
    
    NSString *timeMessage = [NSString stringWithFormat:@"total time: %i , average time: %i ", totalTime, averageTime];
    
    NSLog(@"%@", timeMessage);

}

@end
