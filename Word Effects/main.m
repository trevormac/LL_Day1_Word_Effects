//
//  main.m
//  Word Effects
//
//  Created by Trevor MacGregor on 2017-03-06.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int x = 1;
        while (x == 1){
            
        //1. Uppercase
        char inputCharsA[255];
        printf("Hello, please give me your name and I'll convert it to an uppercase string: \n");
        fgets(inputCharsA, 255, stdin);
        NSString *textInputA = [NSString stringWithUTF8String:inputCharsA];
        NSString *upperCTextInput = [textInputA uppercaseString];
        NSLog(@"%@", upperCTextInput);
        
        
        //2. Lowercase
        char inputCharsB[255];
        printf("Now please give me a word and I'll convert it to an lowercase string: \n");
        fgets(inputCharsB, 255, stdin);
        NSString *textInputB = [NSString stringWithUTF8String:inputCharsB];
        NSString *lowerCTextInput = [textInputB lowercaseString];
        NSLog(@"%@", lowerCTextInput);
        
        //3.Numberize
        char inputCharsC[255];
        printf("Now please give me a number and I'll convert it to an integer: \n");
        fgets(inputCharsC, 255, stdin);
        NSString *textInputC = [NSString stringWithUTF8String:inputCharsC];
        NSInteger *stringToNum = [textInputC integerValue];
        NSLog(@"%l", stringToNum);
        
        //4.Canadianize
        char inputCharsD[255];
        printf("Now say something and I'll Canadianize it: \n");
        fgets(inputCharsD, 255, stdin);
        NSString *textInputD = [NSString stringWithUTF8String:inputCharsD];
        NSLog(@"%@ ,eh!", textInputD);
        
        //5.Respond
        char inputCharsE[255];
        printf("Now you can say anything eg. ask me a question, yell at me, whatever: \n");
        fgets(inputCharsE, 255, stdin);
        NSString *textInputE = [NSString stringWithUTF8String:inputCharsE];
        if ([textInputE containsString:@"?"]) {
            NSLog(@"I don't know");
        }else if ([textInputE containsString:@"!"]) {
            NSLog(@"Whoa, calm down!");
        } else {
            NSLog(@"%@", textInputE);
        }
        
        //6.De-Space-It
        char inputCharsF[255];
        printf("Now you can say anything and I'll convert the whitespaces to dashes: \n");
        fgets(inputCharsF, 255, stdin);
        NSString *textInputF = [NSString stringWithUTF8String:inputCharsF];
        if ([textInputF containsString:@" "]) {
            NSString *dashed = [textInputF stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            NSLog(@"%@", dashed);
        }
        }
        
        
        
        
    }
        return 0;
}
