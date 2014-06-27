//
//  Message_TableCell.m
//  Gay1
//
//  Created by NewageSMB on 6/26/14.
//  Copyright (c) 2014 NewageSMB. All rights reserved.
//

#import "Message_TableCell.h"

@implementation Message_TableCell

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

- (IBAction)CheckboxTapped:(id)sender {
}
@end
