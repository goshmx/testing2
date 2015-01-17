//
//  ViewController.m
//  Testing3
//
//  Created by TRON on 17/01/15.
//  Copyright (c) 2015 TRON. All rights reserved.
//

#import "ViewController.h"

NSMutableArray *imagesArray;
int iImage = 0;


@interface ViewController ()

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    imagesArray = [[NSMutableArray alloc] initWithObjects: @"Homer_Simpson_2006.png", @"Maggie_Simpson.png", @"Simpsons_252.gif", @"lisa.jpeg", @"bart_simpson.png", nil];
    
    self.ImageIntro.image = [UIImage imageNamed:imagesArray[iImage]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)push_anterior:(id)sender {
    if (iImage > 0)
    {
        iImage--;
    }
    else
    {
        iImage = 4;
    }
    
    
    self.ImageIntro.image = [UIImage imageNamed:imagesArray[iImage]];
}

- (IBAction)push_siguiente:(id)sender {
        if (iImage >= 4){
            iImage = 0;
        }
        else
        {
            iImage++;
        }
   
        self.ImageIntro.image = [UIImage imageNamed:imagesArray[iImage]];
}

- (IBAction)otro_panel:(id)sender {
    [self performSegueWithIdentifier:@"sagaHome" sender:self];
}
@end
