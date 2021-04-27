// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIdentityApiConnector()
{
    MSGraphApiAuthenticationConfigurationBase* _authenticationConfiguration;
    NSString* _displayName;
    NSString* _targetUrl;
}
@end

@implementation MSGraphIdentityApiConnector

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.identityApiConnector";
    }
    return self;
}
- (MSGraphApiAuthenticationConfigurationBase*) authenticationConfiguration
{
    if(!_authenticationConfiguration){
        _authenticationConfiguration = [[MSGraphApiAuthenticationConfigurationBase alloc] initWithDictionary: self.dictionary[@"authenticationConfiguration"]];
    }
    return _authenticationConfiguration;
}

- (void) setAuthenticationConfiguration: (MSGraphApiAuthenticationConfigurationBase*) val
{
    _authenticationConfiguration = val;
    self.dictionary[@"authenticationConfiguration"] = val;
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

- (NSString*) targetUrl
{
    if([[NSNull null] isEqual:self.dictionary[@"targetUrl"]])
    {
        return nil;
    }   
    return self.dictionary[@"targetUrl"];
}

- (void) setTargetUrl: (NSString*) val
{
    self.dictionary[@"targetUrl"] = val;
}


@end
