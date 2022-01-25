// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentity, MSGraphIdentitySet, MSGraphDataSubject, MSGraphSubjectRightsRequestHistory, MSGraphSubjectRightsRequestDetail, MSGraphSubjectRightsRequestStageDetail, MSGraphAuthoredNote, MSGraphTeam; 
#import "MSGraphDataSubjectType.h"
#import "MSGraphSubjectRightsRequestStatus.h"
#import "MSGraphSubjectRightsRequestType.h"


#import "MSGraphEntity.h"

@interface MSGraphSubjectRightsRequest : MSGraphEntity

  @property (nullable, nonatomic, setter=setAssignedTo:, getter=assignedTo) MSGraphIdentity* assignedTo;
    @property (nullable, nonatomic, setter=setClosedDateTime:, getter=closedDateTime) NSDate* closedDateTime;
    @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDataSubject:, getter=dataSubject) MSGraphDataSubject* dataSubject;
    @property (nullable, nonatomic, setter=setDataSubjectType:, getter=dataSubjectType) MSGraphDataSubjectType* dataSubjectType;
    @property (nullable, nonatomic, setter=setSubjectRightsRequestDescription:, getter=subjectRightsRequestDescription) NSString* subjectRightsRequestDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setHistory:, getter=history) NSArray* history;
    @property (nullable, nonatomic, setter=setInsight:, getter=insight) MSGraphSubjectRightsRequestDetail* insight;
    @property (nullable, nonatomic, setter=setInternalDueDateTime:, getter=internalDueDateTime) NSDate* internalDueDateTime;
    @property (nullable, nonatomic, setter=setLastModifiedBy:, getter=lastModifiedBy) MSGraphIdentitySet* lastModifiedBy;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setRegulations:, getter=regulations) NSArray* regulations;
    @property (nullable, nonatomic, setter=setStages:, getter=stages) NSArray* stages;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphSubjectRightsRequestStatus* status;
    @property (nullable, nonatomic, setter=setType:, getter=type) MSGraphSubjectRightsRequestType* type;
    @property (nullable, nonatomic, setter=setNotes:, getter=notes) NSArray* notes;
    @property (nullable, nonatomic, setter=setTeam:, getter=team) MSGraphTeam* team;
  
@end
