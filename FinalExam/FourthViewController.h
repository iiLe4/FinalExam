//
//  FourthViewController.h
//  FinalExam
//
//  Created by Ileana Padilla on 29/04/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FourthViewController : UIViewController
- (IBAction)sliderValueChanged:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *imgRed;
- (IBAction)btnCalculatePressed:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *imgGreen;
@property (strong, nonatomic) IBOutlet UIButton *btnCalculate;
@property (strong, nonatomic) IBOutlet UIImageView *imgBlue;
@property (strong, nonatomic) IBOutlet UISlider *sliderRed;
@property (strong, nonatomic) IBOutlet UISlider *sliderGreen;
@property (strong, nonatomic) IBOutlet UISlider *sliderBLue;
@property (strong, nonatomic) IBOutlet UILabel *lblRed;
@property (strong, nonatomic) IBOutlet UILabel *lblGreen;
@property (strong, nonatomic) IBOutlet UILabel *lblBlue;
@property (strong, nonatomic) IBOutlet UIImageView *imgResult;
@property (strong, nonatomic) IBOutlet UILabel *lblResult;

@end
