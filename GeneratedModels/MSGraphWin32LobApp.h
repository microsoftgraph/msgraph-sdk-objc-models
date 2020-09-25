// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWin32LobAppInstallExperience, MSGraphWin32LobAppMsiInformation, MSGraphWin32LobAppReturnCode, MSGraphWin32LobAppRule; 
#import "MSGraphWindowsArchitecture.h"


#import "MSGraphMobileLobApp.h"

@interface MSGraphWin32LobApp : MSGraphMobileLobApp

  @property (nonnull, nonatomic, setter=setApplicableArchitectures:, getter=applicableArchitectures) MSGraphWindowsArchitecture* applicableArchitectures;
    @property (nullable, nonatomic, setter=setInstallCommandLine:, getter=installCommandLine) NSString* installCommandLine;
    @property (nullable, nonatomic, setter=setInstallExperience:, getter=installExperience) MSGraphWin32LobAppInstallExperience* installExperience;
    @property (nonatomic, setter=setMinimumCpuSpeedInMHz:, getter=minimumCpuSpeedInMHz) int32_t minimumCpuSpeedInMHz;
    @property (nonatomic, setter=setMinimumFreeDiskSpaceInMB:, getter=minimumFreeDiskSpaceInMB) int32_t minimumFreeDiskSpaceInMB;
    @property (nonatomic, setter=setMinimumMemoryInMB:, getter=minimumMemoryInMB) int32_t minimumMemoryInMB;
    @property (nonatomic, setter=setMinimumNumberOfProcessors:, getter=minimumNumberOfProcessors) int32_t minimumNumberOfProcessors;
    @property (nullable, nonatomic, setter=setMinimumSupportedWindowsRelease:, getter=minimumSupportedWindowsRelease) NSString* minimumSupportedWindowsRelease;
    @property (nullable, nonatomic, setter=setMsiInformation:, getter=msiInformation) MSGraphWin32LobAppMsiInformation* msiInformation;
    @property (nullable, nonatomic, setter=setReturnCodes:, getter=returnCodes) NSArray* returnCodes;
    @property (nullable, nonatomic, setter=setRules:, getter=rules) NSArray* rules;
    @property (nullable, nonatomic, setter=setSetupFilePath:, getter=setupFilePath) NSString* setupFilePath;
    @property (nullable, nonatomic, setter=setUninstallCommandLine:, getter=uninstallCommandLine) NSString* uninstallCommandLine;
  
@end
