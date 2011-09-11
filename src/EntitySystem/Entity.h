#import <Foundation/Foundation.h>


#import "Component.h"
#import "AllComponents.h"
#import "Entitymanager.h"

@interface Entity : NSObject
{
	
}

@property(nonatomic, retain) EntityManager *em;

@property(nonatomic) int eid;

-(void) add:(Component*) newComponent;
-(Component*) v:(ComponentType) componentType;

@end