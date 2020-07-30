// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphThreatCategoryValue){

	MSGraphThreatCategoryUndefined = 0,
	MSGraphThreatCategorySpam = 1,
	MSGraphThreatCategoryPhishing = 2,
	MSGraphThreatCategoryMalware = 3,
	MSGraphThreatCategoryUnknownFutureValue = 4,
    MSGraphThreatCategoryEndOfEnum
};

@interface MSGraphThreatCategory : NSObject

+(MSGraphThreatCategory*) undefined;
+(MSGraphThreatCategory*) spam;
+(MSGraphThreatCategory*) phishing;
+(MSGraphThreatCategory*) malware;
+(MSGraphThreatCategory*) unknownFutureValue;

+(MSGraphThreatCategory*) UnknownEnumValue;

+(MSGraphThreatCategory*) threatCategoryWithEnumValue:(MSGraphThreatCategoryValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphThreatCategoryValue enumValue;

@end


@interface NSString (MSGraphThreatCategory)

- (MSGraphThreatCategory*) toMSGraphThreatCategory;

@end
