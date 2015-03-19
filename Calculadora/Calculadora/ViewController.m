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
    NSMutableArray*Caracteres;
    NSString*Caracteres_String;
    float Valor_Espera;
    NSString*Operador;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
self.UControlador=@"o";
    if ([self.UControlador isEqualToString:@"numeros"]) {
        
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
    contador=1;
    i=0;
    Valor=0;
    i2=0;
    Punto=0;
        }
    else{
      Caracteres=[[NSMutableArray alloc]init];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)UIButton_0_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
     
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        if (i!=0) {
            i++;
        }
    }
    else{
        
        [self Calc_Con_Caracteres:sender.titleLabel.text];
        
    }

    
}

- (IBAction)UIButton_1_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
    
}
- (IBAction)UIButton_2_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}

- (IBAction)UIButton_3_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}
- (IBAction)UIButton_5_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}
- (IBAction)UIButton_4_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}
- (IBAction)UIButton_6_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}

- (IBAction)UIButton_7_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}

- (IBAction)UIButton_8_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}

- (IBAction)UIButton_9_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
    }
    else{
        [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
   }

- (IBAction)UIButton_Punto_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self EdicciconLabel:[sender.titleLabel.text intValue]];
        i++;
        Punto=1;
        Valor_Entero=Resultado;
    }
    else{
      [self Calc_Con_Caracteres:sender.titleLabel.text];
    }
    
}

- (IBAction)UIButton_Suma_Action:(UIButton *)sender {
    [self Operacion:Resultado];
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self Operacion:Resultado];
        i2=1;
    }
    else{
        
        Operador=@"+";
        if (Caracteres.count!=0) {
            
            Valor_Espera=[self.UILabel_Resultado.text floatValue];
            [Caracteres removeAllObjects];
            
        }
    }
}

- (IBAction)UIButton_Resta_Action:(UIButton *)sender {
    
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self Operacion:Resultado];
        i2=2;
    }
    else{
        Operador=@"-";
        if (Caracteres.count!=0) {
            
            Valor_Espera=[self.UILabel_Resultado.text floatValue];
            [Caracteres removeAllObjects];
            
        }
    }
}

- (IBAction)UIButton_Mult_Action:(UIButton *)sender {
    
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self Operacion:Resultado];
        i2=3;
    }
    else{
        Operador=@"*";
        if (Caracteres.count!=0) {
            
         Valor_Espera=[self.UILabel_Resultado.text floatValue];
            [Caracteres removeAllObjects];
        
        }
    }
}

- (IBAction)UIButton_Div_Action:(UIButton *)sender {
    
    if ([self.UControlador isEqualToString:@"numeros"]) {
        [self Operacion:Resultado];
        i2=4;
    }
    else{
        Operador=@"/";
        if (Caracteres.count!=0) {
            
            Valor_Espera=[self.UILabel_Resultado.text floatValue];
            [Caracteres removeAllObjects];
            
        }
        
    }
}

- (IBAction)UIButton_Mod_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        Resultado=Resultado/100;
        self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Resultado];
    }
    else{
        
    }
    
    
}

- (IBAction)UIButton_Signo_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        Resultado=Resultado*-1;
        self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Resultado];
    }
    else{
        
    }
    
}

- (IBAction)UIButton_Borrar_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
        Valor=0;
        Primer_Valor=0;
        Resultado=0;
        i=0;
        i2=0;
        self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Resultado];
    }
    else{
        
    }
    
}

- (IBAction)UIButton_Igual_Action:(UIButton *)sender {
    if ([self.UControlador isEqualToString:@"numeros"]) {
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
    else{
        
        
        if ([Operador isEqualToString:@"+"]) {
            self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Valor_Espera+[self.UILabel_Resultado.text floatValue]];
        }else if ([Operador isEqualToString:@"-"]){
            self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Valor_Espera-[self.UILabel_Resultado.text floatValue]];
        
        }else if ([Operador isEqualToString:@"*"]){
            self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Valor_Espera*[self.UILabel_Resultado.text floatValue]];
        
        }else if ([Operador isEqualToString:@"/"]){
            self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Valor_Espera/[self.UILabel_Resultado.text floatValue]];
        
        }
    }
    
    
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
    if ([self.UControlador isEqualToString:@"numeros"]) {
        if (i<10) {
            
            if (Punto==0) {
                
                
                if(i!=0)
                {
                    Valor=Resultado*10;
                    NSLog(@"%f",Valor);
                }
                
                Resultado=Valor+entero;
            }
            if (i!=0&&Punto!=0) {
                float Decimal=0;
                Decimal=(float)entero/(powl(10,i));
                Resultado= Valor_Entero+Decimal;
                Valor_Entero=Resultado;
                NSLog(@"Res:%f",Resultado);
                NSLog(@"Val:%f",Valor_Entero);
                NSLog(@"Decimal:%f",Valor_Entero);
                NSLog(@"Ent:%i",entero);
            }
            
            self.UILabel_Resultado.text=[NSString stringWithFormat:@"%f",Resultado];
        }
  
    }
    else{
        
        
    }
    }

-(void)Operacion:(float)Dato{
    i=0;
    i2=1;
    Primer_Valor=Dato;
    Resultado=0;
    Valor=0;
    Punto=0;
    
}

-(void)Calc_Con_Caracteres:(NSString *) Numero{
    
    [Caracteres addObject:Numero];
    NSLog(@"%@",Numero);
    NSString *Car=[[Caracteres componentsJoinedByString:@","] stringByReplacingOccurrencesOfString:@"," withString:@""];
    NSLog(@"%@",Car);
    self.UILabel_Resultado.text=Car;
    float Caracteres_Numero=[Car floatValue];
    
    
                                 
}

@end
