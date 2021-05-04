// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeletedWindowsAutopilotDeviceState()
{
    MSGraphWindowsAutopilotDeviceDeletionState* _deletionState;
    NSString* _deviceRegistrationId;
    NSString* _errorMessage;
    NSString* _serialNumber;
}
@end

@implementation MSGraphDeletedWindowsAutopilotDeviceState

- (MSGraphWindowsAutopilotDeviceDeletionState*) deletionState
{
    if(!_deletionState){
        _deletionState = [self.dictionary[@"deletionState"] toMSGraphWindowsAutopilotDeviceDeletionState];
    }
    return _deletionState;
}

- (void) setDeletionState: (MSGraphWindowsAutopilotDeviceDeletionState*) val
{
    _deletionState = val;
    self.dictionary[@"deletionState"] = val;
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

- (NSString*) errorMessage
{
    if([[NSNull null] isEqual:self.dictionary[@"errorMessage"]])
    {
        return nil;
    }   
    return self.dictionary[@"errorMessage"];
}

- (void) setErrorMessage: (NSString*) val
{
    self.dictionary[@"errorMessage"] = val;
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

@end
