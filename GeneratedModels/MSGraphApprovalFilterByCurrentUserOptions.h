// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphApprovalFilterByCurrentUserOptionsValue){

	MSGraphApprovalFilterByCurrentUserOptionsTarget = 0,
	MSGraphApprovalFilterByCurrentUserOptionsCreatedBy = 1,
	MSGraphApprovalFilterByCurrentUserOptionsApprover = 2,
	MSGraphApprovalFilterByCurrentUserOptionsUnknownFutureValue = 3,
    MSGraphApprovalFilterByCurrentUserOptionsEndOfEnum
};

@interface MSGraphApprovalFilterByCurrentUserOptions : NSObject

+(MSGraphApprovalFilterByCurrentUserOptions*) target;
+(MSGraphApprovalFilterByCurrentUserOptions*) createdBy;
+(MSGraphApprovalFilterByCurrentUserOptions*) approver;
+(MSGraphApprovalFilterByCurrentUserOptions*) unknownFutureValue;

+(MSGraphApprovalFilterByCurrentUserOptions*) UnknownEnumValue;

+(MSGraphApprovalFilterByCurrentUserOptions*) approvalFilterByCurrentUserOptionsWithEnumValue:(MSGraphApprovalFilterByCurrentUserOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphApprovalFilterByCurrentUserOptionsValue enumValue;

@end


@interface NSString (MSGraphApprovalFilterByCurrentUserOptions)

- (MSGraphApprovalFilterByCurrentUserOptions*) toMSGraphApprovalFilterByCurrentUserOptions;

@end
