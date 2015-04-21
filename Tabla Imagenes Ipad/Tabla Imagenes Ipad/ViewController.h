//
//  ViewController.h
//  Tabla Imagenes Ipad
//
//  Created by Rafael on 16/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"
#import "Vista2.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *UIImage_Foto;
@property (weak, nonatomic) IBOutlet UILabel *UILabel_Nombre;


@end

