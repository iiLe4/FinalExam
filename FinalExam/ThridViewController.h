//
//  ThridViewController.h
//  FinalExam
//
//  Created by Ileana Padilla on 29/04/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThridViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *btnSinaloa;
- (IBAction)btnSinaloaPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnMichoacan;
- (IBAction)btnMichoacanPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *btnYucatan;
- (IBAction)btnYucatanPressed:(id)sender;

@end
