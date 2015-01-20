//
//  ViewController.m
//  TestOnly
//
//  Created by Sanad on 1/20/15.
//  Copyright (c) 2015 SHL Info Systems. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated{
    UIImage *image = [UIImage imageNamed:@"Clinical1.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [self.scrollView addSubview:imageView];
    self.scrollView.contentSize = image.size;
    self.scrollView.delegate = self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"offset: %@", NSStringFromCGPoint(scrollView.contentOffset));
}

@end
