// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphConditionalAccessGrantControlValue){

	MSGraphConditionalAccessGrantControlBlock = 0,
	MSGraphConditionalAccessGrantControlMfa = 1,
	MSGraphConditionalAccessGrantControlCompliantDevice = 2,
	MSGraphConditionalAccessGrantControlDomainJoinedDevice = 3,
	MSGraphConditionalAccessGrantControlApprovedApplication = 4,
	MSGraphConditionalAccessGrantControlCompliantApplication = 5,
	MSGraphConditionalAccessGrantControlUnknownFutureValue = 6,
    MSGraphConditionalAccessGrantControlEndOfEnum
};

@interface MSGraphConditionalAccessGrantControl : NSObject

+(MSGraphConditionalAccessGrantControl*) block;
+(MSGraphConditionalAccessGrantControl*) mfa;
+(MSGraphConditionalAccessGrantControl*) compliantDevice;
+(MSGraphConditionalAccessGrantControl*) domainJoinedDevice;
+(MSGraphConditionalAccessGrantControl*) approvedApplication;
+(MSGraphConditionalAccessGrantControl*) compliantApplication;
+(MSGraphConditionalAccessGrantControl*) unknownFutureValue;

+(MSGraphConditionalAccessGrantControl*) UnknownEnumValue;

+(MSGraphConditionalAccessGrantControl*) conditionalAccessGrantControlWithEnumValue:(MSGraphConditionalAccessGrantControlValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphConditionalAccessGrantControlValue enumValue;

@end


@interface NSString (MSGraphConditionalAccessGrantControl)

- (MSGraphConditionalAccessGrantControl*) toMSGraphConditionalAccessGrantControl;

@end
