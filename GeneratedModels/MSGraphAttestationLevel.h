// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAttestationLevelValue){

	MSGraphAttestationLevelAttested = 0,
	MSGraphAttestationLevelNotAttested = 1,
	MSGraphAttestationLevelUnknownFutureValue = 2,
    MSGraphAttestationLevelEndOfEnum
};

@interface MSGraphAttestationLevel : NSObject

+(MSGraphAttestationLevel*) attested;
+(MSGraphAttestationLevel*) notAttested;
+(MSGraphAttestationLevel*) unknownFutureValue;

+(MSGraphAttestationLevel*) UnknownEnumValue;

+(MSGraphAttestationLevel*) attestationLevelWithEnumValue:(MSGraphAttestationLevelValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAttestationLevelValue enumValue;

@end


@interface NSString (MSGraphAttestationLevel)

- (MSGraphAttestationLevel*) toMSGraphAttestationLevel;

@end
