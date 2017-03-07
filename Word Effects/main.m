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
        
    }
        return 0;
}
