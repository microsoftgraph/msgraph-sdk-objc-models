// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOAuth2PermissionGrant()
{
    NSString* _clientId;
    NSString* _consentType;
    NSString* _principalId;
    NSString* _resourceId;
    NSString* _scope;
}
@end

@implementation MSGraphOAuth2PermissionGrant

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.oAuth2PermissionGrant";
    }
    return self;
}
- (NSString*) clientId
{
    return self.dictionary[@"clientId"];
}

- (void) setClientId: (NSString*) val
{
    self.dictionary[@"clientId"] = val;
}

- (NSString*) consentType
{
    if([[NSNull null] isEqual:self.dictionary[@"consentType"]])
    {
        return nil;
    }   
    return self.dictionary[@"consentType"];
}

- (void) setConsentType: (NSString*) val
{
    self.dictionary[@"consentType"] = val;
}

- (NSString*) principalId
{
    if([[NSNull null] isEqual:self.dictionary[@"principalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"principalId"];
}

- (void) setPrincipalId: (NSString*) val
{
    self.dictionary[@"principalId"] = val;
}

- (NSString*) resourceId
{
    return self.dictionary[@"resourceId"];
}

- (void) setResourceId: (NSString*) val
{
    self.dictionary[@"resourceId"] = val;
}

- (NSString*) scope
{
    if([[NSNull null] isEqual:self.dictionary[@"scope"]])
    {
        return nil;
    }   
    return self.dictionary[@"scope"];
}

- (void) setScope: (NSString*) val
{
    self.dictionary[@"scope"] = val;
}


@end
