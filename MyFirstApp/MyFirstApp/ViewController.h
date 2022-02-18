//
//  ViewController.h
//  MyFirstApp
//
//  Created by Sergio Santos on 17/02/22.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController {
    SystemSoundID systemSoundID;
}


@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)cat:(id)sender;


@end

