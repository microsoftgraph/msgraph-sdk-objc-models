// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDeviceEnrollmentWindowsHelloForBusinessConfiguration()
{
    MSGraphEnablement* _enhancedBiometricsState;
    int32_t _pinExpirationInDays;
    MSGraphWindowsHelloForBusinessPinUsage* _pinLowercaseCharactersUsage;
    int32_t _pinMaximumLength;
    int32_t _pinMinimumLength;
    int32_t _pinPreviousBlockCount;
    MSGraphWindowsHelloForBusinessPinUsage* _pinSpecialCharactersUsage;
    MSGraphWindowsHelloForBusinessPinUsage* _pinUppercaseCharactersUsage;
    BOOL _remotePassportEnabled;
    BOOL _securityDeviceRequired;
    MSGraphEnablement* _state;
    BOOL _unlockWithBiometricsEnabled;
}
@end

@implementation MSGraphDeviceEnrollmentWindowsHelloForBusinessConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.deviceEnrollmentWindowsHelloForBusinessConfiguration";
    }
    return self;
}
- (MSGraphEnablement*) enhancedBiometricsState
{
    if(!_enhancedBiometricsState){
        _enhancedBiometricsState = [self.dictionary[@"enhancedBiometricsState"] toMSGraphEnablement];
    }
    return _enhancedBiometricsState;
}

- (void) setEnhancedBiometricsState: (MSGraphEnablement*) val
{
    _enhancedBiometricsState = val;
    self.dictionary[@"enhancedBiometricsState"] = val;
}

- (int32_t) pinExpirationInDays
{
    _pinExpirationInDays = [self.dictionary[@"pinExpirationInDays"] intValue];
    return _pinExpirationInDays;
}

- (void) setPinExpirationInDays: (int32_t) val
{
    _pinExpirationInDays = val;
    self.dictionary[@"pinExpirationInDays"] = @(val);
}

- (MSGraphWindowsHelloForBusinessPinUsage*) pinLowercaseCharactersUsage
{
    if(!_pinLowercaseCharactersUsage){
        _pinLowercaseCharactersUsage = [self.dictionary[@"pinLowercaseCharactersUsage"] toMSGraphWindowsHelloForBusinessPinUsage];
    }
    return _pinLowercaseCharactersUsage;
}

- (void) setPinLowercaseCharactersUsage: (MSGraphWindowsHelloForBusinessPinUsage*) val
{
    _pinLowercaseCharactersUsage = val;
    self.dictionary[@"pinLowercaseCharactersUsage"] = val;
}

- (int32_t) pinMaximumLength
{
    _pinMaximumLength = [self.dictionary[@"pinMaximumLength"] intValue];
    return _pinMaximumLength;
}

- (void) setPinMaximumLength: (int32_t) val
{
    _pinMaximumLength = val;
    self.dictionary[@"pinMaximumLength"] = @(val);
}

- (int32_t) pinMinimumLength
{
    _pinMinimumLength = [self.dictionary[@"pinMinimumLength"] intValue];
    return _pinMinimumLength;
}

- (void) setPinMinimumLength: (int32_t) val
{
    _pinMinimumLength = val;
    self.dictionary[@"pinMinimumLength"] = @(val);
}

- (int32_t) pinPreviousBlockCount
{
    _pinPreviousBlockCount = [self.dictionary[@"pinPreviousBlockCount"] intValue];
    return _pinPreviousBlockCount;
}

- (void) setPinPreviousBlockCount: (int32_t) val
{
    _pinPreviousBlockCount = val;
    self.dictionary[@"pinPreviousBlockCount"] = @(val);
}

- (MSGraphWindowsHelloForBusinessPinUsage*) pinSpecialCharactersUsage
{
    if(!_pinSpecialCharactersUsage){
        _pinSpecialCharactersUsage = [self.dictionary[@"pinSpecialCharactersUsage"] toMSGraphWindowsHelloForBusinessPinUsage];
    }
    return _pinSpecialCharactersUsage;
}

- (void) setPinSpecialCharactersUsage: (MSGraphWindowsHelloForBusinessPinUsage*) val
{
    _pinSpecialCharactersUsage = val;
    self.dictionary[@"pinSpecialCharactersUsage"] = val;
}

- (MSGraphWindowsHelloForBusinessPinUsage*) pinUppercaseCharactersUsage
{
    if(!_pinUppercaseCharactersUsage){
        _pinUppercaseCharactersUsage = [self.dictionary[@"pinUppercaseCharactersUsage"] toMSGraphWindowsHelloForBusinessPinUsage];
    }
    return _pinUppercaseCharactersUsage;
}

- (void) setPinUppercaseCharactersUsage: (MSGraphWindowsHelloForBusinessPinUsage*) val
{
    _pinUppercaseCharactersUsage = val;
    self.dictionary[@"pinUppercaseCharactersUsage"] = val;
}

- (BOOL) remotePassportEnabled
{
    _remotePassportEnabled = [self.dictionary[@"remotePassportEnabled"] boolValue];
    return _remotePassportEnabled;
}

- (void) setRemotePassportEnabled: (BOOL) val
{
    _remotePassportEnabled = val;
    self.dictionary[@"remotePassportEnabled"] = @(val);
}

- (BOOL) securityDeviceRequired
{
    _securityDeviceRequired = [self.dictionary[@"securityDeviceRequired"] boolValue];
    return _securityDeviceRequired;
}

- (void) setSecurityDeviceRequired: (BOOL) val
{
    _securityDeviceRequired = val;
    self.dictionary[@"securityDeviceRequired"] = @(val);
}

- (MSGraphEnablement*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphEnablement];
    }
    return _state;
}

- (void) setState: (MSGraphEnablement*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

- (BOOL) unlockWithBiometricsEnabled
{
    _unlockWithBiometricsEnabled = [self.dictionary[@"unlockWithBiometricsEnabled"] boolValue];
    return _unlockWithBiometricsEnabled;
}

- (void) setUnlockWithBiometricsEnabled: (BOOL) val
{
    _unlockWithBiometricsEnabled = val;
    self.dictionary[@"unlockWithBiometricsEnabled"] = @(val);
}


@end
