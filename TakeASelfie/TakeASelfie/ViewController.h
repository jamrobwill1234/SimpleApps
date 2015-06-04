//
//  ViewController.h
//  TakeASelfie
//
//  Created by James Williams on 6/3/15.
//  Copyright (c) 2015 James Williams. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property(nonatomic) UIImage * original; 
@property (weak, nonatomic) IBOutlet UIImageView *unfilteredImageView;

@end

