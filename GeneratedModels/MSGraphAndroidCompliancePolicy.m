// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAndroidCompliancePolicy()
{
    BOOL _deviceThreatProtectionEnabled;
    MSGraphDeviceThreatProtectionLevel* _deviceThreatProtectionRequiredSecurityLevel;
    NSString* _minAndroidSecurityPatchLevel;
    NSString* _osMaximumVersion;
    NSString* _osMinimumVersion;
    int32_t _passwordExpirationDays;
    int32_t _passwordMinimumLength;
    int32_t _passwordMinutesOfInactivityBeforeLock;
    int32_t _passwordPreviousPasswordBlockCount;
    BOOL _passwordRequired;
    MSGraphAndroidRequiredPasswordType* _passwordRequiredType;
    BOOL _securityBlockJailbrokenDevices;
    BOOL _securityDisableUsbDebugging;
    BOOL _securityPreventInstallAppsFromUnknownSources;
    BOOL _securityRequireCompanyPortalAppIntegrity;
    BOOL _securityRequireGooglePlayServices;
    BOOL _securityRequireSafetyNetAttestationBasicIntegrity;
    BOOL _securityRequireSafetyNetAttestationCertifiedDevice;
    BOOL _securityRequireUpToDateSecurityProviders;
    BOOL _securityRequireVerifyApps;
    BOOL _storageRequireEncryption;
}
@end

@implementation MSGraphAndroidCompliancePolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.androidCompliancePolicy";
    }
    return self;
}
- (BOOL) deviceThreatProtectionEnabled
{
    _deviceThreatProtectionEnabled = [self.dictionary[@"deviceThreatProtectionEnabled"] boolValue];
    return _deviceThreatProtectionEnabled;
}

- (void) setDeviceThreatProtectionEnabled: (BOOL) val
{
    _deviceThreatProtectionEnabled = val;
    self.dictionary[@"deviceThreatProtectionEnabled"] = @(val);
}

- (MSGraphDeviceThreatProtectionLevel*) deviceThreatProtectionRequiredSecurityLevel
{
    if(!_deviceThreatProtectionRequiredSecurityLevel){
        _deviceThreatProtectionRequiredSecurityLevel = [self.dictionary[@"deviceThreatProtectionRequiredSecurityLevel"] toMSGraphDeviceThreatProtectionLevel];
    }
    return _deviceThreatProtectionRequiredSecurityLevel;
}

- (void) setDeviceThreatProtectionRequiredSecurityLevel: (MSGraphDeviceThreatProtectionLevel*) val
{
    _deviceThreatProtectionRequiredSecurityLevel = val;
    self.dictionary[@"deviceThreatProtectionRequiredSecurityLevel"] = val;
}

- (NSString*) minAndroidSecurityPatchLevel
{
    if([[NSNull null] isEqual:self.dictionary[@"minAndroidSecurityPatchLevel"]])
    {
        return nil;
    }   
    return self.dictionary[@"minAndroidSecurityPatchLevel"];
}

- (void) setMinAndroidSecurityPatchLevel: (NSString*) val
{
    self.dictionary[@"minAndroidSecurityPatchLevel"] = val;
}

- (NSString*) osMaximumVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"osMaximumVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"osMaximumVersion"];
}

- (void) setOsMaximumVersion: (NSString*) val
{
    self.dictionary[@"osMaximumVersion"] = val;
}

- (NSString*) osMinimumVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"osMinimumVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"osMinimumVersion"];
}

- (void) setOsMinimumVersion: (NSString*) val
{
    self.dictionary[@"osMinimumVersion"] = val;
}

- (int32_t) passwordExpirationDays
{
    _passwordExpirationDays = [self.dictionary[@"passwordExpirationDays"] intValue];
    return _passwordExpirationDays;
}

- (void) setPasswordExpirationDays: (int32_t) val
{
    _passwordExpirationDays = val;
    self.dictionary[@"passwordExpirationDays"] = @(val);
}

- (int32_t) passwordMinimumLength
{
    _passwordMinimumLength = [self.dictionary[@"passwordMinimumLength"] intValue];
    return _passwordMinimumLength;
}

- (void) setPasswordMinimumLength: (int32_t) val
{
    _passwordMinimumLength = val;
    self.dictionary[@"passwordMinimumLength"] = @(val);
}

- (int32_t) passwordMinutesOfInactivityBeforeLock
{
    _passwordMinutesOfInactivityBeforeLock = [self.dictionary[@"passwordMinutesOfInactivityBeforeLock"] intValue];
    return _passwordMinutesOfInactivityBeforeLock;
}

- (void) setPasswordMinutesOfInactivityBeforeLock: (int32_t) val
{
    _passwordMinutesOfInactivityBeforeLock = val;
    self.dictionary[@"passwordMinutesOfInactivityBeforeLock"] = @(val);
}

- (int32_t) passwordPreviousPasswordBlockCount
{
    _passwordPreviousPasswordBlockCount = [self.dictionary[@"passwordPreviousPasswordBlockCount"] intValue];
    return _passwordPreviousPasswordBlockCount;
}

- (void) setPasswordPreviousPasswordBlockCount: (int32_t) val
{
    _passwordPreviousPasswordBlockCount = val;
    self.dictionary[@"passwordPreviousPasswordBlockCount"] = @(val);
}

- (BOOL) passwordRequired
{
    _passwordRequired = [self.dictionary[@"passwordRequired"] boolValue];
    return _passwordRequired;
}

- (void) setPasswordRequired: (BOOL) val
{
    _passwordRequired = val;
    self.dictionary[@"passwordRequired"] = @(val);
}

- (MSGraphAndroidRequiredPasswordType*) passwordRequiredType
{
    if(!_passwordRequiredType){
        _passwordRequiredType = [self.dictionary[@"passwordRequiredType"] toMSGraphAndroidRequiredPasswordType];
    }
    return _passwordRequiredType;
}

- (void) setPasswordRequiredType: (MSGraphAndroidRequiredPasswordType*) val
{
    _passwordRequiredType = val;
    self.dictionary[@"passwordRequiredType"] = val;
}

- (BOOL) securityBlockJailbrokenDevices
{
    _securityBlockJailbrokenDevices = [self.dictionary[@"securityBlockJailbrokenDevices"] boolValue];
    return _securityBlockJailbrokenDevices;
}

- (void) setSecurityBlockJailbrokenDevices: (BOOL) val
{
    _securityBlockJailbrokenDevices = val;
    self.dictionary[@"securityBlockJailbrokenDevices"] = @(val);
}

- (BOOL) securityDisableUsbDebugging
{
    _securityDisableUsbDebugging = [self.dictionary[@"securityDisableUsbDebugging"] boolValue];
    return _securityDisableUsbDebugging;
}

- (void) setSecurityDisableUsbDebugging: (BOOL) val
{
    _securityDisableUsbDebugging = val;
    self.dictionary[@"securityDisableUsbDebugging"] = @(val);
}

- (BOOL) securityPreventInstallAppsFromUnknownSources
{
    _securityPreventInstallAppsFromUnknownSources = [self.dictionary[@"securityPreventInstallAppsFromUnknownSources"] boolValue];
    return _securityPreventInstallAppsFromUnknownSources;
}

- (void) setSecurityPreventInstallAppsFromUnknownSources: (BOOL) val
{
    _securityPreventInstallAppsFromUnknownSources = val;
    self.dictionary[@"securityPreventInstallAppsFromUnknownSources"] = @(val);
}

- (BOOL) securityRequireCompanyPortalAppIntegrity
{
    _securityRequireCompanyPortalAppIntegrity = [self.dictionary[@"securityRequireCompanyPortalAppIntegrity"] boolValue];
    return _securityRequireCompanyPortalAppIntegrity;
}

- (void) setSecurityRequireCompanyPortalAppIntegrity: (BOOL) val
{
    _securityRequireCompanyPortalAppIntegrity = val;
    self.dictionary[@"securityRequireCompanyPortalAppIntegrity"] = @(val);
}

- (BOOL) securityRequireGooglePlayServices
{
    _securityRequireGooglePlayServices = [self.dictionary[@"securityRequireGooglePlayServices"] boolValue];
    return _securityRequireGooglePlayServices;
}

- (void) setSecurityRequireGooglePlayServices: (BOOL) val
{
    _securityRequireGooglePlayServices = val;
    self.dictionary[@"securityRequireGooglePlayServices"] = @(val);
}

- (BOOL) securityRequireSafetyNetAttestationBasicIntegrity
{
    _securityRequireSafetyNetAttestationBasicIntegrity = [self.dictionary[@"securityRequireSafetyNetAttestationBasicIntegrity"] boolValue];
    return _securityRequireSafetyNetAttestationBasicIntegrity;
}

- (void) setSecurityRequireSafetyNetAttestationBasicIntegrity: (BOOL) val
{
    _securityRequireSafetyNetAttestationBasicIntegrity = val;
    self.dictionary[@"securityRequireSafetyNetAttestationBasicIntegrity"] = @(val);
}

- (BOOL) securityRequireSafetyNetAttestationCertifiedDevice
{
    _securityRequireSafetyNetAttestationCertifiedDevice = [self.dictionary[@"securityRequireSafetyNetAttestationCertifiedDevice"] boolValue];
    return _securityRequireSafetyNetAttestationCertifiedDevice;
}

- (void) setSecurityRequireSafetyNetAttestationCertifiedDevice: (BOOL) val
{
    _securityRequireSafetyNetAttestationCertifiedDevice = val;
    self.dictionary[@"securityRequireSafetyNetAttestationCertifiedDevice"] = @(val);
}

- (BOOL) securityRequireUpToDateSecurityProviders
{
    _securityRequireUpToDateSecurityProviders = [self.dictionary[@"securityRequireUpToDateSecurityProviders"] boolValue];
    return _securityRequireUpToDateSecurityProviders;
}

- (void) setSecurityRequireUpToDateSecurityProviders: (BOOL) val
{
    _securityRequireUpToDateSecurityProviders = val;
    self.dictionary[@"securityRequireUpToDateSecurityProviders"] = @(val);
}

- (BOOL) securityRequireVerifyApps
{
    _securityRequireVerifyApps = [self.dictionary[@"securityRequireVerifyApps"] boolValue];
    return _securityRequireVerifyApps;
}

- (void) setSecurityRequireVerifyApps: (BOOL) val
{
    _securityRequireVerifyApps = val;
    self.dictionary[@"securityRequireVerifyApps"] = @(val);
}

- (BOOL) storageRequireEncryption
{
    _storageRequireEncryption = [self.dictionary[@"storageRequireEncryption"] boolValue];
    return _storageRequireEncryption;
}

- (void) setStorageRequireEncryption: (BOOL) val
{
    _storageRequireEncryption = val;
    self.dictionary[@"storageRequireEncryption"] = @(val);
}


@end
