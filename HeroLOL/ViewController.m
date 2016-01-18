//
//  ViewController.m
//  HeroLOL
//
//  Created by XiaoFeng on 16/1/18.
//  Copyright © 2016年 XiaoFeng. All rights reserved.
//

#import "ViewController.h"
#include "Heros.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong) NSArray *heroes;
@end

@implementation ViewController


-(BOOL)prefersStatusBarHidden
{
    return YES;
}

-(NSArray *)heroes
{
    if (_heroes == nil) {
        _heroes = [Heros herosList];
    }
    return _heroes;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //通过连线设置数据源
    
}

#pragma mark -数据源方法
//-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 1;
//}

//返回每组的数据量
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.heroes.count;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    UITableViewCell *cell = [[UITableViewCell alloc]init];
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    Heros *hero = self.heroes[indexPath.row];
    cell.textLabel.text = hero.name;
    cell.detailTextLabel.text = hero.intro;
    cell.imageView.image = [UIImage imageNamed:hero.icon];
    //设置cell的附属物
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
