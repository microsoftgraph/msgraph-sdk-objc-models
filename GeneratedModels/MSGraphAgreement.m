// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAgreement()
{
    NSString* _displayName;
    BOOL _isPerDeviceAcceptanceRequired;
    BOOL _isViewingBeforeAcceptanceRequired;
    MSGraphTermsExpiration* _termsExpiration;
    MSDuration* _userReacceptRequiredFrequency;
    NSArray* _acceptances;
    MSGraphAgreementFile* _file;
    NSArray* _files;
}
@end

@implementation MSGraphAgreement

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.agreement";
    }
    return self;
}
- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (BOOL) isPerDeviceAcceptanceRequired
{
    _isPerDeviceAcceptanceRequired = [self.dictionary[@"isPerDeviceAcceptanceRequired"] boolValue];
    return _isPerDeviceAcceptanceRequired;
}

- (void) setIsPerDeviceAcceptanceRequired: (BOOL) val
{
    _isPerDeviceAcceptanceRequired = val;
    self.dictionary[@"isPerDeviceAcceptanceRequired"] = @(val);
}

- (BOOL) isViewingBeforeAcceptanceRequired
{
    _isViewingBeforeAcceptanceRequired = [self.dictionary[@"isViewingBeforeAcceptanceRequired"] boolValue];
    return _isViewingBeforeAcceptanceRequired;
}

- (void) setIsViewingBeforeAcceptanceRequired: (BOOL) val
{
    _isViewingBeforeAcceptanceRequired = val;
    self.dictionary[@"isViewingBeforeAcceptanceRequired"] = @(val);
}

- (MSGraphTermsExpiration*) termsExpiration
{
    if(!_termsExpiration){
        _termsExpiration = [[MSGraphTermsExpiration alloc] initWithDictionary: self.dictionary[@"termsExpiration"]];
    }
    return _termsExpiration;
}

- (void) setTermsExpiration: (MSGraphTermsExpiration*) val
{
    _termsExpiration = val;
    self.dictionary[@"termsExpiration"] = val;
}

- (MSDuration*) userReacceptRequiredFrequency
{
    if(!_userReacceptRequiredFrequency){
        _userReacceptRequiredFrequency = [MSDuration ms_durationFromString: self.dictionary[@"userReacceptRequiredFrequency"]];
    }
    return _userReacceptRequiredFrequency;
}

- (void) setUserReacceptRequiredFrequency: (MSDuration*) val
{
    _userReacceptRequiredFrequency = val;
    self.dictionary[@"userReacceptRequiredFrequency"] = val.durationString;
}

- (NSArray*) acceptances
{
    if(!_acceptances){
        
    NSMutableArray *acceptancesResult = [NSMutableArray array];
    NSArray *acceptances = self.dictionary[@"acceptances"];

    if ([acceptances isKindOfClass:[NSArray class]]){
        for (id tempAgreementAcceptance in acceptances){
            [acceptancesResult addObject:tempAgreementAcceptance];
        }
    }

    _acceptances = acceptancesResult;
        
    }
    return _acceptances;
}

- (void) setAcceptances: (NSArray*) val
{
    _acceptances = val;
    self.dictionary[@"acceptances"] = val;
}

- (MSGraphAgreementFile*) file
{
    if(!_file){
        _file = [[MSGraphAgreementFile alloc] initWithDictionary: self.dictionary[@"file"]];
    }
    return _file;
}

- (void) setFile: (MSGraphAgreementFile*) val
{
    _file = val;
    self.dictionary[@"file"] = val;
}

- (NSArray*) files
{
    if(!_files){
        
    NSMutableArray *filesResult = [NSMutableArray array];
    NSArray *files = self.dictionary[@"files"];

    if ([files isKindOfClass:[NSArray class]]){
        for (id tempAgreementFileLocalization in files){
            [filesResult addObject:tempAgreementFileLocalization];
        }
    }

    _files = filesResult;
        
    }
    return _files;
}

- (void) setFiles: (NSArray*) val
{
    _files = val;
    self.dictionary[@"files"] = val;
}


@end
