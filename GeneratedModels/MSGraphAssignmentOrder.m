// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAssignmentOrder()
{
    NSArray* _order;
}
@end

@implementation MSGraphAssignmentOrder

- (NSArray*) order
{
    if([[NSNull null] isEqual:self.dictionary[@"order"]])
    {
        return nil;
    }   
    return self.dictionary[@"order"];
}

- (void) setOrder: (NSArray*) val
{
    self.dictionary[@"order"] = val;
}

@end
