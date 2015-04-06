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
    NSMutableArray *itemArray;
    UIView *Prueba;
    int hide;
    NSMutableArray *pics;
    NSMutableArray *picsperro;
    
 
int i;
}

@end

@implementation ViewController;

- (void)viewDidLoad {
    i=0;
    [super viewDidLoad];
   NSArray *fotos=@[@"a",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"15",@"16",@"17",@"18",@"19",@"20"];
    NSArray *fotosp=@[@"1p",@"2p",@"3p",@"4p",@"5p",@"6p",@"7p",@"8p",@"9p",@"10p",@"11p",@"12p",@"13p",@"14p",@"15p",@"16p",@"17p",@"18p",@"19p",@"20p",@"21p",@"22p",@"23p",@"24p",@"25p",@"26p"];
    pics=[[NSMutableArray alloc]init];
     picsperro=[[NSMutableArray alloc]init];
    
    for(int m=0;m<fotosp.count;m++){
        [picsperro addObject:[UIImage imageNamed:[fotosp objectAtIndex:m]]];
    }

    
    for(int m=0;m<fotos.count;m++){
        [pics addObject:[UIImage imageNamed:[fotos objectAtIndex:m]]];
    }
    for(int m=0;m<fotos.count;m++){
        [pics addObject:[UIImage imageNamed:[fotos objectAtIndex:18-m]]];
    }
    
    self.gif.animationImages=pics;
    self.gif.animationDuration=3;
    self.gif.animationRepeatCount=3;
     [self.view addSubview:self.gif];
    
    //Switch
    self.Switch=[[UISwitch alloc]initWithFrame:CGRectMake(215,95, 80, 20)];
    [self.Switch addTarget: self action:@selector(Switch_Action:) forControlEvents:UIControlEventValueChanged];
    [self.Switch setOn:false];
    [self.view addSubview:self.Switch];
    
    //Slider:
    CGRect frame = CGRectMake(10, 75, 150, 20);
    self.Slider = [[UISlider alloc] initWithFrame: frame];
    [self.Slider addTarget:self action:@selector(Slider_Action:) forControlEvents:UIControlEventValueChanged];
    [self.Slider setBackgroundColor:[UIColor clearColor]];
    [self.Slider setMaximumValue:10];
    [self.Slider setMinimumValue:.1];
    [self.Slider setMinimumValueImage:[UIImage imageNamed:@"off2"]];
    [self.Slider setMaximumValueImage:[UIImage imageNamed:@"on"]];
    [self.view addSubview:self.Slider];
    
    //Segmented Control
    self.Segmented_Control=[[UISegmentedControl alloc]init ];
    
    itemArray = [[NSMutableArray alloc] initWithObjects: @"Perro", @"Gato", @"Add", nil];
    UISegmentedControl *Segmented_Control = [[UISegmentedControl alloc] initWithItems:itemArray];
    Segmented_Control.frame = CGRectMake(10,30, 300, 30);
    
    [Segmented_Control addTarget:self action:@selector(UISegmentes_Control_Action:) forControlEvents: UIControlEventValueChanged];

    [self.view addSubview:Segmented_Control];
   
    //Boton
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
               action:@selector(Boton_1:)
     forControlEvents:UIControlEventTouchUpInside];
    
    //[button setTitle:@"Boton_1" forState:UIControlStateNormal];
    button.tintColor=[UIColor orangeColor];
    button.backgroundColor=[UIColor orangeColor];
    [button setTitle:@"2" forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor blackColor ] forState:UIControlStateNormal];
    
    button.frame = CGRectMake(190,70, 100, 20);
    
    [self.view addSubview:button];
    Prueba=[[UIView alloc ]init];
    Prueba.frame=CGRectMake(0, 130, 400, 600);
    
      Prueba.backgroundColor=[UIColor redColor];
    [self.view addSubview:Prueba];
    [self.view bringSubviewToFront:self.Texto];
    }

-(void)Boton_1:(UIButton*)sender{
    //Hud, loading cuando se presiona un boton.
    self.gif.animationDuration=self.Slider.value;
     [self.view addSubview:self.gif];
      [self.view bringSubviewToFront:self.gif];
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
    i=0;
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
        hide=0;
    }else{
        i=0;
        [hud hide:YES];
        hide=1;
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
        
       self.gif.animationImages=picsperro;
        [sender setTitle:@"Add" forSegmentAtIndex:2];
    
    }else if(sender.selectedSegmentIndex==1){
    
        self.gif.animationImages=pics;
        [sender setTitle:@"Agregar" forSegmentAtIndex:2];
    } else if(sender.selectedSegmentIndex==2){
        
        [sender insertSegmentWithTitle:[NSString stringWithFormat:@"%i",i] atIndex:i+3 animated:true];
        i++;
        
    } else{
        if(sender.selectedSegmentIndex==i+2){
            NSLog(@"%i",(int)sender.selectedSegmentIndex);
            [sender setTitle:@"Agregar" forSegmentAtIndex:sender.selectedSegmentIndex];
            NSLog(@"%i",(int)sender.selectedSegmentIndex-1);
            sender.selectedSegmentIndex=-1;
            [sender removeSegmentAtIndex:2 animated:NO];
            i--;
        }else {
            NSLog(@"%i",(int)sender.selectedSegmentIndex);
            
            [sender removeSegmentAtIndex:sender.selectedSegmentIndex animated:NO];
            sender.selectedSegmentIndex=-1;
            NSLog(@"%i",(int)sender.selectedSegmentIndex);
            i--;
 
        }
        
    }
}
- (IBAction)Segmented_Control_Prueba22:(UISegmentedControl *)sender {
    
     [sender removeSegmentAtIndex:sender.selectedSegmentIndex animated:NO];
    i--;
    
}
-(IBAction)Slider_Action:(UISlider *)sender{
    self.Texto.text=[NSString stringWithFormat:@"%0.2f",self.Slider.value];
    NSLog(@"%f",self.Slider.value);
    
}
-(IBAction)Switch_Action:(UISwitch *)sender{
    if ([sender isOn]) {
        
      Prueba.backgroundColor=[UIColor greenColor];
        [self.gif startAnimating];
        
    } else{
        Prueba.backgroundColor=[UIColor redColor];
        [self.gif stopAnimating];
    }
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:true];
   self.Texto.text=@"0";
    
}
- (IBAction)UIButton_stop_action:(UIButton *)sender {
     [self.view sendSubviewToBack:self.gif];
}
    @end
