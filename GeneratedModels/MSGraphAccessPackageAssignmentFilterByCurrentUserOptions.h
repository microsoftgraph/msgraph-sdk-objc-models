// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsValue){

	MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsTarget = 1,
	MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsCreatedBy = 2,
	MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsUnknownFutureValue = 99,
    MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsEndOfEnum
};

@interface MSGraphAccessPackageAssignmentFilterByCurrentUserOptions : NSObject

+(MSGraphAccessPackageAssignmentFilterByCurrentUserOptions*) target;
+(MSGraphAccessPackageAssignmentFilterByCurrentUserOptions*) createdBy;
+(MSGraphAccessPackageAssignmentFilterByCurrentUserOptions*) unknownFutureValue;

+(MSGraphAccessPackageAssignmentFilterByCurrentUserOptions*) UnknownEnumValue;

+(MSGraphAccessPackageAssignmentFilterByCurrentUserOptions*) accessPackageAssignmentFilterByCurrentUserOptionsWithEnumValue:(MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphAccessPackageAssignmentFilterByCurrentUserOptionsValue enumValue;

@end


@interface NSString (MSGraphAccessPackageAssignmentFilterByCurrentUserOptions)

- (MSGraphAccessPackageAssignmentFilterByCurrentUserOptions*) toMSGraphAccessPackageAssignmentFilterByCurrentUserOptions;

@end
