//
//  HTTableView.m
//  GCDProject
//
//  Created by Yinht on 2018/4/13.
//  Copyright © 2018年 yinht. All rights reserved.
//

#import "HTTableView.h"
#import "Masonry.h"

static NSString *const identifiter = @"HTTableViewIdentifiter";

@interface HTTableView ()<UITableViewDelegate,UITableViewDataSource,UIGestureRecognizerDelegate> {
    
}

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIView *headView;
@property (nonatomic, strong) HTTableViewModel *viewModel;

@end

@implementation HTTableView

#pragma mark - Life Cycle

- (instancetype)init {
    if (self = [super init]) {
    }
    return self;
}

- (instancetype)initWithVM:(HTTableViewModel *)viewModel {
    if (self = [super init]) {
    }
    return self;
}

- (void)dealloc {
    
}

#pragma mark - Construct

- (void)setupView {
    self.backgroundColor = self.viewModel.backgroundColor;
    [self addSubview:self.tableView];
    
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.equalTo(self);
    }];

    
}

#pragma mark - Private

#pragma mark - Interface

- (void)updateWithViewModel:(HTTableViewModel *)viewModel {
    self.viewModel = viewModel;
}

#pragma mark - Getters

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.backgroundColor = [UIColor clearColor];
        _tableView.showsVerticalScrollIndicator = false;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}

- (HTTableViewModel *)viewModel {
    if (!_viewModel) {
        _viewModel = [[HTTableViewModel alloc] init];
    }
    return _viewModel;
}

#pragma mark - UITableView Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.viewModel.dataSourceArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    self.viewModel.cellHeightIndexPath = indexPath;
    return self.viewModel.cellHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    self.viewModel.tableViewIdentifier = identifiter;
    self.viewModel.tableView = tableView;
    self.viewModel.cellIndexPath = indexPath;
    return self.viewModel.cell;
}


@end
