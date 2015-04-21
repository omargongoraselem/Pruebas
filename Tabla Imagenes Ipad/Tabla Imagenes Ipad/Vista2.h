//
//  Vista2.h
//  Tabla Imagenes Ipad
//
//  Created by Rafael on 16/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Vista2 : UIViewController

@property(strong, nonatomic)  UIImage *Imagen;

@property (weak, nonatomic) IBOutlet UIButton *UILabel_Back;
- (IBAction)UIButton_Action_Back:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *UIImagen_Vista2;


@end
