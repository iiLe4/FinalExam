//
//  FirstViewController.h
//  FinalExam
//
//  Created by Ileana Padilla on 28/04/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *imgBody;
@property (strong, nonatomic) IBOutlet UIButton *btnHands;
- (IBAction)btnHandsPressed:(id)sender;
- (IBAction)btnHands2Pressed:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnHands2;
@property (strong, nonatomic) IBOutlet UIButton *btnFeet;
- (IBAction)btnFeetPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnKnees;
- (IBAction)btnKneesPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnStomach;
- (IBAction)btnStomachPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnHead;
- (IBAction)btnHeadPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnChest;
- (IBAction)btnChestPressed:(id)sender;

@end
