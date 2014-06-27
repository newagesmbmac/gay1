//
//  Message_TableCell.h
//  Gay1
//
//  Created by NewageSMB on 6/26/14.
//  Copyright (c) 2014 NewageSMB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Message_TableCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *namelbl;
@property (strong, nonatomic) IBOutlet UIImageView *profileimageobj;
@property (strong, nonatomic) IBOutlet UIButton *checkbox;
- (IBAction)CheckboxTapped:(id)sender;

@end
