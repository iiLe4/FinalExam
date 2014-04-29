//
//  FirstViewController.m
//  FinalExam
//
//  Created by Ileana Padilla on 28/04/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import "FirstViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnHandsPressed:(id)sender {
    self.imgBody.image = [UIImage imageNamed:@"hands.jpg"];
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"hands", CFSTR ("mp3"), NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    [self performSelector:@selector(putImage:) withObject:self.imgBody afterDelay:2.0];
}

-(void)putImage:(id)sender{
    self.imgBody.image = [UIImage imageNamed:@"humanbody.jpg"];
    
    [self performSelector:@selector(putImage:) withObject:self.imgBody afterDelay:2.0];
}

- (IBAction)btnHands2Pressed:(id)sender {
    self.imgBody.image = [UIImage imageNamed:@"hands.jpg"];
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"hands", CFSTR ("mp3"), NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    [self performSelector:@selector(putImage:) withObject:self.imgBody afterDelay:2.0];
}
- (IBAction)btnFeetPressed:(id)sender {
    self.imgBody.image = [UIImage imageNamed:@"feet.jpg"];
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"feet", CFSTR ("mp3"), NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    [self performSelector:@selector(putImage:) withObject:self.imgBody afterDelay:2.0];
}
- (IBAction)btnKneesPressed:(id)sender {
    self.imgBody.image = [UIImage imageNamed:@"knees.jpg"];
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"knees", CFSTR ("mp3"), NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    [self performSelector:@selector(putImage:) withObject:self.imgBody afterDelay:2.0];
}
- (IBAction)btnStomachPressed:(id)sender {
    self.imgBody.image = [UIImage imageNamed:@"stomach.jpg"];
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"stomach", CFSTR ("mp3"), NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    [self performSelector:@selector(putImage:) withObject:self.imgBody afterDelay:2.0];
}
- (IBAction)btnHeadPressed:(id)sender {
    self.imgBody.image = [UIImage imageNamed:@"head.jpg"];
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"head", CFSTR ("mp3"), NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    [self performSelector:@selector(putImage:) withObject:self.imgBody afterDelay:2.0];
}
- (IBAction)btnChestPressed:(id)sender {
    self.imgBody.image = [UIImage imageNamed:@"chest.jpg"];
    
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"chest", CFSTR ("mp3"), NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    [self performSelector:@selector(putImage:) withObject:self.imgBody afterDelay:2.0];
}
@end
