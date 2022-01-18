// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphDataSubjectTypeValue){

	MSGraphDataSubjectTypeCustomer = 0,
	MSGraphDataSubjectTypeCurrentEmployee = 1,
	MSGraphDataSubjectTypeFormerEmployee = 2,
	MSGraphDataSubjectTypeProspectiveEmployee = 3,
	MSGraphDataSubjectTypeStudent = 4,
	MSGraphDataSubjectTypeTeacher = 5,
	MSGraphDataSubjectTypeFaculty = 6,
	MSGraphDataSubjectTypeOther = 7,
	MSGraphDataSubjectTypeUnknownFutureValue = 8,
    MSGraphDataSubjectTypeEndOfEnum
};

@interface MSGraphDataSubjectType : NSObject

+(MSGraphDataSubjectType*) customer;
+(MSGraphDataSubjectType*) currentEmployee;
+(MSGraphDataSubjectType*) formerEmployee;
+(MSGraphDataSubjectType*) prospectiveEmployee;
+(MSGraphDataSubjectType*) student;
+(MSGraphDataSubjectType*) teacher;
+(MSGraphDataSubjectType*) faculty;
+(MSGraphDataSubjectType*) other;
+(MSGraphDataSubjectType*) unknownFutureValue;

+(MSGraphDataSubjectType*) UnknownEnumValue;

+(MSGraphDataSubjectType*) dataSubjectTypeWithEnumValue:(MSGraphDataSubjectTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphDataSubjectTypeValue enumValue;

@end


@interface NSString (MSGraphDataSubjectType)

- (MSGraphDataSubjectType*) toMSGraphDataSubjectType;

@end
