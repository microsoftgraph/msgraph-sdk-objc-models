// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphSubjectRightsRequestStatusValue){

	MSGraphSubjectRightsRequestStatusActive = 0,
	MSGraphSubjectRightsRequestStatusClosed = 1,
	MSGraphSubjectRightsRequestStatusUnknownFutureValue = 2,
    MSGraphSubjectRightsRequestStatusEndOfEnum
};

@interface MSGraphSubjectRightsRequestStatus : NSObject

+(MSGraphSubjectRightsRequestStatus*) active;
+(MSGraphSubjectRightsRequestStatus*) closed;
+(MSGraphSubjectRightsRequestStatus*) unknownFutureValue;

+(MSGraphSubjectRightsRequestStatus*) UnknownEnumValue;

+(MSGraphSubjectRightsRequestStatus*) subjectRightsRequestStatusWithEnumValue:(MSGraphSubjectRightsRequestStatusValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphSubjectRightsRequestStatusValue enumValue;

@end


@interface NSString (MSGraphSubjectRightsRequestStatus)

- (MSGraphSubjectRightsRequestStatus*) toMSGraphSubjectRightsRequestStatus;

@end
