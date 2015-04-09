//
//  TableViewCell.h
//  Primer aplicacion
//
//  Created by Rafael on 09/04/15.
//  Copyright (c) 2015 Rafael. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DelegateCelda <NSObject>

-(void) Gato:(int)Omar;


@end


@interface TableViewCell : UITableViewCell{
   
    __weak IBOutlet UILabel *UILabel_Celda;
    
}

@end
