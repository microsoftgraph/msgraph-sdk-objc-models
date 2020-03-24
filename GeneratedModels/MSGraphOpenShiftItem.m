// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOpenShiftItem()
{
    int32_t _openSlotCount;
}
@end

@implementation MSGraphOpenShiftItem

- (int32_t) openSlotCount
{
    _openSlotCount = [self.dictionary[@"openSlotCount"] intValue];
    return _openSlotCount;
}

- (void) setOpenSlotCount: (int32_t) val
{
    _openSlotCount = val;
    self.dictionary[@"openSlotCount"] = @(val);
}

@end
