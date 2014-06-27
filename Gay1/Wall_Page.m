//
//  Wall_Page.m
//  Gay1
//
//  Created by NewageSMB on 6/26/14.
//  Copyright (c) 2014 NewageSMB. All rights reserved.
//

#import "Wall_Page.h"
#import "Wall_cell.h"
#import "Message_Page.h"

@interface Wall_Page ()

@end

@implementation Wall_Page

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

- (IBAction)BackGroundButtonTapped:(id)sender {
}

- (IBAction)ContinueButtonTapped:(id)sender {
}

- (IBAction)SettingButtonTapped:(id)sender {
}

- (IBAction)MessageButtonTapped:(id)sender
{
    Message_Page *message =[[Message_Page alloc]initWithNibName:@"Message_Page" bundle:nil];
    [self.navigationController pushViewController:message animated:YES];
}

#pragma mark - tableview delegate..

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
 
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellid =@"CELL";
    
    Wall_cell *cell=(Wall_cell *)[tableView dequeueReusableCellWithIdentifier:cellid];
    if (cell ==nil) {
        NSArray *cellarray =[[NSBundle mainBundle]loadNibNamed:@"Wall_cell" owner:self options:nil];
        cell=[cellarray objectAtIndex:0];
        
    }
    
    
    
    
   
    return cell;
    
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
    
}


@end
