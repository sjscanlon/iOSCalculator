//
//  CalculatorFunctions.m
//  Assign1Calculator
//
//  Created by Steven Scanlon on 1/25/15.
//  Copyright (c) 2015 Steven Scanlon. All rights reserved.
//

#import "CalculatorFunctions.h"
#import "ViewController.h"


@implementation CalculatorFunctions

-(float) parseText: (NSString *) string {
    float value = [string floatValue];
    return value;
}

-(float) Add: (float) floatOne :(float) floatTwo {
    float answer = 0;
    answer = 0;
    answer = floatOne + floatTwo;
    return answer;
}

-(float) Sub: (float) floatOne :(float) floatTwo {
    float answer = 0;
    answer = 0;
    answer = floatOne - floatTwo;
    return answer;
}

-(float) Multiply: (float) floatOne :(float) floatTwo {
    float answer = 0;
    answer = 0;
    answer = floatOne * floatTwo;
    return answer;
}

-(float) Divide: (float) floatOne :(float) floatTwo {
    float answer = 0;
    answer = 0;
    answer = floatOne / floatTwo;
    return answer;
}

-(float) Cos: (float) floatOne{
    float answer = 0;
    answer = 0;
    answer = cos(floatOne);
    return answer;
}

-(float) Sin:(float)floatOne{
    float answer = 0;
    answer = 0;
    answer = sin(floatOne);
    return answer;
}

//-(id)init {
//    if ( self = [super init] ) {
//        _aString = [[NSString alloc] init];
//    }
//    return self;
//}
//- (void) Functions: (calcFunction)func {
//    NSString *val = textField.text;
//    if (func == Addition) {
//        textField.text= [NSString stringWithFormat:@"%qi",[val longLongValue]+[memory longLongValue]];
//    }
//    else if (func == Subtraction) {
//        textField.text= [NSString stringWithFormat:@"%qi",[memory longLongValue]-[val longLongValue]];
//    }
//    else if (func == Multiply) {
//        textField.text= [NSString stringWithFormat:@"%qi",[val longLongValue]*[memory longLongValue]];
//    }
//    else (func == Divide) {
//        textField.text= [NSString stringWithFormat:@"%qi",[memory longLongValue]/[val longLongValue]];
//    }
//}

@end


