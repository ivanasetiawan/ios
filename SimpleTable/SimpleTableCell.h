//
//  SimpleTableCell.h
//  SimpleTable
//
//  Created by Ivana Setiawan | Mangrove on 4/15/13.
//  Copyright (c) 2013 Ivana Setiawan | Mangrove. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *thumb;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *prepTime;

@end
