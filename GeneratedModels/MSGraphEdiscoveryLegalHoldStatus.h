// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEdiscoveryLegalHoldStatusValue){

	MSGraphEdiscoveryLegalHoldStatusPending = 0,
	MSGraphEdiscoveryLegalHoldStatusError = 1,
	MSGraphEdiscoveryLegalHoldStatusSuccess = 2,
	MSGraphEdiscoveryLegalHoldStatusUnknownFutureValue = 3,
    MSGraphEdiscoveryLegalHoldStatusEndOfEnum
};

@interface MSGraphEdiscoveryLegalHoldStatus : NSObject

+(MSGraphEdiscoveryLegalHoldStatus*) pending;
+(MSGraphEdiscoveryLegalHoldStatus*) error;
+(MSGraphEdiscoveryLegalHoldStatus*) success;
+(MSGraphEdiscoveryLegalHoldStatus*) unknownFutureValue;

+(MSGraphEdiscoveryLegalHoldStatus*) UnknownEnumValue;

+(MSGraphEdiscoveryLegalHoldStatus*) legalHoldStatusWithEnumValue:(MSGraphEdiscoveryLegalHoldStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEdiscoveryLegalHoldStatusValue enumValue;

@end


@interface NSString (MSGraphEdiscoveryLegalHoldStatus)

- (MSGraphEdiscoveryLegalHoldStatus*) toMSGraphEdiscoveryLegalHoldStatus;

@end
