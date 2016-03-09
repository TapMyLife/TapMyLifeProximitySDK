//
//  TapTest.m
//  TapMyLifeProximitySDK
//
//  Created by Ivan Vecchi on 09/03/16.
//  Copyright © 2016 TapMyLife. All rights reserved.
//

#import "TapTest.h"

@implementation TapTest

-(void) fnLog:(NSString *) p_Log{
    NSLog(@"TEST %@", p_Log);
}


- (void)fnShowMap:(id) p_Self
{
    
    m_ViewPadre = p_Self;
    __unused Indoors *indoors = [[Indoors alloc] initWithLicenseKey:@"860d0228-2c8d-4bae-b924-22a205b8c404" andServiceDelegate:self]; // REPLACE WITH YOUR API KEY
    
    _indoorsSurfaceViewController = [[ISIndoorsSurfaceViewController alloc] init];
    _indoorsSurfaceViewController.delegate = self;
    
    [self addSurfaceAsChildViewController];
    
    [_indoorsSurfaceViewController loadBuildingWithBuildingId:592659335]; // REPLACE WITH YOUR BUILDING ID
}


- (void)addSurfaceAsChildViewController
{
    [((UIViewController *)m_ViewPadre) addChildViewController:_indoorsSurfaceViewController];
    _indoorsSurfaceViewController.view.frame = ((UIViewController *)m_ViewPadre).view.frame;
    [((UIViewController *)m_ViewPadre).view addSubview:_indoorsSurfaceViewController.view];
    [_indoorsSurfaceViewController didMoveToParentViewController:((UIViewController *)m_ViewPadre)];
}



#pragma mark - ISIndoorsSurfaceViewControllerDelegate

- (void)indoorsSurfaceViewController:(ISIndoorsSurfaceViewController *)indoorsSurfaceViewController isLoadingBuildingWithBuildingId:(NSUInteger)buildingId progress:(NSUInteger)progress
{
    NSLog(@"Building loading progress: %lu", (unsigned long)progress);
}

- (void)indoorsSurfaceViewController:(ISIndoorsSurfaceViewController *)indoorsSurfaceViewController didFinishLoadingBuilding:(IDSBuilding *)building
{
    NSLog(@"Building loaded successfully!");
}

- (void)indoorsSurfaceViewController:(ISIndoorsSurfaceViewController *)indoorsSurfaceViewController didFailLoadingBuildingWithBuildingId:(NSUInteger)buildingId error:(NSError *)error
{
    NSLog(@"Loading building failed with error: %@", error);
    
    [[[UIAlertView alloc] initWithTitle:error.localizedDescription message:error.localizedFailureReason delegate:nil cancelButtonTitle:nil otherButtonTitles:@"ok", nil] show];
}

#pragma mark - IndoorsServiceDelegate

- (void)connected
{
    
}

- (void)onError:(IndoorsError *)indoorsError
{
    
}

- (void)locationAuthorizationStatusDidChange:(IDSLocationAuthorizationStatus)status
{
    
}

- (void)bluetoothStateDidChange:(IDSBluetoothState)bluetoothState
{
    
}


@end
