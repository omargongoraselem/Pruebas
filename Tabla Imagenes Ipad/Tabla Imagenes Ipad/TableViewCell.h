//
//  TableViewCell.h
//  Tabla Imagenes Ipad
//
//  Created by Rafael on 16/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *UIImage_Foto;
@property (weak, nonatomic) IBOutlet UILabel *UILabel_Nombre;

@end
