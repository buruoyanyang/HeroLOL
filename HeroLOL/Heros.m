//
//  Heros.m
//  HeroLOL
//
//  Created by XiaoFeng on 16/1/18.
//  Copyright © 2016年 XiaoFeng. All rights reserved.
//

#import "Heros.h"

@implementation Heros

-(instancetype)initWithDic:(NSDictionary *)dic
{
    if(self = [super init])
    {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}
+(instancetype)herosWithDic:(NSDictionary *)dic
{
    return [[self alloc]initWithDic:dic];
}

+(NSArray *)herosList
{
    //加载plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"heros" ofType:@"plist"];
    NSArray *dicArray = [NSArray arrayWithContentsOfFile:path];
    
    //字典转模型
    NSMutableArray *tempArray = [NSMutableArray array];
    for (NSDictionary *dic in dicArray) {
        Heros *hero = [Heros herosWithDic:dic];
        [tempArray addObject:hero];
    }
    return tempArray;
}

@end
