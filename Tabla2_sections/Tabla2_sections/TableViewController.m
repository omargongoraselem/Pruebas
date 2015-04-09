//
//  TableViewController.m
//  Tabla2_sections
//
//  Created by Rafael on 06/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
@interface TableViewController (){
    NSMutableArray *Contenedor;
    int Num;
    
    
}

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Contenedor=[[NSMutableArray alloc] init];
    [Contenedor addObject:[NSArray arrayWithObjects: @"1",@"Juana",@"Prin",@"Feliz",  nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: @"2",@"Pancha",@"Sec",@"Triste", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: @"2",@"Pepita",@"Prin",@"Feliz", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: @"1",@"Luz",@"Prin",@"Triste",   nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: @"1",@"Luz",@"Sec",@"Triste",    nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: @"2",@"Pancha",@"Sec",@"Triste", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: @"2",@"Pepita",@"Prin",@"Feliz", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects: @"1",@"Juana",@"Prin",@"Feliz",  nil]];
    
    [self.tableView reloadData];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return Contenedor.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[NSString stringWithFormat:@"Form%@",Contenedor[indexPath.row][0]] forIndexPath:indexPath];
  cell.Label_Nombre1.text=@"";
    NSLog(@"%@",Contenedor[indexPath.row][1]);
    NSLog(@"%@",Contenedor[indexPath.row][2]);
    NSLog(@"%@",Contenedor[indexPath.row][3]);
    cell.Label_Estado1.text=Contenedor[indexPath.row][3];
    cell.Label_Estado2.text=Contenedor[indexPath.row][3];
    cell.Label_Nombre1.text=Contenedor[indexPath.row][1];
    cell.Label_Nombre2.text=Contenedor[indexPath.row][1];
    cell.Label_Usuario1.text=Contenedor[indexPath.row][2];
    cell.Label_Usuario2.text=Contenedor[indexPath.row][2];
    
    cell.Label_A1.tag=indexPath.row;
    [cell.Label_A1 addTarget:self action:@selector(Hola:) forControlEvents:UIControlEventTouchUpInside];
    cell.Label_A2.tag=indexPath.row;
    [cell.Label_A2 addTarget:self action:@selector(Hola:) forControlEvents:UIControlEventTouchUpInside];

    return cell;
    
}
-(void)Hola:(UIButton*) sender{
    [Contenedor insertObject:[NSArray arrayWithObjects: @"1",@"Juana",@"Prin",@"Feliz",  nil] atIndex:sender.tag+1+Num];
    [self.tableView beginUpdates];
    [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObjects:[NSIndexPath indexPathForRow:sender.tag+1+Num inSection:0], nil] withRowAnimation:UITableViewRowAnimationFade];
    
    [self.tableView endUpdates];
    [self.tableView reloadData];

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if([Contenedor[indexPath.row][1] isEqualToString:@"Luz"]&& [Contenedor[indexPath.row][2] isEqualToString:@"Sec"]){
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ROFL"
                                                   message:@"Dee dee doo doo."
                                                   delegate:self
                                                   cancelButtonTitle:@"No"
                                                   otherButtonTitles:@"Si",nil];
        [alert show];
        Num=(int)indexPath.row;
    }
    if((int)indexPath.row==0){
        [self.tableView beginUpdates];
        [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:[NSIndexPath indexPathForRow: Contenedor.count-1 inSection: 0],nil ]withRowAnimation:UITableViewRowAnimationFade];
         [Contenedor removeLastObject];
        [self.tableView endUpdates];
    }

}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex==1){
    [Contenedor insertObject:[NSArray arrayWithObjects: @"1",@"Juana",@"Prin",@"Feliz",  nil] atIndex:Num+1];
        [self.tableView beginUpdates];
        [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObjects:[NSIndexPath indexPathForRow:Num+1 inSection:0], nil] withRowAnimation:UITableViewRowAnimationFade];
        [self.tableView endUpdates];
    }
    
}

- (IBAction)Button_A1:(UIButton *)sender {
   
    
}
- (IBAction)Button_A2:(UIButton *)sender {
    [Contenedor insertObject:[NSArray arrayWithObjects: @"1",@"Juana",@"Prin",@"Feliz",  nil] atIndex:Num+1];
    [self.tableView beginUpdates];
    [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObjects:[NSIndexPath indexPathForRow:Num+1 inSection:0], nil] withRowAnimation:UITableViewRowAnimationFade];
    
    [self.tableView endUpdates];
    
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
