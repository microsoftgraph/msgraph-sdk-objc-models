// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphImportedWindowsAutopilotDeviceIdentityState()
{
    int32_t _deviceErrorCode;
    NSString* _deviceErrorName;
    MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus* _deviceImportStatus;
    NSString* _deviceRegistrationId;
}
@end

@implementation MSGraphImportedWindowsAutopilotDeviceIdentityState

- (int32_t) deviceErrorCode
{
    _deviceErrorCode = [self.dictionary[@"deviceErrorCode"] intValue];
    return _deviceErrorCode;
}

- (void) setDeviceErrorCode: (int32_t) val
{
    _deviceErrorCode = val;
    self.dictionary[@"deviceErrorCode"] = @(val);
}

- (NSString*) deviceErrorName
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceErrorName"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceErrorName"];
}

- (void) setDeviceErrorName: (NSString*) val
{
    self.dictionary[@"deviceErrorName"] = val;
}

- (MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) deviceImportStatus
{
    if(!_deviceImportStatus){
        _deviceImportStatus = [self.dictionary[@"deviceImportStatus"] toMSGraphImportedWindowsAutopilotDeviceIdentityImportStatus];
    }
    return _deviceImportStatus;
}

- (void) setDeviceImportStatus: (MSGraphImportedWindowsAutopilotDeviceIdentityImportStatus*) val
{
    _deviceImportStatus = val;
    self.dictionary[@"deviceImportStatus"] = val;
}

- (NSString*) deviceRegistrationId
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceRegistrationId"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceRegistrationId"];
}

- (void) setDeviceRegistrationId: (NSString*) val
{
    self.dictionary[@"deviceRegistrationId"] = val;
}

@end
