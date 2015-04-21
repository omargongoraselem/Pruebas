//
//  TableViewCell.h
//  Calculadora_a_mano
//
//  Created by Rafael on 08/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DelegateCelda <NSObject>

-(void) Gato:(int)Omar;
-(void) Perro:(int)Omar;

@end


@interface TableViewCell : UITableViewCell{
    }

@property id<DelegateCelda> Modicar_delegate;
@property (weak, nonatomic) IBOutlet UILabel *Label1;
@property (weak, nonatomic) IBOutlet UILabel *Label2;
@property (weak, nonatomic) IBOutlet UIButton *UIButton_Perro;


- (IBAction)UIButton_action_perro:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *UILabel_Gato;
- (IBAction)UIButton_Action_Gato:(UIButton *)sender;



@end
