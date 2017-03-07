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
        
        char inputCharsIntro[255];
        printf("I can do 6 things that are pretty cool. So please pick a number between 1 and 6: ");
        fgets(inputCharsIntro, 255, stdin);
        NSString *textInputIntro = [NSString stringWithUTF8String:inputCharsIntro];
        NSInteger NumIntro = [textInputIntro integerValue];
            
            
        //1. Uppercase
            if (NumIntro == 1) {
        char inputCharsA[255];
        printf("Please give me your name and I'll convert it to an uppercase string: \n");
        fgets(inputCharsA, 255, stdin);
        NSString *textInputA = [NSString stringWithUTF8String:inputCharsA];
        NSString *upperCTextInput = [textInputA uppercaseString];
        NSLog(@"%@", upperCTextInput);
            }
        
         //2. Lowercase
            else if (NumIntro == 2) {
        char inputCharsB[255];
        printf("Now please give me a word and I'll convert it to an lowercase string: \n");
        fgets(inputCharsB, 255, stdin);
        NSString *textInputB = [NSString stringWithUTF8String:inputCharsB];
        NSString *lowerCTextInput = [textInputB lowercaseString];
        NSLog(@"%@", lowerCTextInput);
            }
                    
        
        //3.Numberize
            else if (NumIntro == 3) {
        char inputCharsC[255];
        printf("Now please give me a number and I'll convert it to an integer: \n");
        fgets(inputCharsC, 255, stdin);
        NSString *textInputC = [NSString stringWithUTF8String:inputCharsC];
        NSScanner *scanner = [NSScanner scannerWithString:textInputC];
        BOOL isNumeric = [scanner scanInteger:NULL] && [scanner isAtEnd];
                if (isNumeric == false){
                    NSLog(@"That is not a number");
                }else{
        NSInteger stringToNum = [textInputC integerValue];
        NSLog(@"%i", stringToNum);
            }
            }
        
        
        //4.Canadianize
            else if (NumIntro == 4) {
        char inputCharsD[255];
        printf("Now say something and I'll Canadianize it:\n");
        fgets(inputCharsD, 255, stdin);
        NSString *textInputD = [NSString stringWithUTF8String:inputCharsD];
        NSLog(@"%@ ,eh!", textInputD);
            }
        
        
        //5.Respond
            else if (NumIntro == 5) {
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
            }
            
       
        //6.De-Space-It
            else if (NumIntro == 6) {
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
        
        
        
        
    }
        return 0;
}
