// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConditionalAccessDevices()
{
    MSGraphConditionalAccessFilter* _deviceFilter;
}
@end

@implementation MSGraphConditionalAccessDevices

- (MSGraphConditionalAccessFilter*) deviceFilter
{
    if(!_deviceFilter){
        _deviceFilter = [[MSGraphConditionalAccessFilter alloc] initWithDictionary: self.dictionary[@"deviceFilter"]];
    }
    return _deviceFilter;
}

- (void) setDeviceFilter: (MSGraphConditionalAccessFilter*) val
{
    _deviceFilter = val;
    self.dictionary[@"deviceFilter"] = val;
}

@end
