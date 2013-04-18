//
//  createDetourViewController.m
//  afvejeApp
//
//  Created by Udvikler on 26/03/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import "createDetourViewController.h"
#import "detourCreatedViewController.h"

@interface createDetourViewController ()

@end

@implementation createDetourViewController

@synthesize createDetourBackButton;
@synthesize createDetourLabel;
@synthesize createDetourTypePicker;
@synthesize pickerViewArray;
@synthesize createDetourButton;

@synthesize titleTextField;
@synthesize descriptionTextField;
@synthesize typeTextField;

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
    createDetourTypePicker.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerTab)];
    [createDetourTypePicker addGestureRecognizer:tapGesture];
    
	// Do any additional setup after loading the view.
    [createDetourButton setTitle:@"Opret ny opgave" forState:UIControlStateNormal];
    [createDetourBackButton setTitle:@"Afveje" forState:UIControlStateNormal];
    [createDetourLabel setText:@"Opret ny opgave:"];
    
    createDetourTypePicker.hidden = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    NSLog(@"In viewDidLoad");
    NSArray *arrayToTypePicker = [[NSArray alloc]initWithObjects:@"Kamera", @"Timer", @"GPS", @"Mikrofon", nil];
    self.pickerViewArray = arrayToTypePicker;
    [self.view addGestureRecognizer:tap];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) pickerTab{
    NSLog(@"picker tabbed");
    NSString *userChoice = [self pickerView:createDetourTypePicker titleForRow:[createDetourTypePicker selectedRowInComponent:0] forComponent:0];
    createDetourTypePicker.hidden = YES;
    typeTextField.text = userChoice;
    NSLog(@"titleTextField is: ");
}


-(void)dismissKeyboard {
    [typeTextField resignFirstResponder];
}


- (BOOL)textFieldShouldBeginEditing: (UITextField *) textField{
    if(textField==self.typeTextField){
        [textField resignFirstResponder];
        return NO;
        NSLog(@"title");
    }
    else{
        return YES;
    }
    
}

- (BOOL)textFieldShouldReturn:(UITextField *) textField{
    [textField resignFirstResponder];
    /*
    if(textField==self.descriptionTextField){
        
        NSLog(@"description");
    }
    if(textField==self.titleTextField){
        [textField resignFirstResponder];
        
        NSLog(@"type");
    }
     */
    return YES;
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


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row
      inComponent:(NSInteger)component
{
 NSLog(@"Row Selected");
    
     }

- (void) selectedRowInComponent: (UIPickerView *)pickerView {
 NSLog(@"Row Selected");
}

-(IBAction)didSelectedRow {
    NSLog(@"Row Selected 2");
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"createTask"]){
        
        NSString *url = [[NSString alloc] init];
        url = @"http://172.21.231.203:3000/tasks";
        NSString *taskTitleTextField = [[NSString alloc] init];
        NSString *taskDescriptionTextField = [[NSString alloc] init];
        NSString *taskTypeTextField = [[NSString alloc] init];
        
        taskTitleTextField = titleTextField.text;
        taskDescriptionTextField = descriptionTextField.text;
        taskTypeTextField = typeTextField.text;
        
        taskDataLayer *data = [[taskDataLayer alloc] init];
        NSDictionary *serverResponse = [[NSDictionary alloc] init];
        serverResponse = [data insertTask:url :taskTitleTextField :taskDescriptionTextField :taskTypeTextField];
        
        NSString *taskAddedId = [[NSString alloc] init];
        NSString *taskAddedTitle = [[NSString alloc] init];
        NSString *taskAddedDescription = [[NSString alloc] init];
        NSString *taskAddedType = [[NSString alloc] init];
        
        taskAddedTitle = [serverResponse objectForKey:@"title"];
        taskAddedDescription = [serverResponse objectForKey:@"Description"];
        taskAddedType = [serverResponse objectForKey:@"Type"];
        taskAddedId = [serverResponse objectForKey:@"_id"];
        
        detourCreatedViewController *detourView = [segue destinationViewController];
        [detourView setTaskTitle:taskAddedTitle];
        [detourView setTaskDescription:taskAddedDescription];
        [detourView setTaskType:taskAddedType];
        [detourView setTaskAddedId:taskAddedId];
         
         }
}



- (IBAction)clickTypeTextField:(id)sender {
    NSLog(@"In textFieldClick");
    //[typeTextField resignFirstResponder];
    createDetourTypePicker.hidden = NO;
    [self.view bringSubviewToFront:createDetourTypePicker];
    
}


@end
