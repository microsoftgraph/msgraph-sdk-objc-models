// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphEnablement.h"
#import "MSGraphWindowsHelloForBusinessPinUsage.h"


#import "MSGraphDeviceEnrollmentConfiguration.h"

@interface MSGraphDeviceEnrollmentWindowsHelloForBusinessConfiguration : MSGraphDeviceEnrollmentConfiguration

  @property (nonnull, nonatomic, setter=setEnhancedBiometricsState:, getter=enhancedBiometricsState) MSGraphEnablement* enhancedBiometricsState;
    @property (nonatomic, setter=setPinExpirationInDays:, getter=pinExpirationInDays) int32_t pinExpirationInDays;
    @property (nonnull, nonatomic, setter=setPinLowercaseCharactersUsage:, getter=pinLowercaseCharactersUsage) MSGraphWindowsHelloForBusinessPinUsage* pinLowercaseCharactersUsage;
    @property (nonatomic, setter=setPinMaximumLength:, getter=pinMaximumLength) int32_t pinMaximumLength;
    @property (nonatomic, setter=setPinMinimumLength:, getter=pinMinimumLength) int32_t pinMinimumLength;
    @property (nonatomic, setter=setPinPreviousBlockCount:, getter=pinPreviousBlockCount) int32_t pinPreviousBlockCount;
    @property (nonnull, nonatomic, setter=setPinSpecialCharactersUsage:, getter=pinSpecialCharactersUsage) MSGraphWindowsHelloForBusinessPinUsage* pinSpecialCharactersUsage;
    @property (nonnull, nonatomic, setter=setPinUppercaseCharactersUsage:, getter=pinUppercaseCharactersUsage) MSGraphWindowsHelloForBusinessPinUsage* pinUppercaseCharactersUsage;
    @property (nonatomic, setter=setRemotePassportEnabled:, getter=remotePassportEnabled) BOOL remotePassportEnabled;
    @property (nonatomic, setter=setSecurityDeviceRequired:, getter=securityDeviceRequired) BOOL securityDeviceRequired;
    @property (nonnull, nonatomic, setter=setState:, getter=state) MSGraphEnablement* state;
    @property (nonatomic, setter=setUnlockWithBiometricsEnabled:, getter=unlockWithBiometricsEnabled) BOOL unlockWithBiometricsEnabled;
  
@end
