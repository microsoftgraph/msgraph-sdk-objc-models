// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDeviceManagementReportStatusValue){

	MSGraphDeviceManagementReportStatusUnknown = 0,
	MSGraphDeviceManagementReportStatusNotStarted = 1,
	MSGraphDeviceManagementReportStatusInProgress = 2,
	MSGraphDeviceManagementReportStatusCompleted = 3,
	MSGraphDeviceManagementReportStatusFailed = 4,
    MSGraphDeviceManagementReportStatusEndOfEnum
};

@interface MSGraphDeviceManagementReportStatus : NSObject

+(MSGraphDeviceManagementReportStatus*) unknown;
+(MSGraphDeviceManagementReportStatus*) notStarted;
+(MSGraphDeviceManagementReportStatus*) inProgress;
+(MSGraphDeviceManagementReportStatus*) completed;
+(MSGraphDeviceManagementReportStatus*) failed;

+(MSGraphDeviceManagementReportStatus*) UnknownEnumValue;

+(MSGraphDeviceManagementReportStatus*) deviceManagementReportStatusWithEnumValue:(MSGraphDeviceManagementReportStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDeviceManagementReportStatusValue enumValue;

@end


@interface NSString (MSGraphDeviceManagementReportStatus)

- (MSGraphDeviceManagementReportStatus*) toMSGraphDeviceManagementReportStatus;

@end
