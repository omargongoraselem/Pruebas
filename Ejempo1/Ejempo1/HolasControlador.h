//
//  HolasControlador.h
//  Ejempo1
//
//  Created by Ómar Góngora Selem on 17/03/15.
//  Copyright (c) 2015 RedPanda SA deCV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HolasControlador : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *UIButton_Boton;
- (IBAction)UiButton_Boton_Action:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *UILabel_Label;
@property (weak, nonatomic) IBOutlet UISlider *UISlider_Slider;
- (IBAction)UISlider_Slider_Action:(UISlider *)sender;

@end
