//
//  ViewController.m
//  pvProgressV
//
//  Created by nankang on 2017/12/4.
//  Copyright © 2017年 nankang. All rights reserved.
//

#import "ViewController.h"
#import "ProgressViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property NSMutableArray*progressArrays;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _progressArrays= [NSMutableArray arrayWithCapacity:30];
    for (int i= 0; i<100; i++) {
        CGFloat randF=  (float)(1+arc4random()%99)/100;
        NSDictionary*randDic= [NSDictionary dictionaryWithObject:[NSString stringWithFormat:@"%.2f",randF] forKey:@"score"];
        [_progressArrays addObject:randDic];
    }
    
    _tableView.dataSource=self;
    
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString*cellid=@"ProgressViewCell";
    ProgressViewCell*cell=[tableView dequeueReusableCellWithIdentifier:cellid];
    if (cell== nil) {
        cell= (ProgressViewCell*)[[[NSBundle mainBundle]loadNibNamed:cellid owner:self options:nil] lastObject];
    }
    [cell setDataDic:_progressArrays[indexPath.row]];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  _progressArrays.count;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"=============%s=========%i",__func__,__LINE__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
