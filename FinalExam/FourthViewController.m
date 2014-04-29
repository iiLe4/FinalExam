//
//  FourthViewController.m
//  FinalExam
//
//  Created by Ileana Padilla on 29/04/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

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
    // Do any additional setup after loading the view.
    
    self.sliderRed.tag = 1;
    self.sliderGreen.tag = 2;
    self.sliderBLue.tag = 3;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderValueChanged:(UISlider *)sender
{
    UISlider *slider = (UISlider *)sender;
    if(slider.tag==1){
        self.lblRed.text = [NSString stringWithFormat:@"%d", (int)sender.value];
    }else if(slider.tag==2){
        self.lblGreen.text = [NSString stringWithFormat:@"%d", (int)sender.value];
    }else{
        self.lblBlue.text = [NSString stringWithFormat:@"%d", (int)sender.value];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnCalculatePressed:(id)sender {
    
    int red = self.sliderRed.value;
    int green = self.sliderGreen.value;
    int blue = self.sliderBLue.value;
    
    UIColor *color = [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:1.0f];

    
    self.imgResult.backgroundColor = color;
    self.lblResult.text = [NSString stringWithFormat:@"RGB: (%d,%d,%d)", red,green,blue];
    
}
@end
