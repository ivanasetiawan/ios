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
@synthesize nameLabel = _nameLabel;
@synthesize prepTimeLabel = _prepTimeLabel;
@synthesize thumbnailImageView = _thumbnailImageView;

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
