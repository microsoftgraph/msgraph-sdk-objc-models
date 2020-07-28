// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphConditionalAccessPolicyStateValue){

	MSGraphConditionalAccessPolicyStateEnabled = 0,
	MSGraphConditionalAccessPolicyStateDisabled = 1,
	MSGraphConditionalAccessPolicyStateEnabledForReportingButNotEnforced = 2,
    MSGraphConditionalAccessPolicyStateEndOfEnum
};

@interface MSGraphConditionalAccessPolicyState : NSObject

+(MSGraphConditionalAccessPolicyState*) enabled;
+(MSGraphConditionalAccessPolicyState*) disabled;
+(MSGraphConditionalAccessPolicyState*) enabledForReportingButNotEnforced;

+(MSGraphConditionalAccessPolicyState*) UnknownEnumValue;

+(MSGraphConditionalAccessPolicyState*) conditionalAccessPolicyStateWithEnumValue:(MSGraphConditionalAccessPolicyStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphConditionalAccessPolicyStateValue enumValue;

@end


@interface NSString (MSGraphConditionalAccessPolicyState)

- (MSGraphConditionalAccessPolicyState*) toMSGraphConditionalAccessPolicyState;

@end
