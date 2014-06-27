//
//  Wall_Page.h
//  Gay1
//
//  Created by NewageSMB on 6/26/14.
//  Copyright (c) 2014 NewageSMB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Wall_Page : UIViewController<UITableViewDataSource,UITableViewDelegate,UITextViewDelegate>
@property (strong, nonatomic) IBOutlet UITextView *posttxtview;
@property (strong, nonatomic) IBOutlet UIImageView *Profileimage;
@property (strong, nonatomic) IBOutlet UITableView *mytable;




- (IBAction)BackGroundButtonTapped:(id)sender;
- (IBAction)ContinueButtonTapped:(id)sender;
- (IBAction)SettingButtonTapped:(id)sender;
- (IBAction)MessageButtonTapped:(id)sender;

@end
