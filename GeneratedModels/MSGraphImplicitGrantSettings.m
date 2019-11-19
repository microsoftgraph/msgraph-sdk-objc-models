// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphImplicitGrantSettings()
{
    BOOL _enableIdTokenIssuance;
    BOOL _enableAccessTokenIssuance;
}
@end

@implementation MSGraphImplicitGrantSettings

- (BOOL) enableIdTokenIssuance
{
    _enableIdTokenIssuance = [self.dictionary[@"enableIdTokenIssuance"] boolValue];
    return _enableIdTokenIssuance;
}

- (void) setEnableIdTokenIssuance: (BOOL) val
{
    _enableIdTokenIssuance = val;
    self.dictionary[@"enableIdTokenIssuance"] = @(val);
}

- (BOOL) enableAccessTokenIssuance
{
    _enableAccessTokenIssuance = [self.dictionary[@"enableAccessTokenIssuance"] boolValue];
    return _enableAccessTokenIssuance;
}

- (void) setEnableAccessTokenIssuance: (BOOL) val
{
    _enableAccessTokenIssuance = val;
    self.dictionary[@"enableAccessTokenIssuance"] = @(val);
}

@end
