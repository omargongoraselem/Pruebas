//
//  ViewController.h
//  Calculadora
//
//  Created by Rafael on 18/03/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)UIButton_0_Action:(UIButton *)sender;

- (IBAction)UIButton_1_Action:(UIButton *)sender;

- (IBAction)UIButton_2_Action:(UIButton *)sender;

- (IBAction)UIButton_3_Action:(UIButton *)sender;

- (IBAction)UIButton_4_Action:(UIButton *)sender;

- (IBAction)UIButton_5_Action:(UIButton *)sender;

- (IBAction)UIButton_6_Action:(UIButton *)sender;
- (IBAction)UIButton_7_Action:(UIButton *)sender;
- (IBAction)UIButton_8_Action:(UIButton *)sender;
- (IBAction)UIButton_9_Action:(UIButton *)sender;
- (IBAction)UIButton_Punto_Action:(UIButton *)sender;
- (IBAction)UIButton_Suma_Action:(UIButton *)sender;
- (IBAction)UIButton_Resta_Action:(UIButton *)sender;
- (IBAction)UIButton_Mult_Action:(UIButton *)sender;
- (IBAction)UIButton_Div_Action:(UIButton *)sender;
- (IBAction)UIButton_Mod_Action:(UIButton *)sender;
- (IBAction)UIButton_Signo_Action:(UIButton *)sender;
- (IBAction)UIButton_Borrar_Action:(UIButton *)sender;
- (IBAction)UIButton_Igual_Action:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *UILabel_Resultado;




@end

