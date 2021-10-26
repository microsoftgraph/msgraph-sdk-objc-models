// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphFilterModeValue){

	MSGraphFilterModeInclude = 0,
	MSGraphFilterModeExclude = 1,
    MSGraphFilterModeEndOfEnum
};

@interface MSGraphFilterMode : NSObject

+(MSGraphFilterMode*) include;
+(MSGraphFilterMode*) exclude;

+(MSGraphFilterMode*) UnknownEnumValue;

+(MSGraphFilterMode*) filterModeWithEnumValue:(MSGraphFilterModeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphFilterModeValue enumValue;

@end


@interface NSString (MSGraphFilterMode)

- (MSGraphFilterMode*) toMSGraphFilterMode;

@end
