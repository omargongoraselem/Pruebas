//
//  ViewController.h
//  Calculadora_a_mano
//
//  Created by Rafael on 24/03/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *b;
@property (strong, nonatomic) MBProgressHUD *Cargando;
@property (strong, nonatomic) IBOutlet UISegmentedControl *Segmented_Control;
- (IBAction)Segmented:(UISegmentedControl *)sender;
@property (strong, nonatomic) IBOutlet UIView *UISegemented_Control;
- (IBAction)UISegmentes_Control_Action:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UILabel *Texto;

@end

