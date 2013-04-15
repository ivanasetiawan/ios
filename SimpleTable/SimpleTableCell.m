//
//  SimpleTableCell.m
//  SimpleTable
//
//  Created by Ivana Setiawan | Mangrove on 4/15/13.
//  Copyright (c) 2013 Ivana Setiawan | Mangrove. All rights reserved.
//

#import "SimpleTableCell.h"

@implementation SimpleTableCell

// Synthesize is no longer necessary
@synthesize name = _name;
@synthesize prepTime= _prepTime;
@synthesize thumb = _thumb;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
