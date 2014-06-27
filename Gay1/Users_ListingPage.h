//
//  Users_ListingPage.h
//  Gay1
//
//  Created by NewageSMB on 6/25/14.
//  Copyright (c) 2014 NewageSMB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Users_ListingPage : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,NSURLConnectionDelegate>
{

}
@property (strong, nonatomic) IBOutlet UICollectionView *Mycollection;





- (IBAction)catagoryButtonTapped:(id)sender;
- (IBAction)LoginButtonTapped:(id)sender;


@end
