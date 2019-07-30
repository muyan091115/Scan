//
//  ScanViewController.h
//  Scan
//
//  Created by 蒋伟 on 2019/7/30.
//  Copyright © 2019 中国人寿. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScanViewController : UIViewController

@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) void(^hasScan)(NSString *codeInfo);

@end
