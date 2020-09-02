// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSDuration; 
#import "MSGraphManagedAppDataStorageLocation.h"
#import "MSGraphManagedAppDataTransferLevel.h"
#import "MSGraphManagedAppClipboardSharingLevel.h"
#import "MSGraphManagedBrowserType.h"
#import "MSGraphManagedAppPinCharacterSet.h"


#import "MSGraphManagedAppPolicy.h"

@interface MSGraphManagedAppProtection : MSGraphManagedAppPolicy

  @property (nonnull, nonatomic, setter=setAllowedDataStorageLocations:, getter=allowedDataStorageLocations) NSArray* allowedDataStorageLocations;
    @property (nonnull, nonatomic, setter=setAllowedInboundDataTransferSources:, getter=allowedInboundDataTransferSources) MSGraphManagedAppDataTransferLevel* allowedInboundDataTransferSources;
    @property (nonnull, nonatomic, setter=setAllowedOutboundClipboardSharingLevel:, getter=allowedOutboundClipboardSharingLevel) MSGraphManagedAppClipboardSharingLevel* allowedOutboundClipboardSharingLevel;
    @property (nonnull, nonatomic, setter=setAllowedOutboundDataTransferDestinations:, getter=allowedOutboundDataTransferDestinations) MSGraphManagedAppDataTransferLevel* allowedOutboundDataTransferDestinations;
    @property (nonatomic, setter=setContactSyncBlocked:, getter=contactSyncBlocked) BOOL contactSyncBlocked;
    @property (nonatomic, setter=setDataBackupBlocked:, getter=dataBackupBlocked) BOOL dataBackupBlocked;
    @property (nonatomic, setter=setDeviceComplianceRequired:, getter=deviceComplianceRequired) BOOL deviceComplianceRequired;
    @property (nonatomic, setter=setDisableAppPinIfDevicePinIsSet:, getter=disableAppPinIfDevicePinIsSet) BOOL disableAppPinIfDevicePinIsSet;
    @property (nonatomic, setter=setFingerprintBlocked:, getter=fingerprintBlocked) BOOL fingerprintBlocked;
    @property (nonnull, nonatomic, setter=setManagedBrowser:, getter=managedBrowser) MSGraphManagedBrowserType* managedBrowser;
    @property (nonatomic, setter=setManagedBrowserToOpenLinksRequired:, getter=managedBrowserToOpenLinksRequired) BOOL managedBrowserToOpenLinksRequired;
    @property (nonatomic, setter=setMaximumPinRetries:, getter=maximumPinRetries) int32_t maximumPinRetries;
    @property (nonatomic, setter=setMinimumPinLength:, getter=minimumPinLength) int32_t minimumPinLength;
    @property (nullable, nonatomic, setter=setMinimumRequiredAppVersion:, getter=minimumRequiredAppVersion) NSString* minimumRequiredAppVersion;
    @property (nullable, nonatomic, setter=setMinimumRequiredOsVersion:, getter=minimumRequiredOsVersion) NSString* minimumRequiredOsVersion;
    @property (nullable, nonatomic, setter=setMinimumWarningAppVersion:, getter=minimumWarningAppVersion) NSString* minimumWarningAppVersion;
    @property (nullable, nonatomic, setter=setMinimumWarningOsVersion:, getter=minimumWarningOsVersion) NSString* minimumWarningOsVersion;
    @property (nonatomic, setter=setOrganizationalCredentialsRequired:, getter=organizationalCredentialsRequired) BOOL organizationalCredentialsRequired;
    @property (nonnull, nonatomic, setter=setPeriodBeforePinReset:, getter=periodBeforePinReset) MSDuration* periodBeforePinReset;
    @property (nonnull, nonatomic, setter=setPeriodOfflineBeforeAccessCheck:, getter=periodOfflineBeforeAccessCheck) MSDuration* periodOfflineBeforeAccessCheck;
    @property (nonnull, nonatomic, setter=setPeriodOfflineBeforeWipeIsEnforced:, getter=periodOfflineBeforeWipeIsEnforced) MSDuration* periodOfflineBeforeWipeIsEnforced;
    @property (nonnull, nonatomic, setter=setPeriodOnlineBeforeAccessCheck:, getter=periodOnlineBeforeAccessCheck) MSDuration* periodOnlineBeforeAccessCheck;
    @property (nonnull, nonatomic, setter=setPinCharacterSet:, getter=pinCharacterSet) MSGraphManagedAppPinCharacterSet* pinCharacterSet;
    @property (nonatomic, setter=setPinRequired:, getter=pinRequired) BOOL pinRequired;
    @property (nonatomic, setter=setPrintBlocked:, getter=printBlocked) BOOL printBlocked;
    @property (nonatomic, setter=setSaveAsBlocked:, getter=saveAsBlocked) BOOL saveAsBlocked;
    @property (nonatomic, setter=setSimplePinBlocked:, getter=simplePinBlocked) BOOL simplePinBlocked;
  
@end
