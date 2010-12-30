#import "EntityManager.h"

/** Implemenation-specific: Objective-C doesn't fully support private methods, this is the standard workaround
 */
@interface EntityManager()
-(uint) generateNewEntityID;
@end


@implementation EntityManager

@synthesize allEntities;
@synthesize componentsByType;


/**
 * Implementation specific: Objective-C's "designated initializer" (even though Apple frequently breaks the Obj-C standard,
 * we're going to adhere to it...)
 */
-(id) init
{
	if( (self = [super init]) )
	{
		[self initialize];
	}
	return self;
}

-(void) initialize
{
	lowestUnassignedEntityID = 1; // because C uses integer-0 to be null-pointer
	self.allEntities = [NSMutableArray array];
	self.componentsByType = [NSMutableDictionary dictionary];
}

-(uint) createEntity
{
	@synchronized( self ) // prevent it generating two entities with same ID at once
	{
		uint newID = [self generateNewEntityID];
		
		if( newID < 1 )
		{
			/**
			 Fatal error...
			 */
			return 0;
		}
		else
		{
			[self.allEntities addObject:[NSNumber numberWithUnsignedInt:newID]];
		
			return newID;
		}
	}
}

-(uint) generateNewEntityID
{
	@synchronized( self ) // prevent it generating two entities with same ID at once
	{
	if( lowestUnassignedEntityID < UINT32_MAX )
	{
		return lowestUnassignedEntityID++;
	}
	else
	{
		for( uint i=1; i<UINT32_MAX; i++ )
		{
			NSNumber *iNumber = [NSNumber numberWithUnsignedInt:i];
			
			if( ! [self.allEntities containsObject:iNumber] )
				return i;
		}
		
		NSLog(@"[%@] ERROR: no available Entity IDs; too many entities! (more than %i)", [self class], INT32_MAX );
		return 0;
	}
	}
}

-(void) killEntity:(uint) e
{
	[self.allEntities removeObject:[NSNumber numberWithUnsignedInt:e]];
}

-(Component*) getComponent:(ComponentType) componentType forEntity:(uint) eid
{
	NSDictionary *componentsByEntity = [componentsByType objectForKey:[NSNumber numberWithUnsignedInt:componentType]];
	
	Component *result = [componentsByEntity objectForKey:[NSNumber numberWithUnsignedInt:eid]];
	
	return result;
}

-(void) addComponent:(Component*) newComponent toEntity:(uint) eid
{
	NSMutableDictionary *componentsByEntity = [componentsByType objectForKey:[NSNumber numberWithUnsignedInt:newComponent.type]];
	
	[componentsByEntity setObject:newComponent forKey:[NSNumber numberWithUnsignedInt:eid]];
}

@end