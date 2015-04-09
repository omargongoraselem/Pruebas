//
//  Vista Inicio.h
//  Primer aplicacion
//
//  Created by Rafael on 09/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Vista_Inicio : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *UIImageview_Bienvenida;
@property (weak, nonatomic) IBOutlet UIButton *UIButton_Login;
- (IBAction)UIButton_action_Login:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *UIButton_Registro;
- (IBAction)UIButton_action_Registro:(UIButton *)sender;

@end
