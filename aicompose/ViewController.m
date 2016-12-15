//
//  ViewController.m
//  aicompose
//
//  Created by 张健源 on 16/12/15.
//  Copyright © 2016年 xi-studio. All rights reserved.
//

#import "ViewController.h"
#import <MIKMIDI/MIKMIDI.h>



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    NSDate *date = [NSDate date];
    MIKMIDINoteOnCommand *noteOn = [MIKMIDINoteOnCommand noteOnCommandWithNote:60 velocity:127 channel:0 timestamp:date];
    MIKMIDINoteOffCommand *noteOff = [MIKMIDINoteOffCommand noteOffCommandWithNote:60 velocity:0 channel:0 timestamp:[date dateByAddingTimeInterval:0.5]];
    
    MIKMIDIDeviceManager *dm = [MIKMIDIDeviceManager sharedDeviceManager];
    //[dm sendCommands:@[noteOn, noteOff] toEndpoint:destinationEndpoint error:&error];
   
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
