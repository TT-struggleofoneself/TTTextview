//
//  ViewController.m
//  TTTextview
//
//  Created by TT_code on 16/4/18.
//  Copyright © 2016年 TT_code. All rights reserved.
//

#import "ViewController.h"
#import "TTtextview.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet TTtextview *tttextview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tttextview.placeholder=@"请输入内容";
   
}


@end
