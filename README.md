# ZBLable
可以设置UILable的文本对齐方式: 纵向顶部对齐,纵向居中对齐 , 纵向底部对齐

# 文本纵向对齐模式
typedef NS_ENUM(NSInteger , ZBLableVerticalAlignMode) {

    # Text文本纵向顶部对齐
    ZBLableVerticalAlignModeTop,
    
    # Text文本纵向居中对齐
    ZBLableVerticalAlignModeCenter,
    
    # Text文本纵向底部对齐
    ZBLableVerticalAlignModeBottom,
};

	
  #调用方式:
  
	    ZBLable *Lable = [[ZBLable alloc] init];
	    Lable.numberOfLines = 0;
	    Lable.backgroundColor = [UIColor whiteColor];
	    Lable.verticalAlignMode = ZBLableVerticalAlignModeTop;

