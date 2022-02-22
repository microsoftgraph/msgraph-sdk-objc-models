// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRegistrationEnforcement()
{
    MSGraphAuthenticationMethodsRegistrationCampaign* _authenticationMethodsRegistrationCampaign;
}
@end

@implementation MSGraphRegistrationEnforcement

- (MSGraphAuthenticationMethodsRegistrationCampaign*) authenticationMethodsRegistrationCampaign
{
    if(!_authenticationMethodsRegistrationCampaign){
        _authenticationMethodsRegistrationCampaign = [[MSGraphAuthenticationMethodsRegistrationCampaign alloc] initWithDictionary: self.dictionary[@"authenticationMethodsRegistrationCampaign"]];
    }
    return _authenticationMethodsRegistrationCampaign;
}

- (void) setAuthenticationMethodsRegistrationCampaign: (MSGraphAuthenticationMethodsRegistrationCampaign*) val
{
    _authenticationMethodsRegistrationCampaign = val;
    self.dictionary[@"authenticationMethodsRegistrationCampaign"] = val;
}

@end
