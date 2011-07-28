//
//  HelloWorldLayer.m
//  PawAppsExample_SimpleAudioEngine
//
//  Created by Jason Pawlak on 7/28/11.
//  Copyright Paw Apps LLC 2011. All rights reserved.
//
//  Visit http://www.pawapps.com for more tutorials!


// Import the interfaces
#import "HelloWorldLayer.h"
#import "SimpleAudioEngine.h"   // <--- Make sure you import the header

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

-(id) init
{
	if( (self=[super init])) {
        
        // This is what we are here for. First we preload the effect so that
        // it plays immediately when we touch and release the button.
        [[SimpleAudioEngine sharedEngine] preloadEffect:@"soundeffect.mp3"];
		
        // What are the dimensions of the screen
        CGSize winSize = [[CCDirector sharedDirector] winSize];
        
        // Create a button to press
        CCMenuItemLabel *miLabel = [CCMenuItemLabel itemWithLabel:[CCLabelTTF labelWithString:[NSString stringWithFormat:@"Touch me!"] fontName:@"Marker Felt" fontSize:24] target:self selector:@selector(buttonPressed)];
        
        // Create a menu for the button
        CCMenu *menu = [CCMenu menuWithItems:miLabel, nil];
        [menu setPosition:ccp(winSize.width/2, winSize.height/2)];
        
        // Add the menu to the layer
        [self addChild:menu];
		
	}
	return self;
}

-(void) buttonPressed {
    
    CCLOG(@"The button was pressed!");
    
    // Just call the sound effect, it'll play quickly since it has been preloaded
    [[SimpleAudioEngine sharedEngine] playEffect:@"soundeffect.mp3"];
    
}

- (void) dealloc
{
	[super dealloc];
}
@end
