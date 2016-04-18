//
//  TTtextview.h
//  MyDoctor
//
//  Created by 中医宝 on 15/8/24.
//  Copyright (c) 2015年 GFENG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTtextview : UITextView

/**
 * 提示文字
 */
@property(nonatomic,strong)NSString* placeholder;
/**
 * 文字显示label
 */
@property(nonatomic,strong)UILabel* textview;



@end
