// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphPlannerContainerTypeValue){

	MSGraphPlannerContainerTypeGroup = 1,
	MSGraphPlannerContainerTypeUnknownFutureValue = 2,
	MSGraphPlannerContainerTypeRoster = 3,
    MSGraphPlannerContainerTypeEndOfEnum
};

@interface MSGraphPlannerContainerType : NSObject

+(MSGraphPlannerContainerType*) group;
+(MSGraphPlannerContainerType*) unknownFutureValue;
+(MSGraphPlannerContainerType*) roster;

+(MSGraphPlannerContainerType*) UnknownEnumValue;

+(MSGraphPlannerContainerType*) plannerContainerTypeWithEnumValue:(MSGraphPlannerContainerTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphPlannerContainerTypeValue enumValue;

@end


@interface NSString (MSGraphPlannerContainerType)

- (MSGraphPlannerContainerType*) toMSGraphPlannerContainerType;

@end
