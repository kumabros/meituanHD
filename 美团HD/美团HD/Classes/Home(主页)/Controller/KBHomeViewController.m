//
//  KBHomeViewController.m
//  美团HD
//
//  Created by kumaBro on 15/10/24.
//  Copyright © 2015年 kumaBro. All rights reserved.
//

#import "KBHomeViewController.h"
#import "KBConst.h"
#import "UIBarButtonItem+Extension.h"
#import "UIView+Extension.h"
#import "KBHomeTopItem.h"

@interface KBHomeViewController ()

@end

@implementation KBHomeViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)init
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    return [self initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.view == self.tableView
    //self.view == self.conllectionView.superView
    //KBLog(@"%p %p %p",self.view,self.collectionView,self.collectionView.superview);
    
    //设置背景色
    self.collectionView.backgroundColor = KBGlobalBg;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    //设置导航栏内容
    [self setupLeftNav];
    [self setupRightNav];
}

#pragma mark - 设置导航栏内容
- (void)setupLeftNav
{
    //logo
    UIBarButtonItem *logo = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"icon_meituan_logo"] style:UIBarButtonItemStyleDone target:nil action:nil];
    logo.enabled = NO;
    
    //category
    KBHomeTopItem *categoryItem = [KBHomeTopItem item];
    [categoryItem addTarget:self action:@selector(categoryClick)];
    UIBarButtonItem *category = [[UIBarButtonItem alloc]initWithCustomView:categoryItem];
    
    //city
    KBHomeTopItem *districtItem = [KBHomeTopItem item];
    [districtItem addTarget:self action:@selector(districtClick)];
    UIBarButtonItem *district = [[UIBarButtonItem alloc]initWithCustomView:districtItem];
    
    //sort
    KBHomeTopItem *sortItem = [KBHomeTopItem item];
    [sortItem addTarget:self action:@selector(sortClick)];
    UIBarButtonItem *sort = [[UIBarButtonItem alloc]initWithCustomView:sortItem];
    
    //将图标加入数组中显示
    self.navigationItem.leftBarButtonItems = @[logo,category,district,sort];
    
}

- (void)setupRightNav
{
    UIBarButtonItem *search = [UIBarButtonItem itemWithTarget:nil action:nil image:@"icon_map" highlightImage:@"icon_map_highlighted"];
    //利用图标宽度设置图标之间的间隔
    search.customView.width = 50;
    
    
    UIBarButtonItem *map = [UIBarButtonItem itemWithTarget:nil action:nil image:@"icon_district" highlightImage:@"icon_district_highlighted"];
    map.customView.width = 50;
    
    //将图标加入数组中显示
    self.navigationItem.rightBarButtonItems = @[search,map];
}

#pragma mark - 顶部item点击方法
- (void)categoryClick
{
    KBLog(@"categoryClick");
}

- (void)districtClick
{
    KBLog(@"districtClick");}

- (void)sortClick
{
    KBLog(@"sortClick");}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 0;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
