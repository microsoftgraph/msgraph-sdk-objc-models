// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsAutopilotDeviceIdentity()
{
    NSString* _addressableUserName;
    NSString* _azureActiveDirectoryDeviceId;
    NSString* _displayName;
    MSGraphEnrollmentState* _enrollmentState;
    NSString* _groupTag;
    NSDate* _lastContactedDateTime;
    NSString* _managedDeviceId;
    NSString* _manufacturer;
    NSString* _model;
    NSString* _productKey;
    NSString* _purchaseOrderIdentifier;
    NSString* _resourceName;
    NSString* _serialNumber;
    NSString* _skuNumber;
    NSString* _systemFamily;
    NSString* _userPrincipalName;
}
@end

@implementation MSGraphWindowsAutopilotDeviceIdentity

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windowsAutopilotDeviceIdentity";
    }
    return self;
}
- (NSString*) addressableUserName
{
    if([[NSNull null] isEqual:self.dictionary[@"addressableUserName"]])
    {
        return nil;
    }   
    return self.dictionary[@"addressableUserName"];
}

- (void) setAddressableUserName: (NSString*) val
{
    self.dictionary[@"addressableUserName"] = val;
}

- (NSString*) azureActiveDirectoryDeviceId
{
    if([[NSNull null] isEqual:self.dictionary[@"azureActiveDirectoryDeviceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"azureActiveDirectoryDeviceId"];
}

- (void) setAzureActiveDirectoryDeviceId: (NSString*) val
{
    self.dictionary[@"azureActiveDirectoryDeviceId"] = val;
}

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (MSGraphEnrollmentState*) enrollmentState
{
    if(!_enrollmentState){
        _enrollmentState = [self.dictionary[@"enrollmentState"] toMSGraphEnrollmentState];
    }
    return _enrollmentState;
}

- (void) setEnrollmentState: (MSGraphEnrollmentState*) val
{
    _enrollmentState = val;
    self.dictionary[@"enrollmentState"] = val;
}

- (NSString*) groupTag
{
    if([[NSNull null] isEqual:self.dictionary[@"groupTag"]])
    {
        return nil;
    }   
    return self.dictionary[@"groupTag"];
}

- (void) setGroupTag: (NSString*) val
{
    self.dictionary[@"groupTag"] = val;
}

- (NSDate*) lastContactedDateTime
{
    if(!_lastContactedDateTime){
        _lastContactedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastContactedDateTime"]];
    }
    return _lastContactedDateTime;
}

- (void) setLastContactedDateTime: (NSDate*) val
{
    _lastContactedDateTime = val;
    self.dictionary[@"lastContactedDateTime"] = [val ms_toString];
}

- (NSString*) managedDeviceId
{
    if([[NSNull null] isEqual:self.dictionary[@"managedDeviceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"managedDeviceId"];
}

- (void) setManagedDeviceId: (NSString*) val
{
    self.dictionary[@"managedDeviceId"] = val;
}

- (NSString*) manufacturer
{
    if([[NSNull null] isEqual:self.dictionary[@"manufacturer"]])
    {
        return nil;
    }   
    return self.dictionary[@"manufacturer"];
}

- (void) setManufacturer: (NSString*) val
{
    self.dictionary[@"manufacturer"] = val;
}

- (NSString*) model
{
    if([[NSNull null] isEqual:self.dictionary[@"model"]])
    {
        return nil;
    }   
    return self.dictionary[@"model"];
}

- (void) setModel: (NSString*) val
{
    self.dictionary[@"model"] = val;
}

- (NSString*) productKey
{
    if([[NSNull null] isEqual:self.dictionary[@"productKey"]])
    {
        return nil;
    }   
    return self.dictionary[@"productKey"];
}

- (void) setProductKey: (NSString*) val
{
    self.dictionary[@"productKey"] = val;
}

- (NSString*) purchaseOrderIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"purchaseOrderIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"purchaseOrderIdentifier"];
}

- (void) setPurchaseOrderIdentifier: (NSString*) val
{
    self.dictionary[@"purchaseOrderIdentifier"] = val;
}

- (NSString*) resourceName
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceName"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceName"];
}

- (void) setResourceName: (NSString*) val
{
    self.dictionary[@"resourceName"] = val;
}

- (NSString*) serialNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"serialNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"serialNumber"];
}

- (void) setSerialNumber: (NSString*) val
{
    self.dictionary[@"serialNumber"] = val;
}

- (NSString*) skuNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"skuNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"skuNumber"];
}

- (void) setSkuNumber: (NSString*) val
{
    self.dictionary[@"skuNumber"] = val;
}

- (NSString*) systemFamily
{
    if([[NSNull null] isEqual:self.dictionary[@"systemFamily"]])
    {
        return nil;
    }   
    return self.dictionary[@"systemFamily"];
}

- (void) setSystemFamily: (NSString*) val
{
    self.dictionary[@"systemFamily"] = val;
}

- (NSString*) userPrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"userPrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userPrincipalName"];
}

- (void) setUserPrincipalName: (NSString*) val
{
    self.dictionary[@"userPrincipalName"] = val;
}


@end
