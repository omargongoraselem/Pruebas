//
//  Vista2.m
//  Calculadora_a_mano
//
//  Created by Rafael on 08/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import "Vista2.h"

@interface Vista2 ()

@end

@implementation Vista2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


- (IBAction)UIButton_Action_Regreso:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
