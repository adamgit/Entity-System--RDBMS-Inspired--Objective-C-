#import <Foundation/Foundation.h>

#import "AllComponents.h"

/**
 * Standard design: c.f. http://entity-systems.wikidot.com/rdbms-with-code-in-systems
 */

@interface Component : NSObject
{
	
}

@property(nonatomic) ComponentType type;

@end