//
//  detourSetupViewController.m
//  afvejeApp
//
//  Created by Udvikler on 04/04/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import "detourSetupViewController.h"

@interface detourSetupViewController ()

@end

@implementation detourSetupViewController

@synthesize intervalPickerView;
@synthesize intervalTextField;
@synthesize pickerViewArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    intervalPickerView.hidden = YES;
    
    NSArray *arrayToTypePicker = [[NSArray alloc]initWithObjects:@"15 minutes", @"30 minutes", @"45 minutes", @"1 hour", nil];
    self.pickerViewArray = arrayToTypePicker;
    intervalPickerView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerTab)];
    [intervalPickerView addGestureRecognizer:tapGesture];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldBeginEditing: (UITextField *) textField{
    if(textField==self.intervalTextField){
        [textField resignFirstResponder];
        return NO;
        NSLog(@"title");
    }
}

- (void) pickerTab{
    NSLog(@"picker tabbed");
    NSString *userChoice = [self pickerView:intervalPickerView titleForRow:[intervalPickerView selectedRowInComponent:0] forComponent:0];
    NSLog(userChoice);
    intervalPickerView.hidden = YES;
    intervalTextField.text = userChoice;
    NSLog(@"titleTextField is: ");
    intervalTextField.hidden = NO;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [pickerViewArray count];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.pickerViewArray objectAtIndex:row];
}

- (IBAction)intervalTextFieldClick:(id)sender {
    intervalPickerView.hidden = NO;
    [self.view bringSubviewToFront:intervalTextField];
    NSLog(@"interval");
    intervalTextField.hidden = YES;
}


@end
