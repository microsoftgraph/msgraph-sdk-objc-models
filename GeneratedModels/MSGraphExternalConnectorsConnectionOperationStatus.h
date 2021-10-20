// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphExternalConnectorsConnectionOperationStatusValue){

	MSGraphExternalConnectorsConnectionOperationStatusUnspecified = 0,
	MSGraphExternalConnectorsConnectionOperationStatusInprogress = 1,
	MSGraphExternalConnectorsConnectionOperationStatusCompleted = 2,
	MSGraphExternalConnectorsConnectionOperationStatusFailed = 3,
	MSGraphExternalConnectorsConnectionOperationStatusUnknownFutureValue = 4,
    MSGraphExternalConnectorsConnectionOperationStatusEndOfEnum
};

@interface MSGraphExternalConnectorsConnectionOperationStatus : NSObject

+(MSGraphExternalConnectorsConnectionOperationStatus*) unspecified;
+(MSGraphExternalConnectorsConnectionOperationStatus*) inprogress;
+(MSGraphExternalConnectorsConnectionOperationStatus*) completed;
+(MSGraphExternalConnectorsConnectionOperationStatus*) failed;
+(MSGraphExternalConnectorsConnectionOperationStatus*) unknownFutureValue;

+(MSGraphExternalConnectorsConnectionOperationStatus*) UnknownEnumValue;

+(MSGraphExternalConnectorsConnectionOperationStatus*) connectionOperationStatusWithEnumValue:(MSGraphExternalConnectorsConnectionOperationStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphExternalConnectorsConnectionOperationStatusValue enumValue;

@end


@interface NSString (MSGraphExternalConnectorsConnectionOperationStatus)

- (MSGraphExternalConnectorsConnectionOperationStatus*) toMSGraphExternalConnectorsConnectionOperationStatus;

@end
