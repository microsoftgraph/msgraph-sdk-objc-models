// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPendingOperations()
{
    MSGraphPendingContentUpdate* _pendingContentUpdate;
}
@end

@implementation MSGraphPendingOperations

- (MSGraphPendingContentUpdate*) pendingContentUpdate
{
    if(!_pendingContentUpdate){
        _pendingContentUpdate = [[MSGraphPendingContentUpdate alloc] initWithDictionary: self.dictionary[@"pendingContentUpdate"]];
    }
    return _pendingContentUpdate;
}

- (void) setPendingContentUpdate: (MSGraphPendingContentUpdate*) val
{
    _pendingContentUpdate = val;
    self.dictionary[@"pendingContentUpdate"] = val;
}

@end
