//
//  TTtextview.m
//  MyDoctor
//
//  Created by 中医宝 on 15/8/24.
//  Copyright (c) 2015年 GFENG. All rights reserved.
//

#import "TTtextview.h"
@interface  TTtextview()
@end
@implementation TTtextview




-(void)setPlaceholder:(NSString *)placeholder
{
    _placeholder=placeholder;
    [self UpdateUI];
    _textview.text=placeholder;
}


-(void)UpdateUI
{
    self.font=[UIFont systemFontOfSize:14];
    self.backgroundColor=[UIColor clearColor];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChanged:) name:UITextViewTextDidChangeNotification object:nil];
    if(!_textview)
    {
        _textview=[[UILabel alloc]initWithFrame:CGRectMake(3, 5, self.bounds.size.width-3, 20)];
        _textview.backgroundColor=[UIColor clearColor];
        _textview.font=[self font];
        _textview.textColor=[UIColor lightGrayColor];
        [self addSubview:_textview];
    }
    
    if(self.text.length>0){
        _textview.hidden=YES;
    }else{
         _textview.hidden=NO;
    }
}

- (void)setText:(NSString *)text
{
    [super setText:text];
    NSLog(@"我进来了");
    if(text.length>0){
        _textview.hidden=YES;
    }else{
         _textview.hidden=NO;
    }
    
}


- (void)textChanged:(NSNotification *)notification
{
    if([self.placeholder length] == 0){
         _textview.hidden=YES;
        return;
    }    
    if([[self text] length] == 0){
        _textview.hidden=NO;
    }else{
       _textview.hidden=YES;
    }
}


-(void)awakeFromNib
{
    self.placeholder=@"请输入文字";
    [self UpdateUI];
}


@end
