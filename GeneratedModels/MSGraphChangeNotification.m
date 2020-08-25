// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChangeNotification()
{
    NSString* _changeNotificationId;
    NSString* _subscriptionId;
    NSDate* _subscriptionExpirationDateTime;
    NSString* _clientState;
    MSGraphChangeType* _changeType;
    NSString* _resource;
    NSString* _tenantId;
    MSGraphResourceData* _resourceData;
}
@end

@implementation MSGraphChangeNotification

- (NSString*) changeNotificationId
{
    if([[NSNull null] isEqual:self.dictionary[@"id"]])
    {
        return nil;
    }   
    return self.dictionary[@"id"];
}

- (void) setChangeNotificationId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (NSString*) subscriptionId
{
    return self.dictionary[@"subscriptionId"];
}

- (void) setSubscriptionId: (NSString*) val
{
    self.dictionary[@"subscriptionId"] = val;
}

- (NSDate*) subscriptionExpirationDateTime
{
    if(!_subscriptionExpirationDateTime){
        _subscriptionExpirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"subscriptionExpirationDateTime"]];
    }
    return _subscriptionExpirationDateTime;
}

- (void) setSubscriptionExpirationDateTime: (NSDate*) val
{
    _subscriptionExpirationDateTime = val;
    self.dictionary[@"subscriptionExpirationDateTime"] = [val ms_toString];
}

- (NSString*) clientState
{
    if([[NSNull null] isEqual:self.dictionary[@"clientState"]])
    {
        return nil;
    }   
    return self.dictionary[@"clientState"];
}

- (void) setClientState: (NSString*) val
{
    self.dictionary[@"clientState"] = val;
}

- (MSGraphChangeType*) changeType
{
    if(!_changeType){
        _changeType = [self.dictionary[@"changeType"] toMSGraphChangeType];
    }
    return _changeType;
}

- (void) setChangeType: (MSGraphChangeType*) val
{
    _changeType = val;
    self.dictionary[@"changeType"] = val;
}

- (NSString*) resource
{
    return self.dictionary[@"resource"];
}

- (void) setResource: (NSString*) val
{
    self.dictionary[@"resource"] = val;
}

- (NSString*) tenantId
{
    return self.dictionary[@"tenantId"];
}

- (void) setTenantId: (NSString*) val
{
    self.dictionary[@"tenantId"] = val;
}

- (MSGraphResourceData*) resourceData
{
    if(!_resourceData){
        _resourceData = [[MSGraphResourceData alloc] initWithDictionary: self.dictionary[@"resourceData"]];
    }
    return _resourceData;
}

- (void) setResourceData: (MSGraphResourceData*) val
{
    _resourceData = val;
    self.dictionary[@"resourceData"] = val;
}

@end
