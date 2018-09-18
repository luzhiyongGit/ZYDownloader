//
//  ZYViewController.m
//  ZYDownloader
//
//  Created by luzhiyongGit on 09/13/2018.
//  Copyright (c) 2018 luzhiyongGit. All rights reserved.
//

#import "ZYViewController.h"
#import <ZYDownloader/ZYDownloader.h>

@interface ZYViewController ()

@property (weak, nonatomic) IBOutlet UIProgressView *processView;
@property (weak, nonatomic) IBOutlet UILabel *stateLabel;

@end

@implementation ZYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)startTask:(id)sender {
    // 创建task并添加到Downloader中 
    ZYDownloadTask *task = [ZYDownloadTask downloadTask:[NSURL URLWithString:@"http://dldir1.qq.com/qqfile/QQforMac/QQ_V5.4.0.dmg"]];
    [[ZYDownloader sharedInstance] addTask:task];
}

- (IBAction)pauseTask:(id)sender {
}

- (IBAction)resumeTask:(id)sender {
}

- (IBAction)cancelTask:(id)sender {
}

@end
