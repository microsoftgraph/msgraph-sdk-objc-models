// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphWorkbookOperationStatusValue){

	MSGraphWorkbookOperationStatusNotStarted = 0,
	MSGraphWorkbookOperationStatusRunning = 1,
	MSGraphWorkbookOperationStatusSucceeded = 2,
	MSGraphWorkbookOperationStatusFailed = 3,
    MSGraphWorkbookOperationStatusEndOfEnum
};

@interface MSGraphWorkbookOperationStatus : NSObject

+(MSGraphWorkbookOperationStatus*) notStarted;
+(MSGraphWorkbookOperationStatus*) running;
+(MSGraphWorkbookOperationStatus*) succeeded;
+(MSGraphWorkbookOperationStatus*) failed;

+(MSGraphWorkbookOperationStatus*) UnknownEnumValue;

+(MSGraphWorkbookOperationStatus*) workbookOperationStatusWithEnumValue:(MSGraphWorkbookOperationStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphWorkbookOperationStatusValue enumValue;

@end


@interface NSString (MSGraphWorkbookOperationStatus)

- (MSGraphWorkbookOperationStatus*) toMSGraphWorkbookOperationStatus;

@end
