//
//  InputHandler.m
//  Maths
//
//  Created by Sanjay Shah on 2017-10-03.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "InputHandler.h"


@implementation InputHandler


-(NSString*) handleInput{
    
        char inputChars[255];

        //takes in answer
        fgets(inputChars, 255, stdin);
        
        //converts charType answer into NSString
        NSString * stringAnswer = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
        //NSString stringAnswer = [NSString stringWithFormat:@"%s", inputChars];
    

        //creates a charSet that contains newLine and whiteSpace
        NSCharacterSet *dontWantNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        
        //trims NSString by removing characters: newLine and whiteSpace
        NSString *newStringAnswer = [stringAnswer stringByTrimmingCharactersInSet: dontWantNewLine];
    
    
 
    return newStringAnswer;
    
}






@end
