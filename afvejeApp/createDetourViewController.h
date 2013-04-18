//
//  createDetourViewController.h
//  afvejeApp
//
//  Created by Udvikler on 26/03/13.
//  Copyright (c) 2013 IT-minds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "detourCreatedViewController.h"
#import "taskDataLayer.h"


@interface createDetourViewController : UIViewController <UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource>{
    NSArray *list;
    NSString *taskTitleClass;
    NSString *taskDescription;
    NSString *taskType;
}

@property (weak, nonatomic) NSString *taskTitle;
@property (weak, nonatomic) IBOutlet UIButton *createDetourBackButton;
@property (weak, nonatomic) IBOutlet UILabel *createDetourLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *createDetourTypePicker;
@property (weak, nonatomic) IBOutlet UIButton *createDetourButton;
@property (nonatomic, retain) NSArray *pickerViewArray;

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UITextField *typeTextField;

-(IBAction)selectedRow;
- (IBAction)clickTypeTextField:(id)sender;

@end
