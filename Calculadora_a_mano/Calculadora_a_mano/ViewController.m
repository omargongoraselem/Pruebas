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
    NSMutableArray *Contenedor;
    TableViewCell  *cell;
    
 
int i;
}

@end

@implementation ViewController;

- (void)viewDidLoad {
    i=0;
    [super viewDidLoad];
    self.UITableView_Tabla.dataSource=self;
    self.UITableView_Tabla.delegate=self;
//Gif images
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
    self.gif.animationRepeatCount=15;
    [self.view addSubview:self.gif];
    
//Table Array
    
    Contenedor=[[NSMutableArray alloc] init];
    [Contenedor addObject:[NSArray arrayWithObjects: @"Celda1",@"Juana",@"Prin",@"Feliz",  nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: @"Celda2",@"Pancha",@"Sec",@"Triste", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: @"Celda1",@"Pepita",@"Prin",@"Feliz", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: @"Celda2",@"Luz",@"Prin",@"Triste",   nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: @"Celda1",@"Luz",@"Sec",@"Triste",    nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: @"Celda2",@"Pancha",@"Sec",@"Triste", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: @"Celda1",@"Pepita",@"Prin",@"Feliz", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: @"Celda2",@"Juana",@"Prin",@"Feliz",  nil]];
     [self.view sendSubviewToBack:Prueba ];
   
//Switch
   self.Switch=[[UISwitch alloc]initWithFrame:CGRectMake(215,95, 80, 20)];
   [self.Switch addTarget: self action:@selector(Switch_Action:)forControlEvents:UIControlEventValueChanged];
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
    
//Reload Table
    [self.UITableView_Tabla reloadData];
    [self.view bringSubviewToFront:self.UITableView_Tabla];
    }

////////////////////TErmina view did load///////////////////////


-(void)Gato:(int) Omar{
 self.gif.animationImages=pics;
 self.gif.animationDuration=Omar;
 [self Fade:0 withBoolean:YES];
}

-(void)Perro:(int) Omar{
  self.gif.animationImages=picsperro;
  self.gif.animationDuration=Omar;
  [self Fade:0 withBoolean:YES];
}
-(void)Boton_1:(UIButton*)sender{
    [self performSegueWithIdentifier:@"iravista2" sender:self];
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
    [NSTimer scheduledTimerWithTimeInterval:.1
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
// Agregar y quitar divisiones
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

//Slider con numero
-(IBAction)Slider_Action:(UISlider *)sender{
    self.Texto.text=[NSString stringWithFormat:@"%0.2f",self.Slider.value];
    NSLog(@"%f",self.Slider.value);
    
}

//Switch

-(IBAction)Switch_Action:(UISwitch *)sender{
    if ([sender isOn]) {
        
      Prueba.backgroundColor=[UIColor greenColor];
        [self Fade:0 withBoolean:YES];

        
    } else{
        Prueba.backgroundColor=[UIColor redColor];
        [self.gif stopAnimating];
        [self Fade:1 withBoolean:NO];
    }
}

///////////////////FADE"///////////////////
-(void)Fade:(int)Alpha withBoolean:(BOOL)Bool {
    [UIView animateKeyframesWithDuration:2 delay:0 options: UIViewKeyframeAnimationOptionBeginFromCurrentState animations:^{
        self.UITableView_Tabla.alpha=Alpha;
    } completion:^(BOOL finished) {
        if(Bool==YES){
        [self.view bringSubviewToFront:self.gif];
        [self.gif startAnimating];
            
        }else{
        }
    }];
    
}
///////////////////////////////////////

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:true];
   self.Texto.text=@"0";
    
}

//Boton Stop
- (IBAction)UIButton_stop_action:(UIButton *)sender {
    [self.view sendSubviewToBack:self.gif];
    
    if(self.Switch.isOn==NO){
     [self Fade:1 withBoolean:NO];
    }
}

///////////////////////////Crear tabla///////////////////////////

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
  return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
  return Contenedor.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   cell=[tableView dequeueReusableCellWithIdentifier:Contenedor[indexPath.row][0]forIndexPath:indexPath];
    cell.Modicar_delegate=self;
    cell.Label1.text=Contenedor[indexPath.row][1];
   cell.Label1.text=Contenedor[indexPath.row][1];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    

    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"iravista2"] ) {
        Vista2 *Vista=[segue destinationViewController];
        Vista.string=@"Oscar";
    }
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

///////////////////Boton Cambio de pagina programado///////////////////

- (IBAction)UIButton_action_view:(UIButton *)sender {
   
   
    
    Vista2 *Vista = [self.storyboard instantiateViewControllerWithIdentifier:@"Vista2"];
    Vista.string=@"Pedro";
    [self presentViewController:Vista animated:YES completion:nil];
    
    
}
    @end
