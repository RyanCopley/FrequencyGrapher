//
//  BaseLightViewController.m
//  FrequencyGrapher
//
//  Created by Jeremy Storer on 6/7/15.
//  Copyright (c) 2015 Jeremy Storer. All rights reserved.
//

#import "BaseLightViewController.h"
#import "BaseLightGraphViewController.h"

@interface BaseLightViewController ()

@end

@implementation BaseLightViewController

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

- (IBAction)takeBaseLightPhotoButtonPressed:(id)sender {
    UIImagePickerController *pickerBaseLight = [[UIImagePickerController alloc] init];
    pickerBaseLight.delegate = self;
    pickerBaseLight.allowsEditing = YES;
    pickerBaseLight.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:pickerBaseLight animated:YES completion:NULL];

}

- (IBAction)selectBaseLightPhotoButtonPressed:(id)sender {
    UIImagePickerController *pickerBaseLight = [[UIImagePickerController alloc] init];
    pickerBaseLight.delegate = self;
    pickerBaseLight.allowsEditing = YES;
    pickerBaseLight.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:pickerBaseLight animated:YES completion:NULL];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    _imageBaseLight = info[UIImagePickerControllerEditedImage];
    self.imageViewBaseLight.image = _imageBaseLight;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"baseLightToBaseLightGraph"]){
        BaseLightGraphViewController *baseLightGraphViewController = [segue destinationViewController];
        baseLightGraphViewController.imageBaseLight = self.imageBaseLight;
    }
}
@end
