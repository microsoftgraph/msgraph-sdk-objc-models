// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphLicenseAssignmentState()
{
    NSString* _assignedByGroup;
    NSArray* _disabledPlans;
    NSString* _error;
    NSDate* _lastUpdatedDateTime;
    NSString* _skuId;
    NSString* _state;
}
@end

@implementation MSGraphLicenseAssignmentState

- (NSString*) assignedByGroup
{
    if([[NSNull null] isEqual:self.dictionary[@"assignedByGroup"]])
    {
        return nil;
    }   
    return self.dictionary[@"assignedByGroup"];
}

- (void) setAssignedByGroup: (NSString*) val
{
    self.dictionary[@"assignedByGroup"] = val;
}

- (NSArray*) disabledPlans
{
    if([[NSNull null] isEqual:self.dictionary[@"disabledPlans"]])
    {
        return nil;
    }   
    return self.dictionary[@"disabledPlans"];
}

- (void) setDisabledPlans: (NSArray*) val
{
    self.dictionary[@"disabledPlans"] = val;
}

- (NSString*) error
{
    if([[NSNull null] isEqual:self.dictionary[@"error"]])
    {
        return nil;
    }   
    return self.dictionary[@"error"];
}

- (void) setError: (NSString*) val
{
    self.dictionary[@"error"] = val;
}

- (NSDate*) lastUpdatedDateTime
{
    if(!_lastUpdatedDateTime){
        _lastUpdatedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastUpdatedDateTime"]];
    }
    return _lastUpdatedDateTime;
}

- (void) setLastUpdatedDateTime: (NSDate*) val
{
    _lastUpdatedDateTime = val;
    self.dictionary[@"lastUpdatedDateTime"] = [val ms_toString];
}

- (NSString*) skuId
{
    if([[NSNull null] isEqual:self.dictionary[@"skuId"]])
    {
        return nil;
    }   
    return self.dictionary[@"skuId"];
}

- (void) setSkuId: (NSString*) val
{
    self.dictionary[@"skuId"] = val;
}

- (NSString*) state
{
    if([[NSNull null] isEqual:self.dictionary[@"state"]])
    {
        return nil;
    }   
    return self.dictionary[@"state"];
}

- (void) setState: (NSString*) val
{
    self.dictionary[@"state"] = val;
}

@end
