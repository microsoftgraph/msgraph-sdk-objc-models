// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphExternalEmailOtpStateValue){

	MSGraphExternalEmailOtpStateDefault = 0,
	MSGraphExternalEmailOtpStateEnabled = 1,
	MSGraphExternalEmailOtpStateDisabled = 2,
	MSGraphExternalEmailOtpStateUnknownFutureValue = 3,
    MSGraphExternalEmailOtpStateEndOfEnum
};

@interface MSGraphExternalEmailOtpState : NSObject

+(MSGraphExternalEmailOtpState*) default;
+(MSGraphExternalEmailOtpState*) enabled;
+(MSGraphExternalEmailOtpState*) disabled;
+(MSGraphExternalEmailOtpState*) unknownFutureValue;

+(MSGraphExternalEmailOtpState*) UnknownEnumValue;

+(MSGraphExternalEmailOtpState*) externalEmailOtpStateWithEnumValue:(MSGraphExternalEmailOtpStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphExternalEmailOtpStateValue enumValue;

@end


@interface NSString (MSGraphExternalEmailOtpState)

- (MSGraphExternalEmailOtpState*) toMSGraphExternalEmailOtpState;

@end
