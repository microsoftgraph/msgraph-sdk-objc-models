// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphImportedWindowsAutopilotDeviceIdentity()
{
    NSString* _assignedUserPrincipalName;
    NSString* _groupTag;
    NSString* _hardwareIdentifier;
    NSString* _importId;
    NSString* _productKey;
    NSString* _serialNumber;
    MSGraphImportedWindowsAutopilotDeviceIdentityState* _state;
}
@end

@implementation MSGraphImportedWindowsAutopilotDeviceIdentity

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.importedWindowsAutopilotDeviceIdentity";
    }
    return self;
}
- (NSString*) assignedUserPrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"assignedUserPrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"assignedUserPrincipalName"];
}

- (void) setAssignedUserPrincipalName: (NSString*) val
{
    self.dictionary[@"assignedUserPrincipalName"] = val;
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

- (NSString*) hardwareIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"hardwareIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"hardwareIdentifier"];
}

- (void) setHardwareIdentifier: (NSString*) val
{
    self.dictionary[@"hardwareIdentifier"] = val;
}

- (NSString*) importId
{
    if([[NSNull null] isEqual:self.dictionary[@"importId"]])
    {
        return nil;
    }   
    return self.dictionary[@"importId"];
}

- (void) setImportId: (NSString*) val
{
    self.dictionary[@"importId"] = val;
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

- (MSGraphImportedWindowsAutopilotDeviceIdentityState*) state
{
    if(!_state){
        _state = [[MSGraphImportedWindowsAutopilotDeviceIdentityState alloc] initWithDictionary: self.dictionary[@"state"]];
    }
    return _state;
}

- (void) setState: (MSGraphImportedWindowsAutopilotDeviceIdentityState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}


@end
