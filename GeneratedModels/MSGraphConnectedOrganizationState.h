// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphConnectedOrganizationStateValue){

	MSGraphConnectedOrganizationStateConfigured = 0,
	MSGraphConnectedOrganizationStateProposed = 1,
	MSGraphConnectedOrganizationStateUnknownFutureValue = 2,
    MSGraphConnectedOrganizationStateEndOfEnum
};

@interface MSGraphConnectedOrganizationState : NSObject

+(MSGraphConnectedOrganizationState*) configured;
+(MSGraphConnectedOrganizationState*) proposed;
+(MSGraphConnectedOrganizationState*) unknownFutureValue;

+(MSGraphConnectedOrganizationState*) UnknownEnumValue;

+(MSGraphConnectedOrganizationState*) connectedOrganizationStateWithEnumValue:(MSGraphConnectedOrganizationStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphConnectedOrganizationStateValue enumValue;

@end


@interface NSString (MSGraphConnectedOrganizationState)

- (MSGraphConnectedOrganizationState*) toMSGraphConnectedOrganizationState;

@end
