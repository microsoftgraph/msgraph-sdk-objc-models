// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphContactRelationship.h"


#import "MSObject.h"

@interface MSGraphRelatedContact : MSObject

@property (nonatomic, setter=setAccessConsent:, getter=accessConsent) BOOL accessConsent;
@property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nonnull, nonatomic, setter=setEmailAddress:, getter=emailAddress) NSString* emailAddress;
@property (nullable, nonatomic, setter=setMobilePhone:, getter=mobilePhone) NSString* mobilePhone;
@property (nonnull, nonatomic, setter=setRelationship:, getter=relationship) MSGraphContactRelationship* relationship;

@end
