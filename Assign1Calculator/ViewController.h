//
//  ViewController.h
//  Assign1Calculator
//
//  Created by Steven Scanlon on 1/25/15.
//  Copyright (c) 2015 Steven Scanlon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorFunctions.h"

typedef enum{Addition, Subtraction, Multiply, Divide, Sin, Cos} calcFunction;

@interface ViewController : UIViewController {
    
    IBOutlet UITextField *textField;
    IBOutlet UILabel *label;
    
    NSString *memory;
    NSString *space;
    NSMutableString *labelMemory;
    NSMutableString *string;
    calcFunction function;
}
//@property (nonatomic) CalculatorFunctions *calc;
- (IBAction) oneButton;
- (IBAction) twoButton;
- (IBAction) threeButton;
- (IBAction) fourButton;
- (IBAction) fiveButton;
- (IBAction) sixButton;
- (IBAction) sevenButton;
- (IBAction) eightButton;
- (IBAction) nineButton;
- (IBAction) zeroButton;
- (IBAction) periodButton;
- (IBAction) addButton;
- (IBAction) subButton;
- (IBAction) multButton;
- (IBAction) divButton;
- (IBAction) equalsButton;
- (IBAction) clearButton;
- (IBAction) cosButton;
- (IBAction) sinButton;


@end

