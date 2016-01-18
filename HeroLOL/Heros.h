//
//  Heros.h
//  HeroLOL
//
//  Created by XiaoFeng on 16/1/18.
//  Copyright © 2016年 XiaoFeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Heros : NSObject
@property(nonatomic,copy) NSString *icon;
@property(nonatomic,copy) NSString *intro;
@property(nonatomic,copy) NSString *name;

-(instancetype)initWithDic:(NSDictionary *)dic;
+(instancetype)herosWithDic:(NSDictionary *)dic;

+(NSArray *) herosList;


@end
