// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphExpirationPatternTypeValue){

	MSGraphExpirationPatternTypeNotSpecified = 0,
	MSGraphExpirationPatternTypeNoExpiration = 1,
	MSGraphExpirationPatternTypeAfterDateTime = 2,
	MSGraphExpirationPatternTypeAfterDuration = 3,
    MSGraphExpirationPatternTypeEndOfEnum
};

@interface MSGraphExpirationPatternType : NSObject

+(MSGraphExpirationPatternType*) notSpecified;
+(MSGraphExpirationPatternType*) noExpiration;
+(MSGraphExpirationPatternType*) afterDateTime;
+(MSGraphExpirationPatternType*) afterDuration;

+(MSGraphExpirationPatternType*) UnknownEnumValue;

+(MSGraphExpirationPatternType*) expirationPatternTypeWithEnumValue:(MSGraphExpirationPatternTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphExpirationPatternTypeValue enumValue;

@end


@interface NSString (MSGraphExpirationPatternType)

- (MSGraphExpirationPatternType*) toMSGraphExpirationPatternType;

@end
