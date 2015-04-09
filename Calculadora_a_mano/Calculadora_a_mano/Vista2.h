//
//  Vista2.h
//  Calculadora_a_mano
//
//  Created by Rafael on 08/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Vista2 : UIViewController
@property (weak, nonatomic) NSString *string;
@property (weak, nonatomic) IBOutlet UILabel *Label_Vista2;
@property (weak, nonatomic) IBOutlet UIButton *UIButton_Regreso;
- (IBAction)UIButton_Action_Regreso:(UIButton *)sender;

@end
