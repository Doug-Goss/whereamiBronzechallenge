//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Doug Goss on 1/28/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import "WhereamiViewController.h"

@interface WhereamiViewController ()

@end

@implementation WhereamiViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    locationManager = [[CLLocationManager alloc] init];
    
    [locationManager setDelegate:self];
    
    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    
    [locationManager startUpdatingLocation];
}

-(void)locationManager:(CLLocationManager *)manager
        didUpdateLocations:(NSArray *)locations
{
    CLLocation *myLocation= [locations objectAtIndex:0];
    NSLog(@"%@", myLocation);
    [locationManager allowDeferredLocationUpdatesUntilTraveled:(CLLocationDistance)50 timeout:(NSTimeInterval)CLTimeIntervalMax];
}

-(void)locationManager:(CLLocationManager *)manager
         didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

- (void)dealloc
{
    [locationManager setDelegate:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
