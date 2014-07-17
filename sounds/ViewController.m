//
//  ViewController.m
//  sounds
//
//  Created by Luke Sadler on 18/03/2014.
//  Copyright (c) 2014 Luke Sadler. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "UIColor+CrossFade.h"
#define SYSTEM_VERSION_LESS_THAN(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)


@interface ViewController ()
@property (nonatomic) AVAudioPlayer *soundEffectPlayer;

@end

@implementation ViewController


- (void)viewDidLoad
{
    noteInt = 0;
//    chord.alpha = 0;
    [chordSwitch isOn];
    

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    device = [UIDevice currentDevice].model;
    
    
    if (![device hasPrefix:@"iPad"]) {
    
        [chordLabel    setTransform:CGAffineTransformMakeRotation(M_PI / 2)];
        [blueButton    setTransform:CGAffineTransformMakeRotation(M_PI / 2)];
        [redButton     setTransform:CGAffineTransformMakeRotation(M_PI / 2)];
        [goldButton    setTransform:CGAffineTransformMakeRotation(M_PI / 2)];
        [greenButton   setTransform:CGAffineTransformMakeRotation(M_PI / 2)];
        [greyButton    setTransform:CGAffineTransformMakeRotation(M_PI / 2)];
        [pinkButton    setTransform:CGAffineTransformMakeRotation(M_PI / 2)];
        [blackButton   setTransform:CGAffineTransformMakeRotation(M_PI / 2)];
        [purpleButton  setTransform:CGAffineTransformMakeRotation(M_PI / 2)];
        [yellowButton  setTransform:CGAffineTransformMakeRotation(M_PI / 2)];
        [orangeButton  setTransform:CGAffineTransformMakeRotation(M_PI / 2)];
        [turqButton    setTransform:CGAffineTransformMakeRotation(M_PI / 2)];
        [maroonButton  setTransform:CGAffineTransformMakeRotation(M_PI / 2)];
        [chord         setTransform:CGAffineTransformMakeRotation(M_PI / 2)];
        [chordSwitch   setTransform:CGAffineTransformMakeRotation(M_PI / 2)];

    }
    
}

-(IBAction)switchAction:(id)sender{
    if (chordSwitch.isOn) {
        chord.alpha = 1;
    }else{
        chord.alpha = 0;
    }
}


-(void)colour{
    
    CAKeyframeAnimation *animation = nil;
    CGColorRef finalColor = nil;
    
            // Animate to A
            animation = [UIColor keyframeAnimationForKeyPath:@"backgroundColor"
                                                    duration:0.5
                                           betweenFirstColor:self.view.backgroundColor
                                                   lastColor:self->colorA];
            finalColor = self->colorA.CGColor;

    self.view.layer.backgroundColor = finalColor;
    [self.view.layer addAnimation:animation forKey:@"backgroundColorChange"];

    
    if (colourInt == 1) {
        chord.textColor = [UIColor whiteColor];
        chordLabel.textColor = [UIColor whiteColor];
    }else{
        chord.textColor = [UIColor blackColor];
        chordLabel.textColor = [UIColor blackColor];
    }
    colourInt = 0;
}


-(void)music{
    if (noteInt == 7) {
        noteInt = 0;
    }
    
    NSString *intString = [NSString stringWithFormat:@"%i%@",noteInt,fileString];
    
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:intString ofType:@"aif"];
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)([NSURL fileURLWithPath: soundPath]), &soundID);
    AudioServicesPlaySystemSound (soundID);
    
    }



-(IBAction)maroonPressed{
    fileString = (@"B");
    colorA =[UIColor colorWithRed:102.0/255.0 green:51.0/255.0 blue:51.0/255.0 alpha:1];
    colourInt = 1;
    [self colour];
    chord.text = @"B";
    [self music];
    noteInt ++;
}

-(IBAction)greenPressed{
    fileString = (@"C");
    chord.text = @"C";
    colorA =[UIColor colorWithRed:0.0/255.0 green:153.0/255.0 blue:51.0/255.0 alpha:1];
    [self colour];
    [self music];
    noteInt ++;
}

-(IBAction)bluePressed{
    fileString = (@"A");
    chord.text = @"A";
    colorA =[UIColor colorWithRed:51.0/255.0 green:102.0/255.0 blue:153.0/255.0 alpha:1];
    [self colour];
    [self music];
    noteInt ++;
    
}

-(IBAction)turqPressed{
    fileString = (@"As");
    colorA =[UIColor colorWithRed:0.0/255.0 green:153.0/255.0 blue:153.0/255.0 alpha:1];
    chord.text = @"A#";
    [self colour];
    [self music];
    noteInt ++;
}

-(IBAction)blackPressed{
    colorA = [UIColor blackColor];
    colourInt = 1;
    [self colour];
    chord.text = @"C#";
    fileString = @"Cs";
    [self music];
    noteInt ++;
    
}

-(IBAction)redPressed{
    fileString = @"Ds";
    colorA =[UIColor colorWithRed:255.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1];
    [self colour];
    [self music];
    chord.text = @"D#";
    noteInt ++;
}

-(IBAction)purplePressed{
    colourInt = 1;
    fileString = @"E";
    chord.text = @"E";
    colorA =[UIColor colorWithRed:102.0/255.0 green:51.0/255.0 blue:153.0/255.0 alpha:1];
    [self colour];
    [self music];
    noteInt ++;
    
}

-(IBAction)pinkPressed{
    fileString = @"F";
    chord.text = @"F";
    colorA =[UIColor colorWithRed:255.0/255.0 green:102.0/255.0 blue:255.0/255.0 alpha:1];
    [self colour];
    [self music];
    noteInt ++;
}

-(IBAction)orangePressed{
    fileString = @"D";
    chord.text = @"D";
//    colorA =[UIColor colorWithRed:255.0/255.0 green:155.0/255.0 blue:51.0/255.0 alpha:1];
    colorA = [UIColor orangeColor];
    [self colour];
    [self music];
    noteInt ++;
}

-(IBAction)greyPressed{
    fileString = @"G";
    chord.text = @"G";
    colorA =[UIColor lightGrayColor];
    [self colour];
    [self music];
    noteInt ++;
}

-(IBAction)yellowPressed{
    fileString = @"Fs";
    chord.text = @"F#";
    colorA =[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:0.0/255.0 alpha:1];
    [self colour];
    [self music];
    noteInt ++;
}

-(IBAction)goldPressed{
    fileString = @"Gs";
    chord.text = @"G#";
    colorA =[UIColor colorWithRed:255.0/255.0 green:153.0/255.0 blue:0.0/255.0 alpha:1];
    [self colour];
    [self music];
    noteInt ++;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
