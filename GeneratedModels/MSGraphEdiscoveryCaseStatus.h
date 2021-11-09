// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphEdiscoveryCaseStatusValue){

	MSGraphEdiscoveryCaseStatusUnknown = 0,
	MSGraphEdiscoveryCaseStatusActive = 1,
	MSGraphEdiscoveryCaseStatusPendingDelete = 2,
	MSGraphEdiscoveryCaseStatusClosing = 3,
	MSGraphEdiscoveryCaseStatusClosed = 4,
	MSGraphEdiscoveryCaseStatusClosedWithError = 5,
    MSGraphEdiscoveryCaseStatusEndOfEnum
};

@interface MSGraphEdiscoveryCaseStatus : NSObject

+(MSGraphEdiscoveryCaseStatus*) unknown;
+(MSGraphEdiscoveryCaseStatus*) active;
+(MSGraphEdiscoveryCaseStatus*) pendingDelete;
+(MSGraphEdiscoveryCaseStatus*) closing;
+(MSGraphEdiscoveryCaseStatus*) closed;
+(MSGraphEdiscoveryCaseStatus*) closedWithError;

+(MSGraphEdiscoveryCaseStatus*) UnknownEnumValue;

+(MSGraphEdiscoveryCaseStatus*) caseStatusWithEnumValue:(MSGraphEdiscoveryCaseStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphEdiscoveryCaseStatusValue enumValue;

@end


@interface NSString (MSGraphEdiscoveryCaseStatus)

- (MSGraphEdiscoveryCaseStatus*) toMSGraphEdiscoveryCaseStatus;

@end
