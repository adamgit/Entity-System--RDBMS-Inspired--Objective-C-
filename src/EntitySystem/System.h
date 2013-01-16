#import <UIKit/UIKit.h>

/**
 * Standard design: c.f. http://entity-systems.wikidot.com/rdbms-with-code-in-systems
 */

@interface System : NSObject
{

}

@property(nonatomic,retain) NSMutableArray *allEntities;

-(void) addEntity:(uint) eid;
-(void) removeEntity:(uint) eid;

-(void) processOneGameTick;

@end
