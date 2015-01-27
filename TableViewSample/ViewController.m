//
//  ViewController.m
//  TableViewSample
//
//  Created by WeiXiang on 15/1/27.
//  Copyright (c) 2015年 WeiXiang. All rights reserved.
//

#import "ViewController.h"
#import "IconSet.h"
#import "Icon.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>


@property (strong, nonatomic) NSArray* icons;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray* iconsetArray = [IconSet iconSets];
    IconSet* iconSet = ( IconSet* )iconsetArray[0];
    self.icons = iconSet.icons;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.icons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"MainCell" forIndexPath:indexPath];

    Icon* icon = _icons[indexPath.row];
    cell.textLabel.text = icon.title;
    cell.detailTextLabel.text = icon.subtitle;
    cell.imageView.image = icon.image;

    return cell;
}

@end
