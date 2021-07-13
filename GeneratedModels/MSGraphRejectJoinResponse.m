// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRejectJoinResponse()
{
    MSGraphRejectReason* _reason;
}
@end

@implementation MSGraphRejectJoinResponse

- (MSGraphRejectReason*) reason
{
    if(!_reason){
        _reason = [self.dictionary[@"reason"] toMSGraphRejectReason];
    }
    return _reason;
}

- (void) setReason: (MSGraphRejectReason*) val
{
    _reason = val;
    self.dictionary[@"reason"] = val;
}

@end
