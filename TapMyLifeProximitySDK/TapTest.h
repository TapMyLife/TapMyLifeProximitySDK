//
//  TapTest.h
//  TapMyLifeProximitySDK
//
//  Created by Ivan Vecchi on 09/03/16.
//  Copyright © 2016 TapMyLife. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <IndoorsSDK/IndoorsSDK.h>
@interface TapTest : NSObject <IndoorsServiceDelegate, ISIndoorsSurfaceViewControllerDelegate>
{
    id m_ViewPadre;
    ISIndoorsSurfaceViewController *_indoorsSurfaceViewController;
}



-(void) fnLog:(NSString *) p_Log;


@end
