// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphExpirationPattern, MSGraphAccessPackageAssignmentApprovalSettings, MSGraphAccessPackageAssignmentRequestorSettings, MSGraphAccessPackageAssignmentReviewSettings, MSGraphSubjectSet, MSGraphAccessPackage, MSGraphAccessPackageCatalog; 
#import "MSGraphAllowedTargetScope.h"


#import "MSGraphEntity.h"

@interface MSGraphAccessPackageAssignmentPolicy : MSGraphEntity

  @property (nullable, nonatomic, setter=setAllowedTargetScope:, getter=allowedTargetScope) MSGraphAllowedTargetScope* allowedTargetScope;
    @property (nullable, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nullable, nonatomic, setter=setAccessPackageAssignmentPolicyDescription:, getter=accessPackageAssignmentPolicyDescription) NSString* accessPackageAssignmentPolicyDescription;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setExpiration:, getter=expiration) MSGraphExpirationPattern* expiration;
    @property (nullable, nonatomic, setter=setModifiedDateTime:, getter=modifiedDateTime) NSDate* modifiedDateTime;
    @property (nullable, nonatomic, setter=setRequestApprovalSettings:, getter=requestApprovalSettings) MSGraphAccessPackageAssignmentApprovalSettings* requestApprovalSettings;
    @property (nullable, nonatomic, setter=setRequestorSettings:, getter=requestorSettings) MSGraphAccessPackageAssignmentRequestorSettings* requestorSettings;
    @property (nullable, nonatomic, setter=setReviewSettings:, getter=reviewSettings) MSGraphAccessPackageAssignmentReviewSettings* reviewSettings;
    @property (nullable, nonatomic, setter=setSpecificAllowedTargets:, getter=specificAllowedTargets) NSArray* specificAllowedTargets;
    @property (nullable, nonatomic, setter=setAccessPackage:, getter=accessPackage) MSGraphAccessPackage* accessPackage;
    @property (nullable, nonatomic, setter=setCatalog:, getter=catalog) MSGraphAccessPackageCatalog* catalog;
  
@end
