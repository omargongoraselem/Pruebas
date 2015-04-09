//
//  ViewController.h
//  Calculadora_a_mano
//
//  Created by Rafael on 24/03/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"
#import "Tableviewcell.h"
#import "Vista2.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource,DelegateCelda>

@property (strong, nonatomic) IBOutlet UIButton *b;
@property (strong, nonatomic) MBProgressHUD *Cargando;

@property (strong, nonatomic) IBOutlet UISegmentedControl *Segmented_Control;
- (IBAction)Segmented:(UISegmentedControl *)sender;

@property (strong, nonatomic) IBOutlet UIView *UISegemented_Control;
- (IBAction)UISegmentes_Control_Action:(UISegmentedControl *)sender;

@property (weak, nonatomic) IBOutlet UILabel *Texto;
- (IBAction)Segmented_Control_Prueba22:(UISegmentedControl *)sender;

@property (strong, nonatomic) IBOutlet UISwitch * Switch;
- (IBAction)Switch_Action:(UISegmentedControl *)sender;

@property (weak, nonatomic) IBOutlet UITableView *UITableView_Tabla;

@property (weak, nonatomic) IBOutlet UIButton *UiButton_Go;
- (IBAction)UIButton_action_view:(UIButton *)sender;


@property (strong,nonatomic) IBOutlet UISlider *Slider;
-(IBAction)Slider_Action:(UISlider *)sender;

@property (weak, nonatomic) IBOutlet UIImageView *gif;
@property (weak, nonatomic) IBOutlet UIButton *UIButton_Stop;
- (IBAction)UIButton_stop_action:(UIButton *)sender;

@end


