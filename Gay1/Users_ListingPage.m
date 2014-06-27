//
//  Users_ListingPage.m
//  Gay1
//
//  Created by NewageSMB on 6/25/14.
//  Copyright (c) 2014 NewageSMB. All rights reserved.
//

#import "Users_ListingPage.h"
#import "Users_CollectionCell.h"
#import "Wall_Page.h"
#import "JSON.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface Users_ListingPage ()

@end

@implementation Users_ListingPage
{
    NSArray *jsonarray;
   
    NSArray *thumbarray;
    NSArray *extenarray;
    NSArray *picarray;
}
@synthesize Mycollection;


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
    [Mycollection registerNib:[UINib nibWithNibName:@"Users_CollectionCell" bundle:nil] forCellWithReuseIdentifier:@"CELL"];
    
    [Mycollection setBackgroundColor:[UIColor whiteColor]];
    
    self.navigationController.navigationBarHidden = YES;
    
    
    
    
    
    
    //requesting url for data...
    
    NSString *sessionkeystr =[NSString stringWithFormat:@"http://test.gaysone.com/htdocs/api/?v=1.0&authKey=9c833a407cbbf0e2ab7c9ca9fca744a3&action=openSession"];
    
    
    sessionkeystr = [sessionkeystr stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
    
    
    //NSLog(@"%@",urlstr);
    
    
    
    
    
    
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:sessionkeystr]];
    
    NSURLResponse *responce;
    NSError *error0;
    
    
    //data we get after successfull connection is stored as nsdata..
    
    
    
    NSData *sessiondata =[NSURLConnection sendSynchronousRequest:request returningResponse:&responce error:&error0];
    //    NSLog(@"%@",data);
    
    
    
    
    
    NSString *sessionjsonString = [[NSString alloc] initWithData:sessiondata encoding:NSUTF8StringEncoding];
    

    NSDictionary * sessjsondict =[[NSDictionary alloc]init];
    
    sessjsondict=[sessionjsonString JSONValue];

    NSArray *sessionarray =[sessjsondict valueForKey:@"result"];
    NSString *sessionkey =[sessionarray valueForKey:@"sessionKey"];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  

    
    //requesting url for data...
    
NSString *urlstr =[NSString stringWithFormat:@"http://test.gaysone.com/htdocs/api/?v=1.0&authKey=9c833a407cbbf0e2ab7c9ca9fca744a3&sessionKey=%@&action=getUsers&limit=12",sessionkey];
    
    
    urlstr = [urlstr stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
    
    
    //NSLog(@"%@",urlstr);
    
    
    
    
    
    
    NSURLRequest *req =[NSURLRequest requestWithURL:[NSURL URLWithString:urlstr]];
    
    NSURLResponse *resp;
    NSError *error;
    
    
    //data we get after successfull connection is stored as nsdata..
    
    
    
    NSData *data =[NSURLConnection sendSynchronousRequest:req returningResponse:&resp error:&error];
    //    NSLog(@"%@",data);
    
    
    
    
    
    NSString *jsonString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
   NSDictionary * jsondict =[[NSDictionary alloc]init];
    
   jsondict=[jsonString JSONValue];
    

    
    jsonarray =[jsondict valueForKey:@"result"];
 //   NSLog(@"%@",jsonarray);
      picarray=[jsonarray valueForKey:@"picture"];
 //   NSLog(@"%@",picarray);
   
    

    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBactions...


- (IBAction)catagoryButtonTapped:(id)sender
{
    
}

- (IBAction)LoginButtonTapped:(id)sender
{
    Wall_Page *wall =[[Wall_Page alloc]initWithNibName:@"Wall_Page" bundle:Nil];
    [self.navigationController pushViewController:wall animated:YES];
}


#pragma mark - collection view delegates...

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section

{
  NSLog(@"%d",[picarray count]);
    return [picarray count];
    
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath

{
      Users_CollectionCell* collect = [Mycollection  dequeueReusableCellWithReuseIdentifier:@"CELL" forIndexPath:indexPath];
    
    
    collect.namelbl.text =[[jsonarray objectAtIndex:indexPath.item]objectForKey:@"username"];
    
 
    
    
    
//    NSArray *thumbarray1 =[[thumbarray objectAtIndex:indexPath.row]componentsSeparatedByString:@"_com"];
    
    NSString *str = [[picarray objectAtIndex:indexPath.row] objectForKey:@"thumb_path"];
    str = [str stringByReplacingOccurrencesOfString:@"_com" withString:@"_3"];
    str = [NSString stringWithFormat:@"%@%@",str,[[picarray objectAtIndex:indexPath.row] objectForKey:@"extension"]];
    
    

    NSLog(@"%@",str);
    
     
  
   
   
 [collect.imageobj setImageWithURL:[NSURL URLWithString:str] placeholderImage:nil];
//    coll.backgroundColor=[UIColor yellowColor];
    return collect;
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(94, 86);
}









@end
