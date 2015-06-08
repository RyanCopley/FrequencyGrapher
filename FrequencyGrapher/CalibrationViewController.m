//
//  CalibrationViewViewController.m
//  FrequencyGrapher
//
//  Created by Jeremy Storer on 6/7/15.
//  Copyright (c) 2015 Jeremy Storer. All rights reserved.
//

#import "CalibrationViewController.h"

@interface CalibrationViewController ()

@end

@implementation CalibrationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)takeCalibrationPhotoButtonPressed:(id)sender {
    UIImagePickerController *pickerCalibration = [[UIImagePickerController alloc] init];
    pickerCalibration.delegate = self;
    pickerCalibration.allowsEditing = YES;
    pickerCalibration.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:pickerCalibration animated:YES completion:NULL];
}

- (IBAction)selectCalibrationPhotoButtonPressed:(id)sender {
    UIImagePickerController *pickerCalibration = [[UIImagePickerController alloc] init];
    pickerCalibration.delegate = self;
    pickerCalibration.allowsEditing = YES;
    pickerCalibration.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:pickerCalibration animated:YES completion:NULL];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage *calibrationImage = info[UIImagePickerControllerEditedImage];
    self.imageViewCalibration.image = calibrationImage;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [picker dismissViewControllerAnimated:YES completion:NULL];
}
@end
