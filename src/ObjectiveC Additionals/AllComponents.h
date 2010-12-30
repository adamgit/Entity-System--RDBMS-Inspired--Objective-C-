#import <Foundation/Foundation.h>


/**
 * Implementation-specific
 *
 * This exists to hold the ComponentType enum, because C won't allow you to forward-declare enums
 */
typedef enum ComponentType
{
	ComponentTypePosition // a single example, for the component using the "Position" class
} ComponentType;

@interface AllComponents : NSObject
{
	
}

@end