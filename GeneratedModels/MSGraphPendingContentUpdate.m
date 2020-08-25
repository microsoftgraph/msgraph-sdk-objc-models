// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPendingContentUpdate()
{
    NSDate* _queuedDateTime;
}
@end

@implementation MSGraphPendingContentUpdate

- (NSDate*) queuedDateTime
{
    if(!_queuedDateTime){
        _queuedDateTime = [NSDate ms_dateFromString: self.dictionary[@"queuedDateTime"]];
    }
    return _queuedDateTime;
}

- (void) setQueuedDateTime: (NSDate*) val
{
    _queuedDateTime = val;
    self.dictionary[@"queuedDateTime"] = [val ms_toString];
}

@end
