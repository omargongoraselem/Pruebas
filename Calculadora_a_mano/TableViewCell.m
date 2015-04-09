//
//  TableViewCell.m
//  Calculadora_a_mano
//
//  Created by Rafael on 08/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

- (IBAction)UIButton_action_perro:(UIButton *)sender {
    self.UIButton_Perro.backgroundColor=[UIColor greenColor];
    [self.Modicar_delegate Perro:1];
    }

- (IBAction)UIButton_Action_Gato:(UIButton *)sender {
    self.UILabel_Gato.backgroundColor=[UIColor orangeColor];
      [self.Modicar_delegate Gato:2];
    }

@end
