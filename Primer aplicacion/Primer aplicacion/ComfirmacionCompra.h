//
//  ComfirmacionCompra.h
//  Primer aplicacion
//
//  Created by Rafael on 09/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"

@interface ComfirmacionCompra : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *UIButton_AceptarCompta;
- (IBAction)UIButton_action_AceptarCompra:(UIButton *)sender;

@end
