//
//  ThridViewController.m
//  FinalExam
//
//  Created by Ileana Padilla on 29/04/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import "ThridViewController.h"
#import "MapViewController.h"

@interface ThridViewController ()

@end

@implementation ThridViewController

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
    self.btnSinaloa.tag=1;
    self.btnMichoacan.tag = 2;
    self.btnYucatan.tag = 3;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (IBAction)btnSinaloaPressed:(id)sender {
}
- (IBAction)btnMichoacanPressed:(id)sender {
}
- (IBAction)btnYucatanPressed:(id)sender {
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    MapViewController *controller = (MapViewController *)segue.destinationViewController;
    UIButton *button = (UIButton*)sender;
    if(button.tag==1){
        controller.coordenada = @"23.237323, -106.418001";
        controller.nombreEstado = @"Sinaloa";
        
    }else if(button.tag==2){
        controller.coordenada = @"19.705823, -101.194495";
        controller.nombreEstado = @"Michoacan";
    }else{
        controller.coordenada = @"20.980825, -89.615887";
        controller.nombreEstado = @"Yucatan";
    }
}
@end
