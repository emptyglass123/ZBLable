//
//  ZBLable.m
//  ZBank
//
//  Created by pactera on 2019/6/14.
//  Copyright © 2019年 pectera. All rights reserved.
//

#import "ZBLable.h"

@implementation ZBLable

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Lable 默认居中对齐
        _verticalAlignMode = ZBLableVerticalAlignModeCenter;
    }
    return self;
}

- (void)setVerticalAlignMode:(ZBLableVerticalAlignMode)verticalAlignMode{
    _verticalAlignMode = verticalAlignMode;
    [self setNeedsLayout];
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    switch (self.verticalAlignMode) {
        case ZBLableVerticalAlignModeTop:
            textRect.origin.y = bounds.origin.y;
            break;
        case ZBLableVerticalAlignModeBottom:
            textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height;
            break;
        case ZBLableVerticalAlignModeCenter:
        default:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
    }
    return textRect;
}

-(void)drawTextInRect:(CGRect)requestedRect {
    CGRect inRect = [self textRectForBounds:requestedRect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:inRect];
}



@end
