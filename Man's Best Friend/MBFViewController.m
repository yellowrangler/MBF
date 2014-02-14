//
//  MBFViewController.m
//  Man's Best Friend
//
//  Created by Tarrant Cutler on 2/6/14.
//  Copyright (c) 2014 Tarrant Cutler. All rights reserved.
//

#import "MBFViewController.h"
#import "MBFDog.h"
#import "MBFPuppy.h"

@interface MBFViewController ()

@end

@implementation MBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.name = @"Kato";
    myDog.breed = @"Norwegian Elk Hound";
    myDog.age = 1;
    
    MBFDog *mySecondDog = [[MBFDog alloc] init];
    mySecondDog.name = @"Wishbone";
    mySecondDog.breed = @"Jack Russell Terrier";
    mySecondDog.image = [UIImage imageNamed:@"jackrussel.jpeg"];
    mySecondDog.age = 1;
    
    MBFDog *myThirdDog = [[MBFDog alloc] init];
    myThirdDog.name = @"Winston";
    myThirdDog.breed = @"Border Collie";
    myThirdDog.image = [UIImage imageNamed:@"bordercollie.jpeg"];
    myThirdDog.age = 1;
    
    MBFDog *myFourthDog = [[MBFDog alloc] init];
    myFourthDog.name = @"Harley";
    myFourthDog.breed = @"Black Lab";
    myFourthDog.image = [UIImage imageNamed:@"blacklab.jpeg"];
    myFourthDog.age = 1;
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:mySecondDog];
    [self.myDogs addObject:myThirdDog];
    [self.myDogs addObject:myFourthDog];
//    NSLog(@"%@",self.myDogs);
    
    
    self.currentDog = [self.myDogs count] + 1;
    
//    [myDog barkANumberOfTimes:5];
//    
//    NSLog(@"My dog's breed is %@",myDog.breed);
//    [myDog changeBreedToWereWolf];
//    NSLog(@"My dog's breed is %@",myDog.breed);

//    int dogYears = [myDog ageInDogYearsFromAge:4];
//    NSLog(@"%i", dogYears);
    
    MBFPuppy *littlePuppy = [[MBFPuppy alloc] init];
//    [littlePuppy givePuppyEyes];
    [littlePuppy bark];
    littlePuppy.name = @"Baxter";
    littlePuppy.breed=@"Portugese Water Dog";
    littlePuppy.image=[UIImage imageNamed:@"portugesewaterdogpuppy.jpeg"];
    [self.myDogs addObject:littlePuppy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) printHelloWord
{
    NSLog(@"Hello World");
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender
{
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    
    if (randomIndex == self.currentDog)
    {
        if (randomIndex < (numberOfDogs - 1) )
            randomIndex++;
        else
            randomIndex = 0;
        
    }
    self.currentDog = randomIndex;
    
    MBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;

    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
    
    sender.title = @"And Another";
    
}
@end
