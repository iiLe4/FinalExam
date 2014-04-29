//
//  VideoViewController.h
//  FinalExam
//
//  Created by Ileana Padilla on 28/04/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>

@interface VideoViewController : UIViewController{

MPMoviePlayerViewController *moviePlayer;
    
}
@property(nonatomic) NSString *videoName;
@property(nonatomic)NSDate *summerDate;
@property(nonatomic)NSDate *springDate;
@property(nonatomic)NSDate *autumnDate;
@property(nonatomic)NSDate *winterDate;
@property IBOutlet UILabel *lblDays;
@property IBOutlet UILabel *lblTitleDays;
@property IBOutlet UILabel *lblTemperatura;
@end
