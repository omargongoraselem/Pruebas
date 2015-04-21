//
//  ViewController.m
//  Tabla Imagenes Ipad
//
//  Created by Rafael on 16/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    
    NSMutableArray *Informacion;
    int Fila;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Informacion=[[NSMutableArray alloc]init];
    [Informacion addObject:[NSArray arrayWithObjects:[UIImage imageNamed:@"Imagen1"],@"Luisa Gonzales", nil]];[Informacion addObject:[NSArray arrayWithObjects:[UIImage imageNamed:@"Imagen2"],@"Benito Camelo", nil]];
    [Informacion addObject:[NSArray arrayWithObjects:[UIImage imageNamed:@"Imagen3"],@"Monica Galido", nil]];
    [Informacion addObject:[NSArray arrayWithObjects:[UIImage imageNamed:@"Imagen4"],@"Elber Galarga", nil]];
    [Informacion addObject:[NSArray arrayWithObjects:[UIImage imageNamed:@"Imagen5"],@"Pedro Gonzales", nil]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return Informacion.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *Celda;
    
    Celda=[tableView dequeueReusableCellWithIdentifier:@"Celda1" forIndexPath:indexPath];
    Celda.UILabel_Nombre.text=Informacion[indexPath.row][1];
    Celda.UIImage_Foto.image=Informacion[indexPath.row][0];
    
   
    return Celda;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier] isEqualToString:@"IraVista2"] ) {
        
        Vista2 *Vista=[segue destinationViewController];
        Vista.Imagen=Informacion[Fila][0];
        
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

    
    
    

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Fila=(int)indexPath.row;
    
    
     [self performSegueWithIdentifier:@"IraVista2" sender:self];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}


@end
