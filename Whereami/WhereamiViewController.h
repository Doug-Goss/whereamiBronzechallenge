//
//  WhereamiViewController.h
//  Whereami
//
//  Created by Doug Goss on 1/28/14.
//  Copyright (c) 2014 Doug Goss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface WhereamiViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}


@end
