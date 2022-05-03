// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphLongRunningOperationStatusValue){

	MSGraphLongRunningOperationStatusNotStarted = 0,
	MSGraphLongRunningOperationStatusRunning = 1,
	MSGraphLongRunningOperationStatusSucceeded = 2,
	MSGraphLongRunningOperationStatusFailed = 3,
	MSGraphLongRunningOperationStatusUnknownFutureValue = 4,
    MSGraphLongRunningOperationStatusEndOfEnum
};

@interface MSGraphLongRunningOperationStatus : NSObject

+(MSGraphLongRunningOperationStatus*) notStarted;
+(MSGraphLongRunningOperationStatus*) running;
+(MSGraphLongRunningOperationStatus*) succeeded;
+(MSGraphLongRunningOperationStatus*) failed;
+(MSGraphLongRunningOperationStatus*) unknownFutureValue;

+(MSGraphLongRunningOperationStatus*) UnknownEnumValue;

+(MSGraphLongRunningOperationStatus*) longRunningOperationStatusWithEnumValue:(MSGraphLongRunningOperationStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphLongRunningOperationStatusValue enumValue;

@end


@interface NSString (MSGraphLongRunningOperationStatus)

- (MSGraphLongRunningOperationStatus*) toMSGraphLongRunningOperationStatus;

@end
