// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWin32LobApp()
{
    MSGraphWindowsArchitecture* _applicableArchitectures;
    NSString* _installCommandLine;
    MSGraphWin32LobAppInstallExperience* _installExperience;
    int32_t _minimumCpuSpeedInMHz;
    int32_t _minimumFreeDiskSpaceInMB;
    int32_t _minimumMemoryInMB;
    int32_t _minimumNumberOfProcessors;
    NSString* _minimumSupportedWindowsRelease;
    MSGraphWin32LobAppMsiInformation* _msiInformation;
    NSArray* _returnCodes;
    NSArray* _rules;
    NSString* _setupFilePath;
    NSString* _uninstallCommandLine;
}
@end

@implementation MSGraphWin32LobApp

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.win32LobApp";
    }
    return self;
}
- (MSGraphWindowsArchitecture*) applicableArchitectures
{
    if(!_applicableArchitectures){
        _applicableArchitectures = [self.dictionary[@"applicableArchitectures"] toMSGraphWindowsArchitecture];
    }
    return _applicableArchitectures;
}

- (void) setApplicableArchitectures: (MSGraphWindowsArchitecture*) val
{
    _applicableArchitectures = val;
    self.dictionary[@"applicableArchitectures"] = val;
}

- (NSString*) installCommandLine
{
    if([[NSNull null] isEqual:self.dictionary[@"installCommandLine"]])
    {
        return nil;
    }   
    return self.dictionary[@"installCommandLine"];
}

- (void) setInstallCommandLine: (NSString*) val
{
    self.dictionary[@"installCommandLine"] = val;
}

- (MSGraphWin32LobAppInstallExperience*) installExperience
{
    if(!_installExperience){
        _installExperience = [[MSGraphWin32LobAppInstallExperience alloc] initWithDictionary: self.dictionary[@"installExperience"]];
    }
    return _installExperience;
}

- (void) setInstallExperience: (MSGraphWin32LobAppInstallExperience*) val
{
    _installExperience = val;
    self.dictionary[@"installExperience"] = val;
}

- (int32_t) minimumCpuSpeedInMHz
{
    _minimumCpuSpeedInMHz = [self.dictionary[@"minimumCpuSpeedInMHz"] intValue];
    return _minimumCpuSpeedInMHz;
}

- (void) setMinimumCpuSpeedInMHz: (int32_t) val
{
    _minimumCpuSpeedInMHz = val;
    self.dictionary[@"minimumCpuSpeedInMHz"] = @(val);
}

- (int32_t) minimumFreeDiskSpaceInMB
{
    _minimumFreeDiskSpaceInMB = [self.dictionary[@"minimumFreeDiskSpaceInMB"] intValue];
    return _minimumFreeDiskSpaceInMB;
}

- (void) setMinimumFreeDiskSpaceInMB: (int32_t) val
{
    _minimumFreeDiskSpaceInMB = val;
    self.dictionary[@"minimumFreeDiskSpaceInMB"] = @(val);
}

- (int32_t) minimumMemoryInMB
{
    _minimumMemoryInMB = [self.dictionary[@"minimumMemoryInMB"] intValue];
    return _minimumMemoryInMB;
}

- (void) setMinimumMemoryInMB: (int32_t) val
{
    _minimumMemoryInMB = val;
    self.dictionary[@"minimumMemoryInMB"] = @(val);
}

- (int32_t) minimumNumberOfProcessors
{
    _minimumNumberOfProcessors = [self.dictionary[@"minimumNumberOfProcessors"] intValue];
    return _minimumNumberOfProcessors;
}

- (void) setMinimumNumberOfProcessors: (int32_t) val
{
    _minimumNumberOfProcessors = val;
    self.dictionary[@"minimumNumberOfProcessors"] = @(val);
}

- (NSString*) minimumSupportedWindowsRelease
{
    if([[NSNull null] isEqual:self.dictionary[@"minimumSupportedWindowsRelease"]])
    {
        return nil;
    }   
    return self.dictionary[@"minimumSupportedWindowsRelease"];
}

- (void) setMinimumSupportedWindowsRelease: (NSString*) val
{
    self.dictionary[@"minimumSupportedWindowsRelease"] = val;
}

- (MSGraphWin32LobAppMsiInformation*) msiInformation
{
    if(!_msiInformation){
        _msiInformation = [[MSGraphWin32LobAppMsiInformation alloc] initWithDictionary: self.dictionary[@"msiInformation"]];
    }
    return _msiInformation;
}

- (void) setMsiInformation: (MSGraphWin32LobAppMsiInformation*) val
{
    _msiInformation = val;
    self.dictionary[@"msiInformation"] = val;
}

- (NSArray*) returnCodes
{
    if(!_returnCodes){
        
    NSMutableArray *returnCodesResult = [NSMutableArray array];
    NSArray *returnCodes = self.dictionary[@"returnCodes"];

    if ([returnCodes isKindOfClass:[NSArray class]]){
        for (id tempWin32LobAppReturnCode in returnCodes){
            [returnCodesResult addObject:tempWin32LobAppReturnCode];
        }
    }

    _returnCodes = returnCodesResult;
        
    }
    return _returnCodes;
}

- (void) setReturnCodes: (NSArray*) val
{
    _returnCodes = val;
    self.dictionary[@"returnCodes"] = val;
}

- (NSArray*) rules
{
    if(!_rules){
        
    NSMutableArray *rulesResult = [NSMutableArray array];
    NSArray *rules = self.dictionary[@"rules"];

    if ([rules isKindOfClass:[NSArray class]]){
        for (id tempWin32LobAppRule in rules){
            [rulesResult addObject:tempWin32LobAppRule];
        }
    }

    _rules = rulesResult;
        
    }
    return _rules;
}

- (void) setRules: (NSArray*) val
{
    _rules = val;
    self.dictionary[@"rules"] = val;
}

- (NSString*) setupFilePath
{
    if([[NSNull null] isEqual:self.dictionary[@"setupFilePath"]])
    {
        return nil;
    }   
    return self.dictionary[@"setupFilePath"];
}

- (void) setSetupFilePath: (NSString*) val
{
    self.dictionary[@"setupFilePath"] = val;
}

- (NSString*) uninstallCommandLine
{
    if([[NSNull null] isEqual:self.dictionary[@"uninstallCommandLine"]])
    {
        return nil;
    }   
    return self.dictionary[@"uninstallCommandLine"];
}

- (void) setUninstallCommandLine: (NSString*) val
{
    self.dictionary[@"uninstallCommandLine"] = val;
}


@end
