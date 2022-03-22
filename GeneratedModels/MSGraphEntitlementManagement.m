// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEntitlementManagement()
{
    NSArray* _accessPackageAssignmentApprovals;
    NSArray* _accessPackages;
    NSArray* _assignmentPolicies;
    NSArray* _assignmentRequests;
    NSArray* _assignments;
    NSArray* _catalogs;
    NSArray* _connectedOrganizations;
    MSGraphEntitlementManagementSettings* _settings;
}
@end

@implementation MSGraphEntitlementManagement

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.entitlementManagement";
    }
    return self;
}
- (NSArray*) accessPackageAssignmentApprovals
{
    if(!_accessPackageAssignmentApprovals){
        
    NSMutableArray *accessPackageAssignmentApprovalsResult = [NSMutableArray array];
    NSArray *accessPackageAssignmentApprovals = self.dictionary[@"accessPackageAssignmentApprovals"];

    if ([accessPackageAssignmentApprovals isKindOfClass:[NSArray class]]){
        for (id tempApproval in accessPackageAssignmentApprovals){
            [accessPackageAssignmentApprovalsResult addObject:tempApproval];
        }
    }

    _accessPackageAssignmentApprovals = accessPackageAssignmentApprovalsResult;
        
    }
    return _accessPackageAssignmentApprovals;
}

- (void) setAccessPackageAssignmentApprovals: (NSArray*) val
{
    _accessPackageAssignmentApprovals = val;
    self.dictionary[@"accessPackageAssignmentApprovals"] = val;
}

- (NSArray*) accessPackages
{
    if(!_accessPackages){
        
    NSMutableArray *accessPackagesResult = [NSMutableArray array];
    NSArray *accessPackages = self.dictionary[@"accessPackages"];

    if ([accessPackages isKindOfClass:[NSArray class]]){
        for (id tempAccessPackage in accessPackages){
            [accessPackagesResult addObject:tempAccessPackage];
        }
    }

    _accessPackages = accessPackagesResult;
        
    }
    return _accessPackages;
}

- (void) setAccessPackages: (NSArray*) val
{
    _accessPackages = val;
    self.dictionary[@"accessPackages"] = val;
}

- (NSArray*) assignmentPolicies
{
    if(!_assignmentPolicies){
        
    NSMutableArray *assignmentPoliciesResult = [NSMutableArray array];
    NSArray *assignmentPolicies = self.dictionary[@"assignmentPolicies"];

    if ([assignmentPolicies isKindOfClass:[NSArray class]]){
        for (id tempAccessPackageAssignmentPolicy in assignmentPolicies){
            [assignmentPoliciesResult addObject:tempAccessPackageAssignmentPolicy];
        }
    }

    _assignmentPolicies = assignmentPoliciesResult;
        
    }
    return _assignmentPolicies;
}

- (void) setAssignmentPolicies: (NSArray*) val
{
    _assignmentPolicies = val;
    self.dictionary[@"assignmentPolicies"] = val;
}

- (NSArray*) assignmentRequests
{
    if(!_assignmentRequests){
        
    NSMutableArray *assignmentRequestsResult = [NSMutableArray array];
    NSArray *assignmentRequests = self.dictionary[@"assignmentRequests"];

    if ([assignmentRequests isKindOfClass:[NSArray class]]){
        for (id tempAccessPackageAssignmentRequest in assignmentRequests){
            [assignmentRequestsResult addObject:tempAccessPackageAssignmentRequest];
        }
    }

    _assignmentRequests = assignmentRequestsResult;
        
    }
    return _assignmentRequests;
}

- (void) setAssignmentRequests: (NSArray*) val
{
    _assignmentRequests = val;
    self.dictionary[@"assignmentRequests"] = val;
}

- (NSArray*) assignments
{
    if(!_assignments){
        
    NSMutableArray *assignmentsResult = [NSMutableArray array];
    NSArray *assignments = self.dictionary[@"assignments"];

    if ([assignments isKindOfClass:[NSArray class]]){
        for (id tempAccessPackageAssignment in assignments){
            [assignmentsResult addObject:tempAccessPackageAssignment];
        }
    }

    _assignments = assignmentsResult;
        
    }
    return _assignments;
}

- (void) setAssignments: (NSArray*) val
{
    _assignments = val;
    self.dictionary[@"assignments"] = val;
}

- (NSArray*) catalogs
{
    if(!_catalogs){
        
    NSMutableArray *catalogsResult = [NSMutableArray array];
    NSArray *catalogs = self.dictionary[@"catalogs"];

    if ([catalogs isKindOfClass:[NSArray class]]){
        for (id tempAccessPackageCatalog in catalogs){
            [catalogsResult addObject:tempAccessPackageCatalog];
        }
    }

    _catalogs = catalogsResult;
        
    }
    return _catalogs;
}

- (void) setCatalogs: (NSArray*) val
{
    _catalogs = val;
    self.dictionary[@"catalogs"] = val;
}

- (NSArray*) connectedOrganizations
{
    if(!_connectedOrganizations){
        
    NSMutableArray *connectedOrganizationsResult = [NSMutableArray array];
    NSArray *connectedOrganizations = self.dictionary[@"connectedOrganizations"];

    if ([connectedOrganizations isKindOfClass:[NSArray class]]){
        for (id tempConnectedOrganization in connectedOrganizations){
            [connectedOrganizationsResult addObject:tempConnectedOrganization];
        }
    }

    _connectedOrganizations = connectedOrganizationsResult;
        
    }
    return _connectedOrganizations;
}

- (void) setConnectedOrganizations: (NSArray*) val
{
    _connectedOrganizations = val;
    self.dictionary[@"connectedOrganizations"] = val;
}

- (MSGraphEntitlementManagementSettings*) settings
{
    if(!_settings){
        _settings = [[MSGraphEntitlementManagementSettings alloc] initWithDictionary: self.dictionary[@"settings"]];
    }
    return _settings;
}

- (void) setSettings: (MSGraphEntitlementManagementSettings*) val
{
    _settings = val;
    self.dictionary[@"settings"] = val;
}


@end
