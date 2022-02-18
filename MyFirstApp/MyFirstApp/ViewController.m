//
//  ViewController.m
//  MyFirstApp
//
//  Created by Sergio Santos on 17/02/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.label.hidden = YES;
    
    // Implements Sound
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) soundURL, &systemSoundID);
}

- (IBAction)cat:(id)sender {
    self.label.hidden = NO;
    AudioServicesPlaySystemSound(systemSoundID);
    
    [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(hiddeLabel) userInfo:nil repeats:NO];
}

- (void)hiddeLabel {
    self.label.hidden = YES;
}
@end
