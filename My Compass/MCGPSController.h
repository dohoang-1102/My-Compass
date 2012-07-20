//
//  MCGPSController.h
//  My Compass
//
//  Created by EarthNC on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MCGPSController : NSObject <CLLocationManagerDelegate> {
  
}


@property(nonatomic,strong) CLLocationManager *locationManager;

@end
