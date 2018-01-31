//
//  ViewController.m
//  FileJala
//
//  Created by manuel on 31/1/18.
//  Copyright © 2018 manuel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonPresse:(id)sender {
    NSString *imagePath = @"https://sb-communicate-files-dev.s3.ap-southeast-2.amazonaws.com/96152932-4d66-4658-8881-5a44eb335e91/df859e10-0021-4ede-9b5a-6a2f9f59ab09/ac482e98-c793-4f77-b9a0-eee51c267d38/81d8c3be-8763-4cc8-a6a6-7110a7c6a379?AWSAccessKeyId=AKIAJJ2ARGESDYATUREA&Expires=1517440268&Signature=EYBDMVKprcJFysiQNztV1m8XlQw%3D&response-content-disposition=attachment%3B%20filename%3Dtest-png.png";
    
//    NSURL *url = [NSURL URLWithString:imagePath];
    
    NSURL* url = [NSURL URLWithString:[imagePath stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSLog(@"tha url :%@", url);
    
    NSData *data = [NSData dataWithContentsOfURL:url];
    self.imagen.image = [[UIImage alloc] initWithData:data];
}

@end
