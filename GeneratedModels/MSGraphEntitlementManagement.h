// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphApproval, MSGraphAccessPackage, MSGraphAccessPackageAssignmentRequest, MSGraphAccessPackageAssignment, MSGraphAccessPackageCatalog, MSGraphConnectedOrganization, MSGraphEntitlementManagementSettings; 


#import "MSGraphEntity.h"

@interface MSGraphEntitlementManagement : MSGraphEntity

  @property (nullable, nonatomic, setter=setAccessPackageAssignmentApprovals:, getter=accessPackageAssignmentApprovals) NSArray* accessPackageAssignmentApprovals;
    @property (nullable, nonatomic, setter=setAccessPackages:, getter=accessPackages) NSArray* accessPackages;
    @property (nullable, nonatomic, setter=setAssignmentRequests:, getter=assignmentRequests) NSArray* assignmentRequests;
    @property (nullable, nonatomic, setter=setAssignments:, getter=assignments) NSArray* assignments;
    @property (nullable, nonatomic, setter=setCatalogs:, getter=catalogs) NSArray* catalogs;
    @property (nullable, nonatomic, setter=setConnectedOrganizations:, getter=connectedOrganizations) NSArray* connectedOrganizations;
    @property (nullable, nonatomic, setter=setSettings:, getter=settings) MSGraphEntitlementManagementSettings* settings;
  
@end
