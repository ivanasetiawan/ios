//
//  SimpleTableViewController.m
//  SimpleTable
//
//  Created by Ivana Setiawan | Mangrove on 4/15/13.
//  Copyright (c) 2013 Ivana Setiawan | Mangrove. All rights reserved.
//

#import "SimpleTableViewController.h"
#import "SimpleTableCell.h"

@interface SimpleTableViewController ()

@end

@implementation SimpleTableViewController
{
    NSArray *tableData;
    NSArray *thumbs;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	tableData = [NSArray arrayWithObjects:@"yay", @"yay2", @"yay3", nil];
    thumbs = [NSArray arrayWithObjects:@"bla.jpg",@"bla2.jpg", @"bla.jpg", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}

// “cellForRowAtIndexPath” method is called by iOS automatically each time before a table row is displayed.

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.name.text = [tableData objectAtIndex:indexPath.row];
    cell.thumb.image = [UIImage imageNamed:[thumbs objectAtIndex:indexPath.row]];
    //cell.prepTimeLabel.text = [prepTime objectAtIndex:indexPath.row];
    
    return cell;
}
/**
 Return the row heigth for each table row.
 */
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 95;
}

@end
