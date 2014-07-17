//
//  ViewController.h
//  sounds
//
//  Created by Luke Sadler on 18/03/2014.
//  Copyright (c) 2014 Luke Sadler. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController{
    
    IBOutlet UIButton *maroonButton;
    IBOutlet UIButton *greenButton;
    IBOutlet UIButton *blueButton;
    IBOutlet UIButton *turqButton;
    IBOutlet UIButton *blackButton;
    IBOutlet UIButton *redButton;
    IBOutlet UIButton *purpleButton;
    IBOutlet UIButton *greyButton;
    IBOutlet UIButton *orangeButton;
    IBOutlet UIButton *pinkButton;
    IBOutlet UIButton *yellowButton;
    IBOutlet UIButton *goldButton;
    IBOutlet UILabel *chord;
    IBOutlet UIColor *colorA;
    IBOutlet UISwitch *chordSwitch;
    IBOutlet UILabel *chordLabel;
    NSString *device;
    NSString *fileString;
    UIView *switchBox;
    int noteInt;
    int colourInt;
}
- (IBAction)switchAction:(id)sender;
-(IBAction)maroonPressed;
-(IBAction)greenPressed;
-(IBAction)bluePressed;
-(IBAction)turqPressed;
-(IBAction)blackPressed;
-(IBAction)redPressed;
-(IBAction)purplePressed;
-(IBAction)greyPressed;
-(IBAction)orangePressed;
-(IBAction)pinkPressed;
-(IBAction)yellowPressed;
-(IBAction)goldPressed;



@end
