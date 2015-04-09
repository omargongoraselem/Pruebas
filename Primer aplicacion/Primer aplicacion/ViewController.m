//
//  ViewController.m
//  Primer aplicacion
//
//  Created by Rafael on 09/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    
    NSMutableDictionary *Dictionary_Datos;
    NSString *Imagen;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Dictionary_Datos=[[NSMutableDictionary alloc]init];

////botones imagen///
    self.UIButton_Mujer.layer.masksToBounds=YES;
    self.UIButton_Mujer.layer.cornerRadius=4;
    self.UIButton_Mujer.layer.borderWidth=2;
    self.UIButton_Mujer.layer.borderColor=[UIColor purpleColor].CGColor;
    
    self.UIButton_Hombre.layer.masksToBounds=YES;
    self.UIButton_Hombre.layer.cornerRadius=4;
    self.UIButton_Hombre.layer.borderWidth=2;
    self.UIButton_Hombre.layer.borderColor=[UIColor purpleColor].CGColor;
    
    self.UIButton_Indef.layer.masksToBounds=YES;
    self.UIButton_Indef.layer.cornerRadius=4;
    self.UIButton_Indef.layer.borderWidth=2;
    self.UIButton_Indef.layer.borderColor=[UIColor purpleColor].CGColor;
    
    self.UIButton_aceptar.layer.masksToBounds=YES;
    self.UIButton_aceptar.layer.cornerRadius=4;
    self.UIButton_aceptar.layer.borderWidth=2;
    self.UIButton_aceptar.layer.borderColor=[UIColor greenColor].CGColor;
    
    self.UIButton_Cancelar.layer.masksToBounds=YES;
    self.UIButton_Cancelar.layer.cornerRadius=4;
    self.UIButton_Cancelar.layer.borderWidth=2;
    self.UIButton_Cancelar.layer.borderColor=[UIColor redColor].CGColor;
    
    
    
    
    
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)UIButton_action_CierraTeclado:(UIButton *)sender {
    [self.UILabel_Bebida resignFirstResponder];
    [self.UILabel_Nombre resignFirstResponder];
    [self.UILabel_Comida resignFirstResponder];
}

- (IBAction)UIButton_action_Mujer:(UIButton *)sender {
    Imagen=@"Mujer-1";
    [self.UIImage_FotoPerfil setImage:[UIImage imageNamed:@"Mujer-1"]];
}
- (IBAction)UIButton_action_indef:(UIButton *)sender {
    Imagen=@"Indef";
 [self.UIImage_FotoPerfil setImage:[UIImage imageNamed:@"Indef"]];
}
- (IBAction)UIButton_action_Hombre:(UIButton *)sender {
    Imagen=@"Hombre";
    [self.UIImage_FotoPerfil setImage:[UIImage imageNamed:@"Hombre"]];
}


- (IBAction)UIButton_action_aceptar:(UIButton *)sender {
    if([self.UILabel_Comida.text isEqualToString:@""]||[self.UILabel_Bebida.text isEqualToString:@""]||[self.UILabel_Nombre.text isEqualToString:@""]||[Imagen isEqualToString:@""])
    {
        [self Fade:1];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Faltan Datos"
                                                        message:@"Favor de completar"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        if([self.UILabel_Comida.text isEqualToString:@""]){
            [self.UILabel_Comida setBackgroundColor:[UIColor redColor] ];
        }else{
            [self.UILabel_Comida  setBackgroundColor:[UIColor whiteColor] ];
        }
        
        if([self.UILabel_Nombre.text isEqualToString:@""]){
            [self.UILabel_Nombre setBackgroundColor:[UIColor redColor] ];
        }else{
            [self.UILabel_Nombre  setBackgroundColor:[UIColor whiteColor] ];
        }
        
        if([self.UILabel_Bebida.text isEqualToString:@""]){
            [self.UILabel_Bebida setBackgroundColor:[UIColor redColor] ];
        }else{
            [self.UILabel_Bebida  setBackgroundColor:[UIColor whiteColor] ];
        }
        
    }else{
        [self Fade:0];
        [Dictionary_Datos setObject:[UIImage imageNamed:Imagen] forKey:@"Foto Perfil"];
        [Dictionary_Datos setObject:[NSString stringWithFormat:@"%@", self.UILabel_Bebida.text] forKey:@"Bebida"];
        [Dictionary_Datos setObject:[NSString stringWithFormat:@"%@", self.UILabel_Comida.text] forKey:@"Comida"];
        [Dictionary_Datos setObject:[NSString stringWithFormat:@"%@", self.UILabel_Nombre.text] forKey:@"Nombre"];
        [self.UILabel_Bebida  setBackgroundColor:[UIColor whiteColor] ];
        [self.UILabel_Comida  setBackgroundColor:[UIColor whiteColor] ];
        [self.UILabel_Nombre  setBackgroundColor:[UIColor whiteColor] ];
    }
    
    NSLog(@"%@",[Dictionary_Datos valueForKey:@"Nombre"]);
}
- (IBAction)UIButton_action_Cancelar:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

///FADE///
-(void)Fade:(int)Alpha  {
    [UIView animateKeyframesWithDuration:2 delay:0 options: UIViewKeyframeAnimationOptionBeginFromCurrentState animations:^{
        self.UILabel_Alerta.alpha=Alpha;
    } completion:^(BOOL finished) {
        
    }];
    
}
@end
