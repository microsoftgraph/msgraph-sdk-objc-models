// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEdiscoveryCaseActionValue){

	MSGraphEdiscoveryCaseActionContentExport = 0,
	MSGraphEdiscoveryCaseActionApplyTags = 1,
	MSGraphEdiscoveryCaseActionConvertToPdf = 2,
	MSGraphEdiscoveryCaseActionIndex = 3,
	MSGraphEdiscoveryCaseActionEstimateStatistics = 4,
	MSGraphEdiscoveryCaseActionAddToReviewSet = 5,
	MSGraphEdiscoveryCaseActionUnknownFutureValue = 6,
    MSGraphEdiscoveryCaseActionEndOfEnum
};

@interface MSGraphEdiscoveryCaseAction : NSObject

+(MSGraphEdiscoveryCaseAction*) contentExport;
+(MSGraphEdiscoveryCaseAction*) applyTags;
+(MSGraphEdiscoveryCaseAction*) convertToPdf;
+(MSGraphEdiscoveryCaseAction*) index;
+(MSGraphEdiscoveryCaseAction*) estimateStatistics;
+(MSGraphEdiscoveryCaseAction*) addToReviewSet;
+(MSGraphEdiscoveryCaseAction*) unknownFutureValue;

+(MSGraphEdiscoveryCaseAction*) UnknownEnumValue;

+(MSGraphEdiscoveryCaseAction*) caseActionWithEnumValue:(MSGraphEdiscoveryCaseActionValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEdiscoveryCaseActionValue enumValue;

@end


@interface NSString (MSGraphEdiscoveryCaseAction)

- (MSGraphEdiscoveryCaseAction*) toMSGraphEdiscoveryCaseAction;

@end
