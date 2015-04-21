//
//  Vista2.m
//  Tabla Imagenes Ipad
//
//  Created by Rafael on 16/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import "Vista2.h"

@interface Vista2 ()

@end

@implementation Vista2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.UIImagen_Vista2 setImage:self.Imagen];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)UIButton_Action_Back:(UIButton *)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Salir"
                                                    message:@"Seguro que desea abandonar esta vista"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:@"Cancelar", nil];
    [alert show];
    
  
}




- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
    {
        [self dismissViewControllerAnimated:YES completion:nil];
      
    }
}







@end
