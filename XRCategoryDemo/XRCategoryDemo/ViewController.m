//
//  ViewController.m
//  XRCategoryDemo
//
//  Created by 肖睿 on 16/4/13.
//  Copyright © 2016年 肖睿. All rights reserved.
//

#import "ViewController.h"
#import "XRCategory.h"
#import "Person.h"
@interface ViewController ()<UIScrollViewDelegate, UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, weak) UIScrollView *scrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self NSObject];
    [self UIScrollView];
    [self UIView];
    [self UIButton];
    [self UILabel];
    [self UIImageView];
    [self UITextField];
    [self UITableView];
    [self NSString];
    [self NSArray];
    [self NSDictionary];
    
}


- (void)NSObject {
    [Person create:^(Person *obj) {
        obj.setValueForKey(@"张三", @"name");
        obj.setValueForKeyPath(@12, @"age");
        NSLog(@"%@", obj.valueForKey(@"name"));
        NSLog(@"%@", obj.valueForKeyPath(@"age"));
        NSLog(@"%d", obj.isKindOfClass([Person class]));
        if (obj.respondsToSelector(@selector(eat:))) {
            obj.performSelOnMainThread(@selector(eat:), @"苹果", YES);
        }
    }];
}


- (void)UIView {
    UIView *view = [UIView create:^(UIView *obj) {
//        obj.originEle(0, 0).sizeEle(self.view.Width, self.view.Height);
//        obj.Center(CGPointMake(160, 300)).Bounds(CGRectMake(0, 0, 300, 300));
//        obj.x(0).y(0).width(300).height(300);
        obj.Frame(self.view.bounds).bgColorRGB(121, 231, 89, 1).Alpha(0.6).cornerRadius(80).maskToBounds(YES);
    }];
    self.scrollView.addSubview(view);
}

- (void)UIButton {
    [UIButton create:^(UIButton *obj) {
        obj.centerEle(100, 100).sizeEle(120, 50).bgColor([UIColor blueColor]);
        obj.setTitleForState(@"我是按钮", UIControlStateNormal);
        obj.setImageForState([UIImage imageNamed:@"icon"], UIControlStateNormal);
        obj.cornerRadius(5).maskToBounds(YES);
        obj.contentEdgeEle(0, 5, 0, 0).imageEdgeEle(5, 0, 0, 5).titleEdgeEle(0, 5, 5, 0);
        obj.adjustImgWhenDisable(NO).adjustImgWhenHighlight(NO);
        obj.addTarget(self, @selector(click:), UIControlEventTouchUpInside);
        self.scrollView.addSubview(obj);
    }];
}


- (void)click:(UIButton *)btn{
    NSString *title = btn.titleForState(UIControlStateNormal);
    UIImage *image = btn.imageForState(UIControlStateNormal);
    NSLog(@"%@--%@", title, image);
}


- (void)UILabel {
    [UILabel create:^(UILabel *obj) {
        obj.origin(CGPointMake(120, 300)).sizeEle(150, 150);
        obj.bgColorRGB(0, 255, 255, 1).Alpha(0.5);
        obj.numberOfLine(0).TextAlignment(NSTextAlignmentCenter).LineBreakMode(NSLineBreakByTruncatingHead);
        obj.Text(@"我是一个label我是一个label我是一个label我是一个label我是一个label我是一个label我是一个label我是一个label我是一个label我是一个label我是一个label我是一个label我是一个label我是一个label");
        self.scrollView.addSubview(obj);
    }];
}

- (void)UIImageView {
    UIImageView *imageView = [UIImageView create:^(UIImageView *obj) {
        obj.Frame(CGRectMake(20, 200, 100, 100));
        obj.Image([UIImage imageNamed:@"icon"]).cornerRadius(20).clipToBounds(YES);
        self.scrollView.addSubview(obj);
    }];
    
}


- (void)UITextField {
    [UITextField create:^(UITextField *obj) {
        obj.frameEle(100, 200, 200, 30);
        obj.placeHolder(@"占位文字").fontSize(20).TextColor([UIColor redColor]).BorderStyle(UITextBorderStyleRoundedRect);
        obj.clearOnBeginEdit(YES).bgImage([UIImage imageNamed:@"icon"]);
        obj.leftV([[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 0)]).leftVMode(UITextFieldViewModeAlways);
        self.scrollView.addSubview(obj);
    }];
}


- (void)UIScrollView {
    UIScrollView *scrollView = [UIScrollView create:^(UIScrollView *obj) {
        obj.Frame([UIScreen mainScreen].bounds).bgColor([UIColor whiteColor]);
        obj.ContentInset(UIEdgeInsetsMake(10, 10, 10, 10)).ContentSize(CGSizeMake(1000, 2000)).ContentOffset(CGPointMake(50, 100));
        obj.alwaysBounceH(NO).showVIndicator(NO);
        obj.Delegate(self);
        self.view.addSubview(obj);
    }];
    self.scrollView = scrollView;
}

- (void)UITableView {
    [UITableView createWithStyle:UITableViewStyleGrouped :^(UITableView *obj) {
        obj.originEle(375, 0).sizeEle(360, 650);
        obj.DataSource(self).Delegate(self);
        obj.separatStyle(UITableViewCellSeparatorStyleNone);
        obj.RowHeight(60).sectionHeadHeight(30).sectionFootHeight(30);
        obj.registClassForCellId([UITableViewCell class], @"cell");
        self.scrollView.addSubview(obj);
    }];
}

- (void)NSString {
    [NSString createWithString:@"我是一个字符串，信不信由你" :^(NSString *obj) {
        NSLog(@"%@", obj.subStrFromIndex(5));
        NSLog(@"%@", obj.stringByAppendStr(@",这是追加的字符串"));
        NSLog(@"%d", obj.hasPrefix(@"我"));
        NSLog(@"%@", NSStringFromRange(obj.rangeOfString(@"一个")));
        NSLog(@"%d", obj.isEqualToString(@"我是一个字符串"));
    }];
    
    [NSMutableString createWithString:@"我是可变的字符串，比上面的牛逼" :^(NSMutableString *obj) {
        obj.replaceCharInRange(NSMakeRange(2, 2), @"好可怕");
        obj.insertStrAtIndex(@"插入字符串", 4).appendStr(@"追加字符串").deleteCharInRange(NSMakeRange(3, 5));
        NSLog(@"%@", obj);
    }];
}

- (void)NSArray {
    NSArray *array = @[@"1", @"2", @"3", @"4", @"5"];
    [NSArray createWithArray:array :^(NSArray *obj) {
        NSLog(@"%ld", obj.indexOfObject(@"3"));
        NSLog(@"%@", obj.objectAtIndex(1));
        NSLog(@"%d", obj.isEqualToArray(array));
        NSLog(@"%@", obj.componentsJoinByStr(@"-"));
        NSLog(@"%d", obj.containsObject(@"4"));
        obj.makeObjPerformSelWithObj(@selector(stringByAppendingString:), @"aa");
    }];
    
    [NSMutableArray create:^(NSMutableArray *obj) {
        obj.addObject(@"a").addObject(@"b").addObject(@"c").addObject(@"d").addObject(@"e");
        obj.removeLastObj().removeObjAtIndex(1).insertObjAtIndex(@"f", 3);
        obj.exchangeObjAtIndexWithIndex(2,3).replaceObjsInRangeWithObjsFromArray(NSMakeRange(1, 2), @[@"z", @"k"]);
        obj.removeObjInRange(@"c" ,NSMakeRange(0, 2)).addObjsFromArray(@[@"t", @"p", @"l"]);
        NSLog(@"%@", obj.componentsJoinByStr(@"."));
    }];
}

- (void)NSDictionary {
    [NSDictionary createWithDicdionary:@{@"a" :@"1", @"b" :@"2", @"c" :@"3", @"d" :@"3"} :^(NSDictionary *obj) {
        NSLog(@"%@", obj.allKeysForObject(@"3"));
        NSLog(@"%@", obj.objectForKey(@"a"));
    }];
    
    [NSMutableDictionary create:^(NSMutableDictionary *obj) {
        obj.setDictionary(@{@"a" :@"1", @"b" :@"2", @"c" :@"3", @"d" :@"3"});
        obj.setObjectForKey(@"4", @"e").setObjectForKey(@"1", @"f").setObjectForKey(@"5", @"g");
        obj.removeObjectForKey(@"b").removeObjsForKeys(@[@"e", @"g"]);
        NSLog(@"%@", obj);
    }];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"滚");
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.Text([NSString stringWithFormat:@"%ld", indexPath.row]);
    return cell;
}
@end
