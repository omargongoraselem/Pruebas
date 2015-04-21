//
//  ComfirmacionCompra.h
//  Primer aplicacion
//
//  Created by Rafael on 09/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"
#import "ViewController.h"





@interface ComfirmacionCompra : UIViewController <UITableViewDelegate, UITableViewDataSource>


@property(strong, nonatomic)  NSArray *data;
@property (strong, nonatomic) IBOutlet UIButton *UIButton_AceptarCompta;
- (IBAction)UIButton_action_AceptarCompra:(UIButton *)sender;


@end
