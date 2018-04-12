//
//  HTFeedModel.h
//  GCDProject
//
//  Created by Yinht on 2018/4/12.
//  Copyright © 2018年 yinht. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSONModel/JSONModel.h>

@interface HTFeedModel : JSONModel

@property (nonatomic) NSUInteger feedId;
@property (nonatomic, copy) NSString<Optional> *feedTitle;      //标题
@property (nonatomic, copy) NSString<Optional> *feedLink;       //链接
@property (nonatomic, copy) NSString<Optional> *feedDes;        //简介
@property (nonatomic, copy) NSString<Optional> *feedImageUrl;   //icon图标
@property (nonatomic, copy) NSString<Optional> *feedUrl;        //博客feed的链接
@property (nonatomic, strong) NSMutableArray *items;            //HTFeedItemModel

@end

@interface HTFeedItemModel : JSONModel

@end
