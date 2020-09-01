// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphApiApplication()
{
    BOOL _acceptMappedClaims;
    NSArray* _knownClientApplications;
    NSArray* _oauth2PermissionScopes;
    NSArray* _preAuthorizedApplications;
    int32_t _requestedAccessTokenVersion;
}
@end

@implementation MSGraphApiApplication

- (BOOL) acceptMappedClaims
{
    _acceptMappedClaims = [self.dictionary[@"acceptMappedClaims"] boolValue];
    return _acceptMappedClaims;
}

- (void) setAcceptMappedClaims: (BOOL) val
{
    _acceptMappedClaims = val;
    self.dictionary[@"acceptMappedClaims"] = @(val);
}

- (NSArray*) knownClientApplications
{
    if([[NSNull null] isEqual:self.dictionary[@"knownClientApplications"]])
    {
        return nil;
    }   
    return self.dictionary[@"knownClientApplications"];
}

- (void) setKnownClientApplications: (NSArray*) val
{
    self.dictionary[@"knownClientApplications"] = val;
}

- (NSArray*) oauth2PermissionScopes
{
    if(!_oauth2PermissionScopes){
        
    NSMutableArray *oauth2PermissionScopesResult = [NSMutableArray array];
    NSArray *oauth2PermissionScopes = self.dictionary[@"oauth2PermissionScopes"];

    if ([oauth2PermissionScopes isKindOfClass:[NSArray class]]){
        for (id tempPermissionScope in oauth2PermissionScopes){
            [oauth2PermissionScopesResult addObject:tempPermissionScope];
        }
    }

    _oauth2PermissionScopes = oauth2PermissionScopesResult;
        
    }
    return _oauth2PermissionScopes;
}

- (void) setOauth2PermissionScopes: (NSArray*) val
{
    _oauth2PermissionScopes = val;
    self.dictionary[@"oauth2PermissionScopes"] = val;
}

- (NSArray*) preAuthorizedApplications
{
    if(!_preAuthorizedApplications){
        
    NSMutableArray *preAuthorizedApplicationsResult = [NSMutableArray array];
    NSArray *preAuthorizedApplications = self.dictionary[@"preAuthorizedApplications"];

    if ([preAuthorizedApplications isKindOfClass:[NSArray class]]){
        for (id tempPreAuthorizedApplication in preAuthorizedApplications){
            [preAuthorizedApplicationsResult addObject:tempPreAuthorizedApplication];
        }
    }

    _preAuthorizedApplications = preAuthorizedApplicationsResult;
        
    }
    return _preAuthorizedApplications;
}

- (void) setPreAuthorizedApplications: (NSArray*) val
{
    _preAuthorizedApplications = val;
    self.dictionary[@"preAuthorizedApplications"] = val;
}

- (int32_t) requestedAccessTokenVersion
{
    _requestedAccessTokenVersion = [self.dictionary[@"requestedAccessTokenVersion"] intValue];
    return _requestedAccessTokenVersion;
}

- (void) setRequestedAccessTokenVersion: (int32_t) val
{
    _requestedAccessTokenVersion = val;
    self.dictionary[@"requestedAccessTokenVersion"] = @(val);
}

@end
