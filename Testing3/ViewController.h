//
//  ViewController.h
//  Testing3
//
//  Created by TRON on 17/01/15.
//  Copyright (c) 2015 TRON. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)push_anterior:(id)sender;
- (IBAction)push_siguiente:(id)sender;
- (IBAction)otro_panel:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *ImageIntro;

@end

