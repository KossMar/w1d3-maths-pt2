

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString * question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic) NSInteger leftValue;
@property (nonatomic) NSInteger rightValue;

- (NSInteger)answerFunc:(NSInteger)userAnswer;

- (void) generateQuestion;

@end
