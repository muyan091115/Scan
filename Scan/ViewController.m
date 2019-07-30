//
//  ViewController.m
//  Scan
//
//  Created by 蒋伟 on 2019/7/30.
//  Copyright © 2019 中国人寿. All rights reserved.
//

#import "ViewController.h"
#import "ScanViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)qrcodeScan:(id)sender {
 
    ScanViewController *vc = [[ScanViewController alloc] init];
    vc.type = @"01";
    vc.hasScan = ^(NSString *codeInfo) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:codeInfo message:@"" delegate:nil cancelButtonTitle:@"好的" otherButtonTitles:nil];
        [alertView show];
        
    };
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (IBAction)barcodeScan:(id)sender {
    
    ScanViewController *vc = [[ScanViewController alloc] init];
    vc.type = @"02";
    vc.hasScan = ^(NSString *codeInfo) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:codeInfo message:@"" delegate:nil cancelButtonTitle:@"好的" otherButtonTitles:nil];
        [alertView show];
        
    };
    [self presentViewController:vc animated:YES completion:nil];
    
}

@end
