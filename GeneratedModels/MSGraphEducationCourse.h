// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphEducationCourse : MSObject

@property (nullable, nonatomic, setter=setCourseNumber:, getter=courseNumber) NSString* courseNumber;
@property (nullable, nonatomic, setter=setEducationCourseDescription:, getter=educationCourseDescription) NSString* educationCourseDescription;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
@property (nullable, nonatomic, setter=setExternalId:, getter=externalId) NSString* externalId;
@property (nullable, nonatomic, setter=setSubject:, getter=subject) NSString* subject;

@end
