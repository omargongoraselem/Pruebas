//
//  Vista Inicio.m
//  Primer aplicacion
//
//  Created by Rafael on 09/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import "Vista Inicio.h"

@interface Vista_Inicio (){
    
    NSMutableDictionary *Datos;
    NSMutableArray *Contenedor;
}


@end

@implementation Vista_Inicio

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.UIImageview_Bienvenida setImage:[UIImage imageNamed:@"bienvenido"]];
    
      Contenedor=[[NSMutableArray alloc] init];
    self.UIButton_Registro.layer.masksToBounds=YES;
    self.UIButton_Registro.layer.cornerRadius=10;
    self.UIButton_Registro.layer.borderWidth=3;
    self.UIButton_Registro.layer.borderColor=[UIColor purpleColor].CGColor;
    
    self.UIButton_Login.layer.masksToBounds=YES;
    self.UIButton_Login.layer.cornerRadius=10;
    self.UIButton_Login.layer.borderWidth=3;
    self.UIButton_Login.layer.borderColor=[UIColor purpleColor].CGColor;
    
    
  
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated
}

-(void) MandarDatos:(NSDictionary *)Data{
   
    NSString *Comida=[Data objectForKey:@"Comida"];
    NSString *Bebida=[Data objectForKey:@"Bebida"];
    NSString *Nombre=[Data objectForKey:@"Nombre"];
    NSString *NombreImagen=[Data objectForKey:@"NombreImagen"];

    [Contenedor addObject:[NSArray arrayWithObjects:[Data objectForKey:@"Foto Perfil"],NombreImagen,nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: Nombre,  nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: Comida,Bebida,  nil]];
   
  
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"IraRegistro"] ) {
        ViewController *Vista=[segue destinationViewController];
        Vista.Modicar_delegate=self;
    }else if([[segue identifier] isEqualToString:@"IraConfirmacion"] ) {
        
        ComfirmacionCompra *Vista2=[segue destinationViewController];
        Vista2.data=Contenedor;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


- (IBAction)UIButton_action_Login:(UIButton *)sender {
    if (Contenedor == nil || Contenedor.count == 0) {
       
    }else{
     [self performSegueWithIdentifier:@"IraConfirmacion" sender:self];
    }
}
- (IBAction)UIButton_action_Registro:(UIButton *)sender {
    [self performSegueWithIdentifier:@"IraRegistro" sender:self];
}
@end
