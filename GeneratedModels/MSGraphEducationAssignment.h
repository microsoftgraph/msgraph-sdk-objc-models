// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEducationAssignmentRecipient, MSGraphIdentitySet, MSGraphEducationAssignmentGradeType, MSGraphEducationItemBody, MSGraphEducationCategory, MSGraphEducationAssignmentResource, MSGraphEducationRubric, MSGraphEducationSubmission; 
#import "MSGraphEducationAddedStudentAction.h"
#import "MSGraphEducationAssignmentStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphEducationAssignment : MSGraphEntity

  @property (nullable, nonatomic, setter=setAddedStudentAction:, getter=addedStudentAction) MSGraphEducationAddedStudentAction* addedStudentAction;
    @property (nonatomic, setter=setAllowLateSubmissions:, getter=allowLateSubmissions) BOOL allowLateSubmissions;
    @property (nonatomic, setter=setAllowStudentsToAddResourcesToSubmission:, getter=allowStudentsToAddResourcesToSubmission) BOOL allowStudentsToAddResourcesToSubmission;
    @property (nullable, nonatomic, setter=setAssignDateTime:, getter=assignDateTime) NSDate* assignDateTime;
    @property (nullable, nonatomic, setter=setAssignedDateTime:, getter=assignedDateTime) NSDate* assignedDateTime;
    @property (nullable, nonatomic, setter=setAssignTo:, getter=assignTo) MSGraphEducationAssignmentRecipient* assignTo;
    @property (nullable, nonatomic, setter=setClassId:, getter=classId) NSString* classId;
    @property (nullable, nonatomic, setter=setCloseDateTime:, getter=closeDateTime) NSDate* closeDateTime;
    @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setDueDateTime:, getter=dueDateTime) NSDate* dueDateTime;
    @property (nullable, nonatomic, setter=setGrading:, getter=grading) MSGraphEducationAssignmentGradeType* grading;
    @property (nullable, nonatomic, setter=setInstructions:, getter=instructions) MSGraphEducationItemBody* instructions;
    @property (nullable, nonatomic, setter=setLastModifiedBy:, getter=lastModifiedBy) MSGraphIdentitySet* lastModifiedBy;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setNotificationChannelUrl:, getter=notificationChannelUrl) NSString* notificationChannelUrl;
    @property (nullable, nonatomic, setter=setResourcesFolderUrl:, getter=resourcesFolderUrl) NSString* resourcesFolderUrl;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphEducationAssignmentStatus* status;
    @property (nullable, nonatomic, setter=setWebUrl:, getter=webUrl) NSString* webUrl;
    @property (nullable, nonatomic, setter=setCategories:, getter=categories) NSArray* categories;
    @property (nullable, nonatomic, setter=setResources:, getter=resources) NSArray* resources;
    @property (nullable, nonatomic, setter=setRubric:, getter=rubric) MSGraphEducationRubric* rubric;
    @property (nullable, nonatomic, setter=setSubmissions:, getter=submissions) NSArray* submissions;
  
@end
