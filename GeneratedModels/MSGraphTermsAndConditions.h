// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTermsAndConditionsAcceptanceStatus, MSGraphTermsAndConditionsAssignment; 


#import "MSGraphEntity.h"

@interface MSGraphTermsAndConditions : MSGraphEntity

  @property (nullable, nonatomic, setter=setAcceptanceStatement:, getter=acceptanceStatement) NSString* acceptanceStatement;
    @property (nullable, nonatomic, setter=setBodyText:, getter=bodyText) NSString* bodyText;
    @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setTermsAndConditionsDescription:, getter=termsAndConditionsDescription) NSString* termsAndConditionsDescription;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonnull, nonatomic, setter=setLastModifiedDateTime:, getter=lastModifiedDateTime) NSDate* lastModifiedDateTime;
    @property (nullable, nonatomic, setter=setTitle:, getter=title) NSString* title;
    @property (nonatomic, setter=setVersion:, getter=version) int32_t version;
    @property (nullable, nonatomic, setter=setAcceptanceStatuses:, getter=acceptanceStatuses) NSArray* acceptanceStatuses;
    @property (nullable, nonatomic, setter=setAssignments:, getter=assignments) NSArray* assignments;
  
@end
