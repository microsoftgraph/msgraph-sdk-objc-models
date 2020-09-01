// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphEducationTerm, MSGraphGroup, MSGraphEducationUser, MSGraphEducationSchool; 
#import "MSGraphEducationExternalSource.h"


#import "MSGraphEntity.h"

@interface MSGraphEducationClass : MSGraphEntity

  @property (nullable, nonatomic, setter=setClassCode:, getter=classCode) NSString* classCode;
    @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setEducationClassDescription:, getter=educationClassDescription) NSString* educationClassDescription;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setExternalId:, getter=externalId) NSString* externalId;
    @property (nullable, nonatomic, setter=setExternalName:, getter=externalName) NSString* externalName;
    @property (nullable, nonatomic, setter=setExternalSource:, getter=externalSource) MSGraphEducationExternalSource* externalSource;
    @property (nonnull, nonatomic, setter=setMailNickname:, getter=mailNickname) NSString* mailNickname;
    @property (nullable, nonatomic, setter=setTerm:, getter=term) MSGraphEducationTerm* term;
    @property (nullable, nonatomic, setter=setGroup:, getter=group) MSGraphGroup* group;
    @property (nullable, nonatomic, setter=setMembers:, getter=members) NSArray* members;
    @property (nullable, nonatomic, setter=setSchools:, getter=schools) NSArray* schools;
    @property (nullable, nonatomic, setter=setTeachers:, getter=teachers) NSArray* teachers;
  
@end
