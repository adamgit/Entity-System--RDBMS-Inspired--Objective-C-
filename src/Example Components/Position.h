#import <Foundation/Foundation.h>

#import "Component.h"

@interface Position : Component

@property( nonatomic ) float x, y;

- (id)initWithX:(float) x andY:(float) y;

@end