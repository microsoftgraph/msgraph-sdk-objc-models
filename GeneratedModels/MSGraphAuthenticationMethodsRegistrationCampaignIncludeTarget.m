// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAuthenticationMethodsRegistrationCampaignIncludeTarget()
{
    NSString* _authenticationMethodsRegistrationCampaignIncludeTargetId;
    NSString* _targetedAuthenticationMethod;
    MSGraphAuthenticationMethodTargetType* _targetType;
}
@end

@implementation MSGraphAuthenticationMethodsRegistrationCampaignIncludeTarget

- (NSString*) authenticationMethodsRegistrationCampaignIncludeTargetId
{
    return self.dictionary[@"id"];
}

- (void) setAuthenticationMethodsRegistrationCampaignIncludeTargetId: (NSString*) val
{
    self.dictionary[@"id"] = val;
}

- (NSString*) targetedAuthenticationMethod
{
    if([[NSNull null] isEqual:self.dictionary[@"targetedAuthenticationMethod"]])
    {
        return nil;
    }   
    return self.dictionary[@"targetedAuthenticationMethod"];
}

- (void) setTargetedAuthenticationMethod: (NSString*) val
{
    self.dictionary[@"targetedAuthenticationMethod"] = val;
}

- (MSGraphAuthenticationMethodTargetType*) targetType
{
    if(!_targetType){
        _targetType = [self.dictionary[@"targetType"] toMSGraphAuthenticationMethodTargetType];
    }
    return _targetType;
}

- (void) setTargetType: (MSGraphAuthenticationMethodTargetType*) val
{
    _targetType = val;
    self.dictionary[@"targetType"] = val;
}

@end
