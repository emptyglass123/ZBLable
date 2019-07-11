//
//  ZBLable.h
//  ZBank
//
//  Created by pactera on 2019/6/14.
//  Copyright © 2019年 pectera. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// 文本纵向对齐模式
typedef NS_ENUM(NSInteger , ZBLableVerticalAlignMode) {
    // Text文本纵向顶部对齐
    ZBLableVerticalAlignModeTop,
    
    // Text文本纵向居中对齐
    ZBLableVerticalAlignModeCenter,
    
    // Text文本纵向底部对齐
    ZBLableVerticalAlignModeBottom,
};

@interface ZBLable : UILabel

@property (nonatomic, assign) ZBLableVerticalAlignMode verticalAlignMode;

@end

NS_ASSUME_NONNULL_END
