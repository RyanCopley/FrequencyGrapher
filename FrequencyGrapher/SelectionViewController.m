//
//  ViewController.m
//  FrequencyGrapher
//
//  Created by Jeremy Storer on 6/7/15.
//  Copyright (c) 2015 Jeremy Storer. All rights reserved.
//

#import "SelectionViewController.h"
#import "CalibrationViewController.h"

@interface SelectionViewController (){
    NSArray *pickerData;
}

@end

@implementation SelectionViewController
@synthesize picker;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    pickerData = [[NSArray alloc]initWithObjects:@"nitrate",@"nitrite",@"other", nil];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return pickerData.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [pickerData objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    //label.text = [NSString stringWithFormat:@"%@",[pickerData objectAtIndex:[picker selectedRowInComponent:0]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressedSelectButton:(id)sender {
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"selectionToCalibration"]){

    }
}



@end
