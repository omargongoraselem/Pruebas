//
//  ViewController.m
//  Calculadora
//
//  Created by Rafael on 18/03/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){

float Resultado;
int Valor;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)UIButton_0_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];

}

- (IBAction)UIButton_1_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
}
- (IBAction)UIButton_2_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
}

- (IBAction)UIButton_3_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
}
- (IBAction)UIButton_5_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
}
- (IBAction)UIButton_4_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
}
- (IBAction)UIButton_6_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
}

- (IBAction)UIButton_7_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
}

- (IBAction)UIButton_8_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
}

- (IBAction)UIButton_9_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
}

- (IBAction)UIButton_Punto_Action:(UIButton *)sender {
}

- (IBAction)UIButton_Suma_Action:(UIButton *)sender {
}

- (IBAction)UIButton_Resta_Action:(UIButton *)sender {
}

- (IBAction)UIButton_Mult_Action:(UIButton *)sender {
}

- (IBAction)UIButton_Div_Action:(UIButton *)sender {
}

- (IBAction)UIButton_Mod_Action:(UIButton *)sender {
}

- (IBAction)UIButton_Signo_Action:(UIButton *)sender {
}

- (IBAction)UIButton_Borrar_Action:(UIButton *)sender {
}

- (IBAction)UIButton_Igual_Action:(UIButton *)sender {
}

- (IBAction)UIButton__Action:(UIButton *)sender {
}

- (IBAction)UIButton_AC_Action:(UIButton *)sender {
}


- (IBAction)UIButton_:(UIButton *)sender {
}



- (IBAction)UIButton_X_Action:(UIButton *)sender {
}

-(void)EdicciconLabel:(int)entero{

    self.UILabel_Resultado.text=[NSString stringWithFormat:@"%i",entero];

}


@end
