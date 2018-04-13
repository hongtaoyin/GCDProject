//
//  HTTableViewModel.h
//  GCDProject
//
//  Created by Yinht on 2018/4/13.
//  Copyright © 2018年 yinht. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HTTableViewModel : NSObject

//General
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSString *tableViewIdentifier;

//Cell
@property (nonatomic, strong) NSIndexPath *cellIndexPath;
@property (nonatomic, strong) UITableViewCell *cell;

//CellHeight
@property (nonatomic, strong) NSIndexPath *cellHeightIndexPath;
@property (nonatomic, assign) CGFloat cellHeight;

//DataSource
@property (nonatomic, strong) NSMutableArray *dataSourceArray;  //数据

//Style
@property (nonatomic, strong) UIColor *backgroundColor;         //背景颜色
@property (nonatomic, strong) UIColor *cellBackgroundColor;     //cell的背景颜色

@end
