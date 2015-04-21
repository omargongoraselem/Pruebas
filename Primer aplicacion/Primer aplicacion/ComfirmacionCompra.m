//
//  ComfirmacionCompra.m
//  Primer aplicacion
//
//  Created by Rafael on 09/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import "ComfirmacionCompra.h"

@interface ComfirmacionCompra (){
    
   
    NSMutableArray *Confirmacion;
}

@end

@implementation ComfirmacionCompra


- (void)viewDidLoad {
    [super viewDidLoad];
    Confirmacion=[[NSMutableArray alloc]init];
    
  [Confirmacion addObject:[NSArray arrayWithObjects:@"Celda1",self.data[0],nil]];
  [Confirmacion addObject:[NSArray arrayWithObjects:@"Celda1",self.data[1][0], nil]];
  [Confirmacion addObject:[NSArray arrayWithObjects:@"Celda1",self.data[2], nil]];
    
    
    // Do any additional setup after loading the view.
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

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return Confirmacion.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:Confirmacion[indexPath.row][0] forIndexPath:indexPath];
    UIImage *Prueba=Confirmacion[0][1][0];
    //cell.UILabel_Nombre.text=[NSString stringWithFormat:@"%@",Confirmacion[1][1]];
   // cell.UIImage_Prueba.image=Confirmacion[0][1][1];
    if (indexPath.row==2) {
        cell.UILabel_Resultado.text=Confirmacion[2][1][0];
        cell.UILabel_Tipo.text=@"Comida:";
    
    }else if(indexPath.row==1){
        cell.UILabel_Resultado.text=Confirmacion[2][1][1];
        cell.UILabel_Tipo.text=@"Bebida:";
    }else {
        cell.UILabel_Resultado.text=Confirmacion[1][1];
        cell.UILabel_Tipo.text=@"Bienvenido";
        cell.backgroundColor=[UIColor blueColor];
        cell.UILabel_Resultado.textColor=[UIColor whiteColor];
        cell.UILabel_Tipo.textColor=[UIColor whiteColor];
    }

    

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
}




- (IBAction)UIButton_action_AceptarCompra:(UIButton *)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Registro Completado"
                                                    message:@"Su registro fue completado exitosamente!!"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
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
