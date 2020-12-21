// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWindowsUpdateForBusinessConfiguration()
{
    MSGraphAutomaticUpdateMode* _automaticUpdateMode;
    MSGraphWindowsUpdateType* _businessReadyUpdatesOnly;
    MSGraphWindowsDeliveryOptimizationMode* _deliveryOptimizationMode;
    BOOL _driversExcluded;
    int32_t _featureUpdatesDeferralPeriodInDays;
    BOOL _featureUpdatesPaused;
    NSDate* _featureUpdatesPauseExpiryDateTime;
    MSGraphWindowsUpdateInstallScheduleType* _installationSchedule;
    BOOL _microsoftUpdateServiceAllowed;
    MSGraphPrereleaseFeatures* _prereleaseFeatures;
    int32_t _qualityUpdatesDeferralPeriodInDays;
    BOOL _qualityUpdatesPaused;
    NSDate* _qualityUpdatesPauseExpiryDateTime;
}
@end

@implementation MSGraphWindowsUpdateForBusinessConfiguration

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.windowsUpdateForBusinessConfiguration";
    }
    return self;
}
- (MSGraphAutomaticUpdateMode*) automaticUpdateMode
{
    if(!_automaticUpdateMode){
        _automaticUpdateMode = [self.dictionary[@"automaticUpdateMode"] toMSGraphAutomaticUpdateMode];
    }
    return _automaticUpdateMode;
}

- (void) setAutomaticUpdateMode: (MSGraphAutomaticUpdateMode*) val
{
    _automaticUpdateMode = val;
    self.dictionary[@"automaticUpdateMode"] = val;
}

- (MSGraphWindowsUpdateType*) businessReadyUpdatesOnly
{
    if(!_businessReadyUpdatesOnly){
        _businessReadyUpdatesOnly = [self.dictionary[@"businessReadyUpdatesOnly"] toMSGraphWindowsUpdateType];
    }
    return _businessReadyUpdatesOnly;
}

- (void) setBusinessReadyUpdatesOnly: (MSGraphWindowsUpdateType*) val
{
    _businessReadyUpdatesOnly = val;
    self.dictionary[@"businessReadyUpdatesOnly"] = val;
}

- (MSGraphWindowsDeliveryOptimizationMode*) deliveryOptimizationMode
{
    if(!_deliveryOptimizationMode){
        _deliveryOptimizationMode = [self.dictionary[@"deliveryOptimizationMode"] toMSGraphWindowsDeliveryOptimizationMode];
    }
    return _deliveryOptimizationMode;
}

- (void) setDeliveryOptimizationMode: (MSGraphWindowsDeliveryOptimizationMode*) val
{
    _deliveryOptimizationMode = val;
    self.dictionary[@"deliveryOptimizationMode"] = val;
}

- (BOOL) driversExcluded
{
    _driversExcluded = [self.dictionary[@"driversExcluded"] boolValue];
    return _driversExcluded;
}

- (void) setDriversExcluded: (BOOL) val
{
    _driversExcluded = val;
    self.dictionary[@"driversExcluded"] = @(val);
}

- (int32_t) featureUpdatesDeferralPeriodInDays
{
    _featureUpdatesDeferralPeriodInDays = [self.dictionary[@"featureUpdatesDeferralPeriodInDays"] intValue];
    return _featureUpdatesDeferralPeriodInDays;
}

- (void) setFeatureUpdatesDeferralPeriodInDays: (int32_t) val
{
    _featureUpdatesDeferralPeriodInDays = val;
    self.dictionary[@"featureUpdatesDeferralPeriodInDays"] = @(val);
}

- (BOOL) featureUpdatesPaused
{
    _featureUpdatesPaused = [self.dictionary[@"featureUpdatesPaused"] boolValue];
    return _featureUpdatesPaused;
}

- (void) setFeatureUpdatesPaused: (BOOL) val
{
    _featureUpdatesPaused = val;
    self.dictionary[@"featureUpdatesPaused"] = @(val);
}

- (NSDate*) featureUpdatesPauseExpiryDateTime
{
    if(!_featureUpdatesPauseExpiryDateTime){
        _featureUpdatesPauseExpiryDateTime = [NSDate ms_dateFromString: self.dictionary[@"featureUpdatesPauseExpiryDateTime"]];
    }
    return _featureUpdatesPauseExpiryDateTime;
}

- (void) setFeatureUpdatesPauseExpiryDateTime: (NSDate*) val
{
    _featureUpdatesPauseExpiryDateTime = val;
    self.dictionary[@"featureUpdatesPauseExpiryDateTime"] = [val ms_toString];
}

- (MSGraphWindowsUpdateInstallScheduleType*) installationSchedule
{
    if(!_installationSchedule){
        _installationSchedule = [[MSGraphWindowsUpdateInstallScheduleType alloc] initWithDictionary: self.dictionary[@"installationSchedule"]];
    }
    return _installationSchedule;
}

- (void) setInstallationSchedule: (MSGraphWindowsUpdateInstallScheduleType*) val
{
    _installationSchedule = val;
    self.dictionary[@"installationSchedule"] = val;
}

- (BOOL) microsoftUpdateServiceAllowed
{
    _microsoftUpdateServiceAllowed = [self.dictionary[@"microsoftUpdateServiceAllowed"] boolValue];
    return _microsoftUpdateServiceAllowed;
}

- (void) setMicrosoftUpdateServiceAllowed: (BOOL) val
{
    _microsoftUpdateServiceAllowed = val;
    self.dictionary[@"microsoftUpdateServiceAllowed"] = @(val);
}

- (MSGraphPrereleaseFeatures*) prereleaseFeatures
{
    if(!_prereleaseFeatures){
        _prereleaseFeatures = [self.dictionary[@"prereleaseFeatures"] toMSGraphPrereleaseFeatures];
    }
    return _prereleaseFeatures;
}

- (void) setPrereleaseFeatures: (MSGraphPrereleaseFeatures*) val
{
    _prereleaseFeatures = val;
    self.dictionary[@"prereleaseFeatures"] = val;
}

- (int32_t) qualityUpdatesDeferralPeriodInDays
{
    _qualityUpdatesDeferralPeriodInDays = [self.dictionary[@"qualityUpdatesDeferralPeriodInDays"] intValue];
    return _qualityUpdatesDeferralPeriodInDays;
}

- (void) setQualityUpdatesDeferralPeriodInDays: (int32_t) val
{
    _qualityUpdatesDeferralPeriodInDays = val;
    self.dictionary[@"qualityUpdatesDeferralPeriodInDays"] = @(val);
}

- (BOOL) qualityUpdatesPaused
{
    _qualityUpdatesPaused = [self.dictionary[@"qualityUpdatesPaused"] boolValue];
    return _qualityUpdatesPaused;
}

- (void) setQualityUpdatesPaused: (BOOL) val
{
    _qualityUpdatesPaused = val;
    self.dictionary[@"qualityUpdatesPaused"] = @(val);
}

- (NSDate*) qualityUpdatesPauseExpiryDateTime
{
    if(!_qualityUpdatesPauseExpiryDateTime){
        _qualityUpdatesPauseExpiryDateTime = [NSDate ms_dateFromString: self.dictionary[@"qualityUpdatesPauseExpiryDateTime"]];
    }
    return _qualityUpdatesPauseExpiryDateTime;
}

- (void) setQualityUpdatesPauseExpiryDateTime: (NSDate*) val
{
    _qualityUpdatesPauseExpiryDateTime = val;
    self.dictionary[@"qualityUpdatesPauseExpiryDateTime"] = [val ms_toString];
}


@end
