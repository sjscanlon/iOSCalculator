//
//  ViewController.m
//  Assign1Calculator
//
//  Created by Steven Scanlon on 1/25/15.
//  Copyright (c) 2015 Steven Scanlon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


float floatOne = 0;
float floatTwo = 0;
float counter = 0;
float result = 0;

//All of the buttons and their implementation

- (IBAction)oneButton {
    if (result != 0) {
        textField.text = @"";
        floatOne = 0;
        floatTwo = 0;
        result = 0;
    }
    textField.text=[NSString stringWithFormat:@"%@1",textField.text];
}
- (IBAction)twoButton {
    if (result != 0) {
        textField.text = @"";
        floatOne = 0;
        floatTwo = 0;
        result = 0;
    }
    textField.text=[NSString stringWithFormat:@"%@2",textField.text];
}
- (IBAction)threeButton {
    if (result != 0) {
        textField.text = @"";
        floatOne = 0;
        floatTwo = 0;
        result = 0;
    }
    textField.text=[NSString stringWithFormat:@"%@3",textField.text];
}
- (IBAction)fourButton {
    if (result != 0) {
        textField.text = @"";
        floatOne = 0;
        floatTwo = 0;
        result = 0;
    }
    textField.text=[NSString stringWithFormat:@"%@4",textField.text];
}
- (IBAction)fiveButton {
    if (result != 0) {
        textField.text = @"";
        floatOne = 0;
        floatTwo = 0;
        result = 0;
    }
    textField.text=[NSString stringWithFormat:@"%@5",textField.text];
}
- (IBAction)sixButton {
    if (result != 0) {
        textField.text = @"";
        floatOne = 0;
        floatTwo = 0;
        result = 0;
    }
    textField.text=[NSString stringWithFormat:@"%@6",textField.text];
}
- (IBAction)sevenButton {
    if (result != 0) {
        textField.text = @"";
        floatOne = 0;
        floatTwo = 0;
        result = 0;
    }
    textField.text=[NSString stringWithFormat:@"%@7",textField.text];
}
- (IBAction)eightButton {
    if (result != 0) {
        textField.text = @"";
        floatOne = 0;
        floatTwo = 0;
        result = 0;
    }
    textField.text=[NSString stringWithFormat:@"%@8",textField.text];
}
- (IBAction)nineButton {
    if (result != 0) {
        textField.text = @"";
        floatOne = 0;
        floatTwo = 0;
        result = 0;
    }
    textField.text=[NSString stringWithFormat:@"%@9",textField.text];
}
- (IBAction)zeroButton {
    if (result != 0) {
        textField.text = @"";
        floatOne = 0;
        floatTwo = 0;
        result = 0;
    }
    textField.text=[NSString stringWithFormat:@"%@0",textField.text];
}
- (IBAction)periodButton {
    if (result != 0) {
        textField.text = @"";
        floatOne = 0;
        floatTwo = 0;
        result = 0;
    }
    textField.text=[NSString stringWithFormat:@"%@.",textField.text];
}
- (IBAction)addButton {
    //labelMemory = [[NSMutableString alloc] init];
    function = Addition;
    memory = textField.text;
    string = [textField.text mutableCopy];
    [labelMemory appendString: string];
    [labelMemory appendString:@"+"];
    [self parseFirstNumber];
    textField.text=@"";
}
- (IBAction)subButton {
    //labelMemory = [[NSMutableString alloc] init];
    function = Subtraction;
    memory = textField.text;
    string = [textField.text mutableCopy];
    [labelMemory appendString: string];
    [labelMemory appendString:@"-"];
    [self parseFirstNumber];
    textField.text=@"";
}
- (IBAction)multButton {
    //labelMemory = [[NSMutableString alloc] init];
    function = Multiply;
    memory = textField.text;
    string = [textField.text mutableCopy];
    [labelMemory appendString: string];
    [labelMemory appendString:@"*"];
    [self parseFirstNumber];
    textField.text=@"";
}
- (IBAction)divButton {
    //labelMemory = [[NSMutableString alloc] init];
    function = Divide;
    memory = textField.text;
    string = [textField.text mutableCopy];
    [labelMemory appendString: string];
    [labelMemory appendString:@"/"];
    [self parseFirstNumber];
    textField.text=@"";
}
- (IBAction)equalsButton {
    counter++;
    memory = textField.text;
    [self parseSecondNumber];
    string = [textField.text mutableCopy];
    [labelMemory appendString: string];
    [labelMemory appendString:@"="];
    textField.text=@"";
    if (function == Addition) {
        [self Addition];
    } else if (function == Subtraction) {
        [self Subtraction];
    } else if (function == Multiply) {
        [self Multiply];
    } else if (function == Divide) {
        [self Division];
    } else if (function == Cos) {
        [self Cos];
    } else if (function == Sin) {
        [self Sin];
    }
    
    floatOne = 0;
    memory = textField.text;
    [self parseFirstNumber];
    string = [textField.text mutableCopy];
    [labelMemory appendString: string];
    [labelMemory appendString:@"\r"];
    label.text = labelMemory;
    if (counter > 2 ) {
        counter = 0;
        labelMemory = [[NSMutableString alloc] init];
    }
    
}
- (IBAction)clearButton {
    textField.text = @"";
    floatOne = 0;
    floatTwo = 0;
    result = 0;
    [labelMemory appendString:@"\r"];
    label.text = labelMemory;
    
}
- (IBAction)cosButton {
    //labelMemory = [[NSMutableString alloc] init];
    function = Cos;
    memory = textField.text;
    string = [textField.text mutableCopy];
    [labelMemory appendString: @"cos("];
    [labelMemory appendString: string];
    [labelMemory appendString:@")"];
    [self parseFirstNumber];
    textField.text=@"";
}
- (IBAction)sinButton {
    //labelMemory = [[NSMutableString alloc] init];
    function = Sin;
    memory = textField.text;
    string = [textField.text mutableCopy];
    [labelMemory appendString: @"sin("];
    [labelMemory appendString: string];
    [labelMemory appendString:@")"];
    [self parseFirstNumber];
    textField.text=@"";
}


- (void)viewDidLoad {
    [super viewDidLoad];
    labelMemory = [[NSMutableString alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void) parseFirstNumber {
    if (floatOne == 0) {
        CalculatorFunctions *parse = [[CalculatorFunctions alloc] init];
        floatOne = [parse parseText: (NSString *) memory];
    }
    
}

-(void) parseSecondNumber {
    if (floatOne > 0) {
        CalculatorFunctions *parseTwo = [[CalculatorFunctions alloc] init];
        floatTwo = [parseTwo parseText: (NSString *) memory];
    }
    
}

-(void) Addition {
    CalculatorFunctions *add = [[CalculatorFunctions alloc] init];
    result = [add Add: (float) floatOne :(float) floatTwo];
    NSString *str = [NSString stringWithFormat:@"%f", result];
    textField.text = str;
}

-(void) Subtraction {
    CalculatorFunctions *sub = [[CalculatorFunctions alloc] init];
    result = [sub Sub: (float) floatOne :(float) floatTwo];
    NSString *str = [NSString stringWithFormat:@"%f", result];
    textField.text = str;
}

-(void) Multiply {
    CalculatorFunctions *mult = [[CalculatorFunctions alloc] init];
    result = [mult Multiply: (float) floatOne :(float) floatTwo];
    NSString *str = [NSString stringWithFormat:@"%f", result];
    textField.text = str;
}

-(void) Division {
    CalculatorFunctions *div = [[CalculatorFunctions alloc] init];
    result = [div Divide: (float) floatOne :(float) floatTwo];
    NSString *str = [NSString stringWithFormat:@"%f", result];
    textField.text = str;
}

-(void) Cos {
    CalculatorFunctions *cos = [[CalculatorFunctions alloc] init];
    result = [cos Cos: (float) floatOne];
    NSString *str = [NSString stringWithFormat:@"%f", result];
    textField.text = str;
}

-(void) Sin {
    CalculatorFunctions *sin = [[CalculatorFunctions alloc] init];
    result = [sin Sin: (float) floatOne];
    NSString *str = [NSString stringWithFormat:@"%f", result];
    textField.text = str;
}


//Take focus away from the TextField so the keyboard is dismissed when the user presses return or go
- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == textField) {
        [textField resignFirstResponder];
        
    }
    return YES;
}

// Dismiss the keyboard when the view outside the text field or keyboard is touched
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [textField resignFirstResponder];
    [super touchesBegan:touches withEvent:event];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
