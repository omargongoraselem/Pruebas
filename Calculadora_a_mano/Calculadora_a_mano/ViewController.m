//
//  ViewController.m
//  Calculadora_a_mano
//
//  Created by Rafael on 24/03/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
{MBProgressHUD *hud;
int i;


}



@end

@implementation ViewController

- (void)viewDidLoad {
    i=0;
    [super viewDidLoad];
    
    self.Segmented_Control=[[UISegmentedControl alloc]init ];

    //Boton
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
               action:@selector(Boton_1:)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Boton_1" forState:UIControlStateNormal];
    button.tintColor=[UIColor orangeColor];
    [button setTitle:@"2" forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"1211776981"]  forState:UIControlStateNormal];
    button.frame = CGRectMake(80.0, 210.0, 40, 40.0);
    [self.view addSubview:button];
    UIView *Prueba=[[UIView alloc ]init];
    Prueba.frame=CGRectMake(50, 50, 100, 100);
    Prueba.backgroundColor=[UIColor redColor];
    
    [self.view addSubview:Prueba];
    //Segmented Control
    
    
    
    
    
    }
-(void)Boton_1:(UIButton*)sender{
    //Hud, loading cuando se presiona un boton.
    hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.mode = MBProgressHUDModeDeterminateHorizontalBar;
    hud.labelText = @"Loading";
    hud.animationType=	MBProgressHUDAnimationZoomOut;
    [self salir:hud];
    hud.dimBackground=YES;
    hud.opacity=.02f;
    hud.color=[UIColor blueColor];
    hud.cornerRadius=400.0f;
    hud.square=YES;
    hud.progress=.1;
    

    
};
-(void)salir:(MBProgressHUD*)hub{
    [NSTimer scheduledTimerWithTimeInterval:1.0
                                     target:self
                                   selector:@selector(myMethod)
                                   userInfo:nil
                                   repeats:YES];
}

-(void)myMethod{
    i++;
    if(i<11)  {
        hud.progress=(float) i/10;
        NSLog(@"%f",hud.progress);
    }else{
        [hud hide:YES];}
    
    if(i==3){
        [hud setTintColor:[UIColor redColor]];
    
    }else if(i==6){
        hud.color=[UIColor yellowColor];
        
    }else if(i==9){
        hud.color=[UIColor greenColor];
        
    }
    


}
-(void)myMethod2{
  [hud hide:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Segmented:(UISegmentedControl *)sender {
    
        
        if (sender.selectedSegmentIndex == 0) {
            
        }
        else
        {
        }
}
    


- (IBAction)UISegmentes_Control_Action:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex==0)
    {
        
        [sender setTitle:@"Spanish" forSegmentAtIndex:1];
        [sender setTitle:@"English" forSegmentAtIndex:0];
        [sender setTitle:@"Add" forSegmentAtIndex:2];
    
    }else if(sender.selectedSegmentIndex==1){
    
        [sender setTitle:@"Ingles" forSegmentAtIndex:0];
        [sender setTitle:@"Español" forSegmentAtIndex:1];
        [sender setTitle:@"Agregar" forSegmentAtIndex:2];
    } else{
        [sender insertSegmentWithTitle:[NSString stringWithFormat:@"%i",i] atIndex:i+1 animated:false];
    }
}
    @end
