// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphDeviceThreatProtectionLevel.h"
#import "MSGraphAndroidRequiredPasswordType.h"


#import "MSGraphDeviceCompliancePolicy.h"

@interface MSGraphAndroidCompliancePolicy : MSGraphDeviceCompliancePolicy

  @property (nonatomic, setter=setDeviceThreatProtectionEnabled:, getter=deviceThreatProtectionEnabled) BOOL deviceThreatProtectionEnabled;
    @property (nonnull, nonatomic, setter=setDeviceThreatProtectionRequiredSecurityLevel:, getter=deviceThreatProtectionRequiredSecurityLevel) MSGraphDeviceThreatProtectionLevel* deviceThreatProtectionRequiredSecurityLevel;
    @property (nullable, nonatomic, setter=setMinAndroidSecurityPatchLevel:, getter=minAndroidSecurityPatchLevel) NSString* minAndroidSecurityPatchLevel;
    @property (nullable, nonatomic, setter=setOsMaximumVersion:, getter=osMaximumVersion) NSString* osMaximumVersion;
    @property (nullable, nonatomic, setter=setOsMinimumVersion:, getter=osMinimumVersion) NSString* osMinimumVersion;
    @property (nonatomic, setter=setPasswordExpirationDays:, getter=passwordExpirationDays) int32_t passwordExpirationDays;
    @property (nonatomic, setter=setPasswordMinimumLength:, getter=passwordMinimumLength) int32_t passwordMinimumLength;
    @property (nonatomic, setter=setPasswordMinutesOfInactivityBeforeLock:, getter=passwordMinutesOfInactivityBeforeLock) int32_t passwordMinutesOfInactivityBeforeLock;
    @property (nonatomic, setter=setPasswordPreviousPasswordBlockCount:, getter=passwordPreviousPasswordBlockCount) int32_t passwordPreviousPasswordBlockCount;
    @property (nonatomic, setter=setPasswordRequired:, getter=passwordRequired) BOOL passwordRequired;
    @property (nonnull, nonatomic, setter=setPasswordRequiredType:, getter=passwordRequiredType) MSGraphAndroidRequiredPasswordType* passwordRequiredType;
    @property (nonatomic, setter=setSecurityBlockJailbrokenDevices:, getter=securityBlockJailbrokenDevices) BOOL securityBlockJailbrokenDevices;
    @property (nonatomic, setter=setSecurityDisableUsbDebugging:, getter=securityDisableUsbDebugging) BOOL securityDisableUsbDebugging;
    @property (nonatomic, setter=setSecurityPreventInstallAppsFromUnknownSources:, getter=securityPreventInstallAppsFromUnknownSources) BOOL securityPreventInstallAppsFromUnknownSources;
    @property (nonatomic, setter=setSecurityRequireCompanyPortalAppIntegrity:, getter=securityRequireCompanyPortalAppIntegrity) BOOL securityRequireCompanyPortalAppIntegrity;
    @property (nonatomic, setter=setSecurityRequireGooglePlayServices:, getter=securityRequireGooglePlayServices) BOOL securityRequireGooglePlayServices;
    @property (nonatomic, setter=setSecurityRequireSafetyNetAttestationBasicIntegrity:, getter=securityRequireSafetyNetAttestationBasicIntegrity) BOOL securityRequireSafetyNetAttestationBasicIntegrity;
    @property (nonatomic, setter=setSecurityRequireSafetyNetAttestationCertifiedDevice:, getter=securityRequireSafetyNetAttestationCertifiedDevice) BOOL securityRequireSafetyNetAttestationCertifiedDevice;
    @property (nonatomic, setter=setSecurityRequireUpToDateSecurityProviders:, getter=securityRequireUpToDateSecurityProviders) BOOL securityRequireUpToDateSecurityProviders;
    @property (nonatomic, setter=setSecurityRequireVerifyApps:, getter=securityRequireVerifyApps) BOOL securityRequireVerifyApps;
    @property (nonatomic, setter=setStorageRequireEncryption:, getter=storageRequireEncryption) BOOL storageRequireEncryption;
  
@end
