//
//  HTTableView.h
//  GCDProject
//
//  Created by Yinht on 2018/4/13.
//  Copyright © 2018年 yinht. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HTTableViewModel.h"

@interface HTTableView : UIView

- (instancetype)initWithVM:(HTTableViewModel *)viewModel;
- (void)updateWithViewModel:(HTTableViewModel *)viewModel;

@end
