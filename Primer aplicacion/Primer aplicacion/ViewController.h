//
//  ViewController.h
//  Primer aplicacion
//
//  Created by Rafael on 09/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ComfirmacionCompra.h"

@protocol DelegateCelda <NSObject>

-(void) MandarDatos:(NSDictionary*)Data;

@end





@interface ViewController : UIViewController

@property id<DelegateCelda> Modicar_delegate;


@property (weak, nonatomic) IBOutlet UIButton *UIButton_CierraTeclado;
- (IBAction)UIButton_action_CierraTeclado:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *UILabel_Alerta;


@property (weak, nonatomic) IBOutlet UIImageView *UIImage_FotoPerfil;
@property (weak, nonatomic) IBOutlet UIButton *UIButton_Hombre;
- (IBAction)UIButton_action_Hombre:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *UIButton_Mujer;
- (IBAction)UIButton_action_Mujer:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *UIButton_Indef;
- (IBAction)UIButton_action_indef:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *UIButton_aceptar;
- (IBAction)UIButton_action_aceptar:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *UIButton_Cancelar;
- (IBAction)UIButton_action_Cancelar:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *UILabel_Nombre;
@property (weak, nonatomic) IBOutlet UITextField *UILabel_Comida;
@property (weak, nonatomic) IBOutlet UITextField *UILabel_Bebida;


@end

