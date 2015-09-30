//
//  CalculatorFunctions.h
//  Assign1Calculator
//
//  Created by Steven Scanlon on 1/25/15.
//  Copyright (c) 2015 Steven Scanlon. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CalculatorFunctions : NSObject
-(float) parseText: (NSString *) string;
-(float) Add: (float) floatOne :(float) floatTwo;
-(float) Sub: (float) floatOne :(float) floatTwo;
-(float) Multiply: (float) floatOne :(float) floatTwo;
-(float) Divide: (float) floatOne :(float) floatTwo;
-(float) Cos: (float) floatOne;
-(float) Sin: (float) floatOne;
//-(id)init;
@property NSString* aString;
@end
