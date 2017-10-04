

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
      
        _leftValue = arc4random_uniform(10);
        _rightValue = arc4random_uniform(10);
        
//        NSString * question  = [NSString stringWithFormat:@"%ld + %ld", _leftValue, _rightValue];
//        
//        NSLog(@"%@", question);
//        
//        _startTime = [NSDate date];
//        
//        _answer = x + y;
        
    }
    return self;
}

- (void) generateQuestion {
    
}


- (NSInteger)answerFunc:(NSInteger)userAnswer {
    _endTime = [NSDate date];
    
    NSTimeInterval timeTaken = [_endTime timeIntervalSinceDate:_startTime];
    NSLog(@"You took %f seconds. Try harder!", timeTaken);
    return _answer;
}





@end
