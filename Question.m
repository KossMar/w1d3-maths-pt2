

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
      
        _leftValue = arc4random_uniform(10);
        _rightValue = arc4random_uniform(10);
        _startTime = [NSDate date];
        
    }
    return self;
}

- (void) generateQuestion {
    
}


- (NSInteger)answerFunc:(NSInteger)userAnswer {
    _endTime = [NSDate date];

    return _answer;
}

- (NSTimeInterval) answerTime {
    NSTimeInterval timeTaken = [_endTime timeIntervalSinceDate:_startTime];
    return timeTaken;
}




@end
