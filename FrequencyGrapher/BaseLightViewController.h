//
//  BaseLightViewController.h
//  FrequencyGrapher
//
//  Created by Jeremy Storer on 6/7/15.
//  Copyright (c) 2015 Jeremy Storer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseLightViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imageViewBaseLight;
@property (strong, nonatomic) UIImage *imageBaseLight;
- (IBAction)takeBaseLightPhotoButtonPressed:(id)sender;
- (IBAction)selectBaseLightPhotoButtonPressed:(id)sender;

@end
