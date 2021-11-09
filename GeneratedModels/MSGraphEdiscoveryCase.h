// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphEdiscoveryCustodian, MSGraphEdiscoveryLegalHold, MSGraphEdiscoveryNoncustodialDataSource, MSGraphEdiscoveryCaseOperation, MSGraphEdiscoveryReviewSet, MSGraphEdiscoveryCaseSettings, MSGraphEdiscoverySourceCollection, MSGraphEdiscoveryTag; 
#import "MSGraphEdiscoveryCaseStatus.h"


#import "MSGraphEntity.h"

@interface MSGraphEdiscoveryCase : MSGraphEntity

  @property (nullable, nonatomic, setter=setClosedBy:, getter=closedBy) MSGraphIdentitySet* closedBy;
    @property (nullable, nonatomic, setter=setClosedDateTime:, getter=closedDateTime) NSDate* closedDateTime;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setCaseDescription:, getter=caseDescription) NSString* caseDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setExternalId:, getter=externalId) NSString* externalId;
    @property (nullable, nonatomic, setter=setLastModifiedBy:, getter=lastModifiedBy) MSGraphIdentitySet* lastModifiedBy;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setStatus:, getter=status) MSGraphEdiscoveryCaseStatus* status;
    @property (nullable, nonatomic, setter=setCustodians:, getter=custodians) NSArray* custodians;
    @property (nullable, nonatomic, setter=setLegalHolds:, getter=legalHolds) NSArray* legalHolds;
    @property (nullable, nonatomic, setter=setNoncustodialDataSources:, getter=noncustodialDataSources) NSArray* noncustodialDataSources;
    @property (nullable, nonatomic, setter=setCaseOperations:, getter=caseOperations) NSArray* caseOperations;
    @property (nullable, nonatomic, setter=setReviewSets:, getter=reviewSets) NSArray* reviewSets;
    @property (nullable, nonatomic, setter=setSettings:, getter=settings) MSGraphEdiscoveryCaseSettings* settings;
    @property (nullable, nonatomic, setter=setSourceCollections:, getter=sourceCollections) NSArray* sourceCollections;
    @property (nullable, nonatomic, setter=setTags:, getter=tags) NSArray* tags;
  
@end
