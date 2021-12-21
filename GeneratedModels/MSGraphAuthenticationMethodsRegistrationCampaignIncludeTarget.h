// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAuthenticationMethodTargetType.h"


#import "MSObject.h"

@interface MSGraphAuthenticationMethodsRegistrationCampaignIncludeTarget : MSObject

@property (nonnull, nonatomic, setter=setAuthenticationMethodsRegistrationCampaignIncludeTargetId:, getter=authenticationMethodsRegistrationCampaignIncludeTargetId) NSString* authenticationMethodsRegistrationCampaignIncludeTargetId;
@property (nullable, nonatomic, setter=setTargetedAuthenticationMethod:, getter=targetedAuthenticationMethod) NSString* targetedAuthenticationMethod;
@property (nonnull, nonatomic, setter=setTargetType:, getter=targetType) MSGraphAuthenticationMethodTargetType* targetType;

@end
