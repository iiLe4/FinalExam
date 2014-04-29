//
//  VideoViewController.m
//  FinalExam
//
//  Created by Ileana Padilla on 28/04/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import "VideoViewController.h"

@interface VideoViewController ()

@end

@implementation VideoViewController

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
    
    NSString *path = [[NSBundle mainBundle]pathForResource:
                      [NSString stringWithFormat:_videoName] ofType:@"mp4"];
    moviePlayer = [[MPMoviePlayerViewController
                    alloc]initWithContentURL:[NSURL fileURLWithPath:path]];
    [self presentModalViewController:moviePlayer animated:NO];
    
    
    self.lblTitleDays.text = [NSString stringWithFormat:@"Days for %@",_videoName];

    self.lblDays.text = [NSString stringWithFormat:@"%d",[self calculateDays]];
    self.lblTemperatura.text = @"31 ºC";
    
}

-(int)calculateDays{
    
     NSDate *now = [NSDate date];
    
    NSDateComponents *compsSummer = [[NSDateComponents alloc] init];
    [compsSummer setDay:21];
    [compsSummer setMonth:6];
    [compsSummer setYear:2014];
    NSDateComponents *compsSpring = [[NSDateComponents alloc] init];
    [compsSpring setDay:21];
    [compsSpring setMonth:3];
    [compsSpring setYear:2014];
    NSDateComponents *compsAutumn = [[NSDateComponents alloc] init];
    [compsAutumn setDay:21];
    [compsAutumn setMonth:9];
    [compsAutumn setYear:2014];
    NSDateComponents *compsWinter = [[NSDateComponents alloc] init];
    [compsWinter setDay:21];
    [compsWinter setMonth:12];
    [compsWinter setYear:2014];
    
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSGregorianCalendar];
    self.summerDate = [gregorian dateFromComponents:compsSummer];
    self.springDate = [gregorian dateFromComponents:compsSpring];
    self.winterDate = [gregorian dateFromComponents:compsWinter];
    self.autumnDate = [gregorian dateFromComponents:compsAutumn];
    
    NSTimeInterval secondsBetween = 1;
    
    if([_videoName isEqualToString:@"summer"]){
        
        secondsBetween = [self.summerDate timeIntervalSinceDate:now];
        
    }else if([_videoName isEqualToString:@"spring"]){
        
        secondsBetween = [self.springDate timeIntervalSinceDate:now];
        
    }else if([_videoName isEqualToString:@"autumn"]){
        
        secondsBetween = [self.autumnDate timeIntervalSinceDate:now];
        
    }else{
        
        secondsBetween = [self.winterDate timeIntervalSinceDate:now];
        
    }
    
    int numberOfDays = secondsBetween / 86400;
    
    return numberOfDays;
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

@end
