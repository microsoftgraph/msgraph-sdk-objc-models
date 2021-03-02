// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAgreementAcceptanceStateValue){

	MSGraphAgreementAcceptanceStateAccepted = 2,
	MSGraphAgreementAcceptanceStateDeclined = 3,
	MSGraphAgreementAcceptanceStateUnknownFutureValue = 5,
    MSGraphAgreementAcceptanceStateEndOfEnum
};

@interface MSGraphAgreementAcceptanceState : NSObject

+(MSGraphAgreementAcceptanceState*) accepted;
+(MSGraphAgreementAcceptanceState*) declined;
+(MSGraphAgreementAcceptanceState*) unknownFutureValue;

+(MSGraphAgreementAcceptanceState*) UnknownEnumValue;

+(MSGraphAgreementAcceptanceState*) agreementAcceptanceStateWithEnumValue:(MSGraphAgreementAcceptanceStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAgreementAcceptanceStateValue enumValue;

@end


@interface NSString (MSGraphAgreementAcceptanceState)

- (MSGraphAgreementAcceptanceState*) toMSGraphAgreementAcceptanceState;

@end
