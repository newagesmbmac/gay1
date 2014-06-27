//
//  Message_Page.m
//  Gay1
//
//  Created by NewageSMB on 6/26/14.
//  Copyright (c) 2014 NewageSMB. All rights reserved.
//

#import "Message_Page.h"
#import "Message_TableCell.h"

@interface Message_Page ()

@end

@implementation Message_Page

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)CatagoryButtonTapped:(id)sender {
}

- (IBAction)MessageButtonTapped:(id)sender {
}


#pragma mark - tableview delegate..

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    
    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellid =@"CELL";
    
    Message_TableCell *cell=(Message_TableCell *)[tableView dequeueReusableCellWithIdentifier:cellid];
    if (cell ==nil) {
        NSArray *cellarray =[[NSBundle mainBundle]loadNibNamed:@"Message_TableCell" owner:self options:nil];
        cell=[cellarray objectAtIndex:0];
        
    }
    
    
    
    
    
    return cell;
    
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 56;
    
}





@end
