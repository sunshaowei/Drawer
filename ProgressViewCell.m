//
//  ProgressViewCell.m
//  pvProgressV
//
//  Created by nankang on 2017/12/4.
//  Copyright © 2017年 nankang. All rights reserved.
//

#import "ProgressViewCell.h"




@interface ProgressViewCell ()
@property (weak, nonatomic) IBOutlet UIProgressView *progressV;

@end


@implementation ProgressViewCell


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setDataDic:(NSDictionary *)dic{
    [self.progressV setProgress:[dic[@"score"]floatValue] animated:YES];
}
@end
