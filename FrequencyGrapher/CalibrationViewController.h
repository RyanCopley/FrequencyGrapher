//
//  CalibrationViewViewController.h
//  FrequencyGrapher
//
//  Created by Jeremy Storer on 6/7/15.
//  Copyright (c) 2015 Jeremy Storer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalibrationViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imageViewCalibration;
- (IBAction)takeCalibrationPhotoButtonPressed:(id)sender;
- (IBAction)selectCalibrationPhotoButtonPressed:(id)sender;

@end
