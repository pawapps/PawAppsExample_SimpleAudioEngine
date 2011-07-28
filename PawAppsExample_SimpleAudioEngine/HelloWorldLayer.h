//
//  HelloWorldLayer.h
//  PawAppsExample_SimpleAudioEngine
//
//  Created by Jason Pawlak on 7/28/11.
//  Copyright Paw Apps LLC 2011. All rights reserved.
//
//  Visit http://www.pawapps.com for more tutorials!


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayer
{
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;
-(void) buttonPressed;

@end
