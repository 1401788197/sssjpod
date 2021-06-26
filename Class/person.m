//
//  ViewController.m
//  test
//
//  Created by shengjie on 2021/3/11.
//

#import "ViewController.h"

@interface person ()

@end

@implementation person

- (void)viewDidLoad {
    [super viewDidLoad];
    for (int i = 0; i<20000; i++) {
        [[[NSThread alloc]initWithTarget:self selector:@selector(test) object:nil] start];
    }
    
    // Do any additional setup after loading the view.
}
- (void)test{
    NSLog(@"%@",[NSThread currentThread]);
    dispatch_async(dispatch_get_main_queue(), ^{
        self.view.backgroundColor = [UIColor colorWithRed:random()%50/255.0 green:random()%50/255.0 blue:random()%50/255.0 alpha:1];
    });

}

@end
