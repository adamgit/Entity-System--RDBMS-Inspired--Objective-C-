#import <UIKit/UIKit.h>

#import "EntityManager.h"

/**
 * Standard design: c.f. http://entity-systems.wikidot.com/rdbms-with-code-in-systems
 */

@interface System : NSObject
{

}

@property(nonatomic,retain) NSMutableArray *allEntities;

@property(nonatomic,retain) EntityManager *em;

-(void) addEntity:(uint) eid;
-(void) removeEntity:(uint) eid;

-(void) processOneGameTick;

@end
