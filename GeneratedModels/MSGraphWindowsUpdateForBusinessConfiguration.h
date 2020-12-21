// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWindowsUpdateInstallScheduleType; 
#import "MSGraphAutomaticUpdateMode.h"
#import "MSGraphWindowsUpdateType.h"
#import "MSGraphWindowsDeliveryOptimizationMode.h"
#import "MSGraphPrereleaseFeatures.h"


#import "MSGraphDeviceConfiguration.h"

@interface MSGraphWindowsUpdateForBusinessConfiguration : MSGraphDeviceConfiguration

  @property (nonnull, nonatomic, setter=setAutomaticUpdateMode:, getter=automaticUpdateMode) MSGraphAutomaticUpdateMode* automaticUpdateMode;
    @property (nonnull, nonatomic, setter=setBusinessReadyUpdatesOnly:, getter=businessReadyUpdatesOnly) MSGraphWindowsUpdateType* businessReadyUpdatesOnly;
    @property (nonnull, nonatomic, setter=setDeliveryOptimizationMode:, getter=deliveryOptimizationMode) MSGraphWindowsDeliveryOptimizationMode* deliveryOptimizationMode;
    @property (nonatomic, setter=setDriversExcluded:, getter=driversExcluded) BOOL driversExcluded;
    @property (nonatomic, setter=setFeatureUpdatesDeferralPeriodInDays:, getter=featureUpdatesDeferralPeriodInDays) int32_t featureUpdatesDeferralPeriodInDays;
    @property (nonatomic, setter=setFeatureUpdatesPaused:, getter=featureUpdatesPaused) BOOL featureUpdatesPaused;
    @property (nonnull, nonatomic, setter=setFeatureUpdatesPauseExpiryDateTime:, getter=featureUpdatesPauseExpiryDateTime) NSDate* featureUpdatesPauseExpiryDateTime;
    @property (nullable, nonatomic, setter=setInstallationSchedule:, getter=installationSchedule) MSGraphWindowsUpdateInstallScheduleType* installationSchedule;
    @property (nonatomic, setter=setMicrosoftUpdateServiceAllowed:, getter=microsoftUpdateServiceAllowed) BOOL microsoftUpdateServiceAllowed;
    @property (nonnull, nonatomic, setter=setPrereleaseFeatures:, getter=prereleaseFeatures) MSGraphPrereleaseFeatures* prereleaseFeatures;
    @property (nonatomic, setter=setQualityUpdatesDeferralPeriodInDays:, getter=qualityUpdatesDeferralPeriodInDays) int32_t qualityUpdatesDeferralPeriodInDays;
    @property (nonatomic, setter=setQualityUpdatesPaused:, getter=qualityUpdatesPaused) BOOL qualityUpdatesPaused;
    @property (nonnull, nonatomic, setter=setQualityUpdatesPauseExpiryDateTime:, getter=qualityUpdatesPauseExpiryDateTime) NSDate* qualityUpdatesPauseExpiryDateTime;
  
@end
