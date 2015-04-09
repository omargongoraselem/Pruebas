//
//  TableViewCell.h
//  Tabla2_sections
//
//  Created by Rafael on 06/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *Label_Nombre1;
@property (weak, nonatomic) IBOutlet UILabel *Label_Nombre2;
@property (weak, nonatomic) IBOutlet UILabel *Label_Usuario1;
@property (weak, nonatomic) IBOutlet UILabel *Label_Usuario2;
@property (weak, nonatomic) IBOutlet UILabel *Label_Estado1;
@property (weak, nonatomic) IBOutlet UILabel *Label_Estado2;
@property (weak, nonatomic) IBOutlet UIButton *Label_A1;
- (IBAction)Button_A1:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *Label_A2;

- (IBAction)Button_A2:(UIButton *)sender;

@end
