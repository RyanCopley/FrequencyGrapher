//
//  ViewController.h
//  FrequencyGrapher
//
//  Created by Jeremy Storer on 6/7/15.
//  Copyright (c) 2015 Jeremy Storer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectionViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *picker;

@end

