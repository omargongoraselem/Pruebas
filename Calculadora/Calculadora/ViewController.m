//
//  ViewController.m
//  Calculadora
//
//  Created by Rafael on 18/03/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){


float Valor;
int contador;
int i;
int i2;
float Resultado;
float Primer_Valor;
int Punto;
float Valor_Entero;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    contador=1;
    i=0;
    Valor=0;
    i2=0;
    Punto=0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)UIButton_0_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
    if (i!=0) {
    i++;
    }
}

- (IBAction)UIButton_1_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
    i++;
}
- (IBAction)UIButton_2_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
    i++;
}

- (IBAction)UIButton_3_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
    i++;
}
- (IBAction)UIButton_5_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
    i++;
}
- (IBAction)UIButton_4_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
    i++;
}
- (IBAction)UIButton_6_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
    i++;
}

- (IBAction)UIButton_7_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
    i++;
}

- (IBAction)UIButton_8_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
    i++;
}

- (IBAction)UIButton_9_Action:(UIButton *)sender {
    [self EdicciconLabel:[sender.titleLabel.text intValue]];
    i++;
}

- (IBAction)UIButton_Punto_Action:(UIButton *)sender {
    Punto=1;
    Valor_Entero=Resultado;
    
}

- (IBAction)UIButton_Suma_Action:(UIButton *)sender {
    [self Operacion:Resultado];
    
}

- (IBAction)UIButton_Resta_Action:(UIButton *)sender {
      [self Operacion:Resultado];
    i2=2;
    
}

- (IBAction)UIButton_Mult_Action:(UIButton *)sender {
     [self Operacion:Resultado];
    i2=3;
    
}

- (IBAction)UIButton_Div_Action:(UIButton *)sender {
      [self Operacion:Resultado];
    i2=4;
  
}

- (IBAction)UIButton_Mod_Action:(UIButton *)sender {
    Resultado=Resultado/100;
    self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Resultado];
    
}

- (IBAction)UIButton_Signo_Action:(UIButton *)sender {
    Resultado=Resultado*-1;
    self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Resultado];
    
   
}

- (IBAction)UIButton_Borrar_Action:(UIButton *)sender {
    Valor=0;
    Primer_Valor=0;
    Resultado=0;
    i=0;
    i2=0;
    self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Resultado];
}

- (IBAction)UIButton_Igual_Action:(UIButton *)sender {
    i=0;
    if (i2==1) {
        Resultado=Resultado+Primer_Valor;
        
    }else if (i2==2)
    {
      Resultado=Primer_Valor-Resultado;
        
    }else if (i2==3)
    {
      Resultado=Resultado*Primer_Valor;
        
    }else if (i2==4)
    {
        Resultado=Primer_Valor/Resultado;
        
    }
    i2=0;
    self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Resultado];
    
    
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
    if (i<10) {
        
   
    if(i!=0)
    {
        
        Valor=Resultado*10;
        NSLog(@"%f",Valor);
            
    }
    Resultado=Valor+entero;
    
    self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Resultado];
    
 }
}
-(void)Operacion:(int)Dato{
    i=0;
    i2=1;
    Primer_Valor=Dato;
    Resultado=0;
    Valor=0;
    Punto=0;
    
}

@end
