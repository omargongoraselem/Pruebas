//
//  HolasControlador.m
//  Ejempo1
//
//  Created by Ómar Góngora Selem on 17/03/15.
//  Copyright (c) 2015 RedPanda SA deCV. All rights reserved.
//

#import "HolasControlador.h"

@interface HolasControlador (){
    int Valorentero;
    float ValorFlotante;
    char Numero;
}

@end

@implementation HolasControlador

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    Valorentero=[self Prueba: 23];
    ValorFlotante=[self PruebaFlotante:0.23];
    NSLog(@"%.02f",ValorFlotante);
    
    
    
    
    
    
    
    
    
    
    
    
    
}
-(int)hola{
    return 5;
}
-(int) Prueba:(int)entero{
    return entero+5;


}
-(float)PruebaFlotante:(float)flotante{
    return flotante+Valorentero;
}

-(void)viewDidAppear:(BOOL)animated{
[super viewDidAppear:animated];
    NSLog(@"2");
    
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"3");
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"4");
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"5");
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

- (IBAction)UiButton_Boton_Action:(UIButton *)sender {
    Valorentero++;
    ValorFlotante=[self PruebaFlotante:3];
    self.UISlider_Slider.value=ValorFlotante;
    self.UILabel_Label.text=[NSString stringWithFormat:@"%f0.02",ValorFlotante];
    NSLog(@"%f",ValorFlotante);
    
}
- (IBAction)UISlider_Slider_Action:(UISlider *)sender {
    self.UILabel_Label.text=[NSString stringWithFormat:@"%f",self.UISlider_Slider.value];
}
@end
