//
//  TablaViewController.m
//  TABLA
//
//  Created by Rafael on 06/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import "TablaViewController.h"
#import "TableViewCell.h"
@interface TablaViewController (){
    NSMutableArray *Contenedor;
    NSArray *Nombres;
    int Label1;
    int Label2;
    int Label3;
    int i;
}
@end

@implementation TablaViewController

- (void)viewDidLoad {
    i=0;
    [super viewDidLoad];
    Contenedor=[[NSMutableArray alloc] init];
    [Contenedor addObject:[NSArray arrayWithObjects:@"Juana",@"Prin",@"Feliz", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects:@"Pancha",@"Sec",@"Triste", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects:@"Pepita",@"Prin",@"Feliz", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects:@"Luz",@"Prin",@"Triste", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects:@"Luz",@"Sec",@"Triste", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects:@"Pancha",@"Sec",@"Triste", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects:@"Pepita",@"Prin",@"Feliz", nil]];
    [Contenedor addObject:[NSArray arrayWithObjects:@"Juana",@"Prin",@"Feliz", nil]];
    

    
  
    
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
    
    NSLog(@"%i",(int)indexPath.row);
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Form1" forIndexPath:indexPath];
    
    
    Label1=(int)indexPath.row*3;
    Label2=Label1+1;
    Label3=Label2+1;
        
    cell.Label_Form1.text=Contenedor[indexPath.row][0];
    cell.Label_Usuario.text=Contenedor[indexPath.row][1];
    cell.Label_Estado.text=Contenedor[indexPath.row][2];
    i++;
       // Configure the cell...
    
    return cell;
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
