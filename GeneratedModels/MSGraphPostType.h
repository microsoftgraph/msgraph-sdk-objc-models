// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPostTypeValue){

	MSGraphPostTypeRegular = 0,
	MSGraphPostTypeQuick = 1,
	MSGraphPostTypeStrategic = 2,
	MSGraphPostTypeUnknownFutureValue = 3,
    MSGraphPostTypeEndOfEnum
};

@interface MSGraphPostType : NSObject

+(MSGraphPostType*) regular;
+(MSGraphPostType*) quick;
+(MSGraphPostType*) strategic;
+(MSGraphPostType*) unknownFutureValue;

+(MSGraphPostType*) UnknownEnumValue;

+(MSGraphPostType*) postTypeWithEnumValue:(MSGraphPostTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPostTypeValue enumValue;

@end


@interface NSString (MSGraphPostType)

- (MSGraphPostType*) toMSGraphPostType;

@end
