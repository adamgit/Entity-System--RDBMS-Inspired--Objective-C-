#import "Entity.h"


@implementation Entity

@synthesize es;

@synthesize eid;

-(void) add:(Component*) newComponent
{
	[es addComponent:newComponent toEntity:eid];
}

-(Component*) v:(ComponentType) componentType
{
	return [es getComponentOfType:componentType forEntity:eid];
}

@end