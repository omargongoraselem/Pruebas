//
//  Vista Inicio.m
//  Primer aplicacion
//
//  Created by Rafael on 09/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import "Vista Inicio.h"

@interface Vista_Inicio ()

@end

@implementation Vista_Inicio

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.UIImageview_Bienvenida setImage:[UIImage imageNamed:@"bienvenido"]];
    
   
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
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)UIButton_action_Login:(UIButton *)sender {
}
- (IBAction)UIButton_action_Registro:(UIButton *)sender {
}
@end
