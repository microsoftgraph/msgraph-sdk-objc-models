// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSecurityResourceTypeValue){

	MSGraphSecurityResourceTypeUnknown = 0,
	MSGraphSecurityResourceTypeAttacked = 1,
	MSGraphSecurityResourceTypeRelated = 2,
	MSGraphSecurityResourceTypeUnknownFutureValue = 3,
    MSGraphSecurityResourceTypeEndOfEnum
};

@interface MSGraphSecurityResourceType : NSObject

+(MSGraphSecurityResourceType*) unknown;
+(MSGraphSecurityResourceType*) attacked;
+(MSGraphSecurityResourceType*) related;
+(MSGraphSecurityResourceType*) unknownFutureValue;

+(MSGraphSecurityResourceType*) UnknownEnumValue;

+(MSGraphSecurityResourceType*) securityResourceTypeWithEnumValue:(MSGraphSecurityResourceTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSecurityResourceTypeValue enumValue;

@end


@interface NSString (MSGraphSecurityResourceType)

- (MSGraphSecurityResourceType*) toMSGraphSecurityResourceType;

@end
