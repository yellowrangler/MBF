//
//  MBFViewController.h
//  Man's Best Friend
//
//  Created by Tarrant Cutler on 2/6/14.
//  Copyright (c) 2014 Tarrant Cutler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MBFViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int currentDog;

-(void) printHelloWord;
- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;

@end
