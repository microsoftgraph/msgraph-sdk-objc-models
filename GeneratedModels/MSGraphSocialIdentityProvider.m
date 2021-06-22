// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSocialIdentityProvider()
{
    NSString* _clientId;
    NSString* _clientSecret;
    NSString* _identityProviderType;
}
@end

@implementation MSGraphSocialIdentityProvider

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.socialIdentityProvider";
    }
    return self;
}
- (NSString*) clientId
{
    if([[NSNull null] isEqual:self.dictionary[@"clientId"]])
    {
        return nil;
    }   
    return self.dictionary[@"clientId"];
}

- (void) setClientId: (NSString*) val
{
    self.dictionary[@"clientId"] = val;
}

- (NSString*) clientSecret
{
    if([[NSNull null] isEqual:self.dictionary[@"clientSecret"]])
    {
        return nil;
    }   
    return self.dictionary[@"clientSecret"];
}

- (void) setClientSecret: (NSString*) val
{
    self.dictionary[@"clientSecret"] = val;
}

- (NSString*) identityProviderType
{
    if([[NSNull null] isEqual:self.dictionary[@"identityProviderType"]])
    {
        return nil;
    }   
    return self.dictionary[@"identityProviderType"];
}

- (void) setIdentityProviderType: (NSString*) val
{
    self.dictionary[@"identityProviderType"] = val;
}


@end
