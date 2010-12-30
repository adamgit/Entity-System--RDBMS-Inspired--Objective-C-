#import <Foundation/Foundation.h>

#import "Component.h"
#import "AllComponents.h"

/**
 * Standard design: c.f. http://entity-systems.wikidot.com/rdbms-with-code-in-systems
 */
@interface EntityManager : NSObject
{
	
	/** Implementation specific: shortcut to keep new IDs unique */
	uint lowestUnassignedEntityID;
}

@property(nonatomic,retain) NSMutableArray *allEntities;
@property(nonatomic,retain) NSDictionary *componentsByType;

-(void) initialize;

-(uint) createEntity;
-(void) killEntity:(uint) e;

-(Component*) getComponent:(ComponentType) componentType forEntity:(uint) eid;
-(void) addComponent:(Component*) newComponent toEntity:(uint) eid;

@end