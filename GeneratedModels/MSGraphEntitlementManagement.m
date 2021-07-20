// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEntitlementManagement()
{
    NSArray* _accessPackageAssignmentApprovals;
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


@end
