//
//  SecondViewController.h
//  FinalExam
//
//  Created by Ileana Padilla on 28/04/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface SecondViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UITableViewCell *cellView;
@property (strong, nonatomic) NSArray *seasonsArray;
@property (strong, nonatomic) NSArray *videosArray;
@property (nonatomic, strong) MPMoviePlayerController *player;
//

@end
