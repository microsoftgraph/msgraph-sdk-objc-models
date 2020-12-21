// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphDeviceConfiguration.h"

@interface MSGraphWindows10SecureAssessmentConfiguration : MSGraphDeviceConfiguration

  @property (nonatomic, setter=setAllowPrinting:, getter=allowPrinting) BOOL allowPrinting;
    @property (nonatomic, setter=setAllowScreenCapture:, getter=allowScreenCapture) BOOL allowScreenCapture;
    @property (nonatomic, setter=setAllowTextSuggestion:, getter=allowTextSuggestion) BOOL allowTextSuggestion;
    @property (nullable, nonatomic, setter=setConfigurationAccount:, getter=configurationAccount) NSString* configurationAccount;
    @property (nullable, nonatomic, setter=setLaunchUri:, getter=launchUri) NSString* launchUri;
  
@end
