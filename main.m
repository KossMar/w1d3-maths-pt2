//
//  main.m
//  Maths
//
//  Created by Sanjay Shah on 2017-10-03.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = true;
        
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionManager *questMan = [[QuestionManager alloc] init];
        QuestionFactory *questFac = [[QuestionFactory alloc] init];
        
        while(gameOn){
            
            Question *questionMath = [questFac generateRandomQuestion];
            [questMan addToArray: questionMath];
//            [questMan.questionArr addObject:questionMath.question];
            
            InputHandler *handler = [[InputHandler alloc] init];
            NSString * returnStringAnswer = [handler handleInput];
            

  
         //converts NSString returned from inputhandler to int
            NSInteger tempAnswer = [returnStringAnswer intValue];
            
        

            
            if ([returnStringAnswer isEqual: @"quit"]){
                break;
            }
            
            else {
             
                NSInteger inputAnswer = [questionMath answerFunc: tempAnswer];
                
                
                if(tempAnswer == [questionMath answer]){
                    NSLog(@"Correct!");
                    NSLog(@"Correct Answer: %ld", (long)inputAnswer);
                    score.right++;
                
                    
                }
                else {
                    NSLog(@"Wrong");
                    NSLog(@"Correct Answer: %ld", (long)inputAnswer);
                    score.wrong++;
                    
                }
                
                NSLog(@"You took %f seconds. Try harder!", [questionMath answerTime]);
                [score showScore:[score right] wrong:[score wrong]];
                [questMan timeOutput];

            }

            gameOn = true;
        }
    }
    return 0;
}
