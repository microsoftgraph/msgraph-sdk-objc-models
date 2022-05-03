// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphUserPurposeValue){

	MSGraphUserPurposeUser = 1,
	MSGraphUserPurposeLinked = 2,
	MSGraphUserPurposeShared = 3,
	MSGraphUserPurposeRoom = 4,
	MSGraphUserPurposeEquipment = 5,
	MSGraphUserPurposeOthers = 6,
	MSGraphUserPurposeUnknownFutureValue = 7,
    MSGraphUserPurposeEndOfEnum
};

@interface MSGraphUserPurpose : NSObject

+(MSGraphUserPurpose*) user;
+(MSGraphUserPurpose*) linked;
+(MSGraphUserPurpose*) shared;
+(MSGraphUserPurpose*) room;
+(MSGraphUserPurpose*) equipment;
+(MSGraphUserPurpose*) others;
+(MSGraphUserPurpose*) unknownFutureValue;

+(MSGraphUserPurpose*) UnknownEnumValue;

+(MSGraphUserPurpose*) userPurposeWithEnumValue:(MSGraphUserPurposeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphUserPurposeValue enumValue;

@end


@interface NSString (MSGraphUserPurpose)

- (MSGraphUserPurpose*) toMSGraphUserPurpose;

@end
