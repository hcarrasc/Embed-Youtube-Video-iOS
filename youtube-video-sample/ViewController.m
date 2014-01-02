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

    NSString *html = [NSString stringWithFormat:@"<html><body><iframe type=\"application/x-shockwave-flash\" data=\"http://www.chilevision.cl/jwplayer/jwplayer.flash.swf\" width=\"%f\" height=\"%d\" bgcolor=\"#000000\" id=\"senal_online\" name=\"senal_online\" tabindex=\"0\" style=\"position: absolute;\"><param name=\"allowfullscreen\" value=\"true\"><param name=\"allowscriptaccess\" value=\"always\"><param name=\"seamlesstabbing\" value=\"true\"><param name=\"wmode\" value=\"opaque\"></iframe></body></html>", [[UIScreen mainScreen] bounds].size.width-30, 150];
    [myWebView loadHTMLString:html baseURL:nil];
/*
     NSString *html = [NSString stringWithFormat:@"<html><body><iframe class=\"youtube-player\" type=\"text/html\" width=\"%f\" height=\"%d\" src=\"http://www.youtube.com/embed/Ur4OEBZOAXs?HD=1;rel=0;showinfo=1\" allowfullscreen frameborder=\"0\" rel=nofollow></iframe></body></html>", [[UIScreen mainScreen] bounds].size.width-30, 150];
     [myWebView loadHTMLString:html baseURL:nil];
*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}



@end
