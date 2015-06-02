//
//  ViewController.m
//  RolloutTest
//
//  Created by Omar Guzmán on 6/2/15.
//  Copyright (c) 2015 crowdint. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lblHello;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    lblHello.text = @"Hello Rollout Test!";
    
    UIButton * btnOk = [[UIButton alloc] initWithFrame:CGRectMake(170, 120, 80, 50)];
    [btnOk setTitle:@"Tap Me!" forState:UIControlStateNormal];
    [btnOk setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btnOk addTarget:self action:@selector(doTapMe:) forControlEvents:UIControlEventTouchUpInside];
    btnOk.center = self.view.center;
    [self.view addSubview:btnOk];
}

-(void)doTapMe:(id)sender
{
    NSDictionary * tmpDict = [[NSDictionary alloc] initWithObjects:@[@"obj1"] forKeys:@[@"obj1"]];
    [tmpDict setValue:@"Hello" forKey:@"hello"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
