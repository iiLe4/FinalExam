//
//  SecondViewController.m
//  FinalExam
//
//  Created by Ileana Padilla on 28/04/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import "SecondViewController.h"
#import "Cell.h"
#import "VideoViewController.h"


@interface SecondViewController ()

@end


@implementation SecondViewController
@synthesize player = _player;
//


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.seasonsArray = [[NSArray alloc]initWithObjects:@"Spring",@"Summer",@"Autumn",@"Winter", nil];
    self.videosArray = [[NSArray alloc]initWithObjects:@"spring",@"summer",@"autumn",@"winter", nil];
    
    [self.player prepareToPlay];
 

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"Cell";
    Cell *cell = (Cell *)[tableView dequeueReusableCellWithIdentifier:cellID];
    if(cell==nil){
    }
    cell.lblSeason.text = self.seasonsArray[[indexPath row]];
   
    
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.seasonsArray.count;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    VideoViewController *controller = (VideoViewController *)segue.destinationViewController;
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    
    controller.videoName = self.videosArray[[indexPath row]];
    
}



@end
