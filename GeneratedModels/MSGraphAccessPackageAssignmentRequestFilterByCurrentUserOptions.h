// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsValue){

	MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsTarget = 1,
	MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsCreatedBy = 2,
	MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsApprover = 3,
	MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsUnknownFutureValue = 99,
    MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsEndOfEnum
};

@interface MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions : NSObject

+(MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions*) target;
+(MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions*) createdBy;
+(MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions*) approver;
+(MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions*) unknownFutureValue;

+(MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions*) UnknownEnumValue;

+(MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions*) accessPackageAssignmentRequestFilterByCurrentUserOptionsWithEnumValue:(MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptionsValue enumValue;

@end


@interface NSString (MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions)

- (MSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions*) toMSGraphAccessPackageAssignmentRequestFilterByCurrentUserOptions;

@end
