//
//  MCGPSController.m
//  My Compass
//
//  Created by EarthNC on 7/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MCGPSController.h"

@implementation MCGPSController 
@synthesize locationManager;

- (id) init {
  self = [super init];
  if (self) {
    // do stuff
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self; // send loc updates to myself
  }
  return self;
}


- (void)locationManager:(CLLocationManager *)manager 
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation {
  [[NSNotificationCenter defaultCenter]postNotificationName:@"NEW_LOCATION" object:newLocation];  
}


- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error {
  
}



@end
