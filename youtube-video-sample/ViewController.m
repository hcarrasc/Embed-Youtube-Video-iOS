//
//  ViewController.m
//  youtube-video-sample
//
//  Created by Hector Carrasco on 08-12-13.
//  Copyright (c) 2013 Hector Carrasco. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myWebView;

- (void)viewDidLoad
{
    [super viewDidLoad];


     NSString *html = [NSString stringWithFormat:@"<html><body><iframe class=\"youtube-player\" type=\"text/html\" width=\"%f\" height=\"%d\" src=\"http://www.youtube.com/embed/Ur4OEBZOAXs?HD=1;rel=0;showinfo=1\" allowfullscreen frameborder=\"0\" rel=nofollow></iframe></body></html>", [[UIScreen mainScreen] bounds].size.width-30, 150];
     [myWebView loadHTMLString:html baseURL:nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}



@end
