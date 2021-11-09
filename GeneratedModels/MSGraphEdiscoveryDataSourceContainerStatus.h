// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEdiscoveryDataSourceContainerStatusValue){

	MSGraphEdiscoveryDataSourceContainerStatusActive = 1,
	MSGraphEdiscoveryDataSourceContainerStatusReleased = 2,
	MSGraphEdiscoveryDataSourceContainerStatusUnknownFutureValue = 3,
    MSGraphEdiscoveryDataSourceContainerStatusEndOfEnum
};

@interface MSGraphEdiscoveryDataSourceContainerStatus : NSObject

+(MSGraphEdiscoveryDataSourceContainerStatus*) active;
+(MSGraphEdiscoveryDataSourceContainerStatus*) released;
+(MSGraphEdiscoveryDataSourceContainerStatus*) unknownFutureValue;

+(MSGraphEdiscoveryDataSourceContainerStatus*) UnknownEnumValue;

+(MSGraphEdiscoveryDataSourceContainerStatus*) dataSourceContainerStatusWithEnumValue:(MSGraphEdiscoveryDataSourceContainerStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEdiscoveryDataSourceContainerStatusValue enumValue;

@end


@interface NSString (MSGraphEdiscoveryDataSourceContainerStatus)

- (MSGraphEdiscoveryDataSourceContainerStatus*) toMSGraphEdiscoveryDataSourceContainerStatus;

@end
