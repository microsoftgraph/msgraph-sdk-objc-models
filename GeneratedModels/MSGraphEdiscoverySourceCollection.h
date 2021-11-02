// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphIdentitySet, MSGraphEdiscoveryDataSource, MSGraphEdiscoveryAddToReviewSetOperation, MSGraphEdiscoveryEstimateStatisticsOperation, MSGraphEdiscoveryNoncustodialDataSource; 
#import "MSGraphEdiscoveryDataSourceScopes.h"


#import "MSGraphEntity.h"

@interface MSGraphEdiscoverySourceCollection : MSGraphEntity

  @property (nullable, nonatomic, setter=setContentQuery:, getter=contentQuery) NSString* contentQuery;
    @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphIdentitySet* createdBy;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setDataSourceScopes:, getter=dataSourceScopes) MSGraphEdiscoveryDataSourceScopes* dataSourceScopes;
    @property (nullable, nonatomic, setter=setSourceCollectionDescription:, getter=sourceCollectionDescription) NSString* sourceCollectionDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setLastModifiedBy:, getter=lastModifiedBy) MSGraphIdentitySet* lastModifiedBy;
    @property (nullable, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setAdditionalSources:, getter=additionalSources) NSArray* additionalSources;
    @property (nullable, nonatomic, setter=setAddToReviewSetOperation:, getter=addToReviewSetOperation) MSGraphEdiscoveryAddToReviewSetOperation* addToReviewSetOperation;
    @property (nullable, nonatomic, setter=setCustodianSources:, getter=custodianSources) NSArray* custodianSources;
    @property (nullable, nonatomic, setter=setLastEstimateStatisticsOperation:, getter=lastEstimateStatisticsOperation) MSGraphEdiscoveryEstimateStatisticsOperation* lastEstimateStatisticsOperation;
    @property (nullable, nonatomic, setter=setNoncustodialSources:, getter=noncustodialSources) NSArray* noncustodialSources;
  
@end
