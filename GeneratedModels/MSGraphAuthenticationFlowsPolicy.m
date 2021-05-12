// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAuthenticationFlowsPolicy()
{
    NSString* _authenticationFlowsPolicyDescription;
    NSString* _displayName;
    MSGraphSelfServiceSignUpAuthenticationFlowConfiguration* _selfServiceSignUp;
}
@end

@implementation MSGraphAuthenticationFlowsPolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.authenticationFlowsPolicy";
    }
    return self;
}
- (NSString*) authenticationFlowsPolicyDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setAuthenticationFlowsPolicyDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
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

- (MSGraphSelfServiceSignUpAuthenticationFlowConfiguration*) selfServiceSignUp
{
    if(!_selfServiceSignUp){
        _selfServiceSignUp = [[MSGraphSelfServiceSignUpAuthenticationFlowConfiguration alloc] initWithDictionary: self.dictionary[@"selfServiceSignUp"]];
    }
    return _selfServiceSignUp;
}

- (void) setSelfServiceSignUp: (MSGraphSelfServiceSignUpAuthenticationFlowConfiguration*) val
{
    _selfServiceSignUp = val;
    self.dictionary[@"selfServiceSignUp"] = val;
}


@end
