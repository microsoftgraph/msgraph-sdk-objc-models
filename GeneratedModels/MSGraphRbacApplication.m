// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRbacApplication()
{
    NSArray* _roleAssignments;
    NSArray* _roleDefinitions;
    NSArray* _roleAssignmentScheduleInstances;
    NSArray* _roleAssignmentScheduleRequests;
    NSArray* _roleAssignmentSchedules;
    NSArray* _roleEligibilityScheduleInstances;
    NSArray* _roleEligibilityScheduleRequests;
    NSArray* _roleEligibilitySchedules;
}
@end

@implementation MSGraphRbacApplication

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.rbacApplication";
    }
    return self;
}
- (NSArray*) roleAssignments
{
    if(!_roleAssignments){
        
    NSMutableArray *roleAssignmentsResult = [NSMutableArray array];
    NSArray *roleAssignments = self.dictionary[@"roleAssignments"];

    if ([roleAssignments isKindOfClass:[NSArray class]]){
        for (id tempUnifiedRoleAssignment in roleAssignments){
            [roleAssignmentsResult addObject:tempUnifiedRoleAssignment];
        }
    }

    _roleAssignments = roleAssignmentsResult;
        
    }
    return _roleAssignments;
}

- (void) setRoleAssignments: (NSArray*) val
{
    _roleAssignments = val;
    self.dictionary[@"roleAssignments"] = val;
}

- (NSArray*) roleDefinitions
{
    if(!_roleDefinitions){
        
    NSMutableArray *roleDefinitionsResult = [NSMutableArray array];
    NSArray *roleDefinitions = self.dictionary[@"roleDefinitions"];

    if ([roleDefinitions isKindOfClass:[NSArray class]]){
        for (id tempUnifiedRoleDefinition in roleDefinitions){
            [roleDefinitionsResult addObject:tempUnifiedRoleDefinition];
        }
    }

    _roleDefinitions = roleDefinitionsResult;
        
    }
    return _roleDefinitions;
}

- (void) setRoleDefinitions: (NSArray*) val
{
    _roleDefinitions = val;
    self.dictionary[@"roleDefinitions"] = val;
}

- (NSArray*) roleAssignmentScheduleInstances
{
    if(!_roleAssignmentScheduleInstances){
        
    NSMutableArray *roleAssignmentScheduleInstancesResult = [NSMutableArray array];
    NSArray *roleAssignmentScheduleInstances = self.dictionary[@"roleAssignmentScheduleInstances"];

    if ([roleAssignmentScheduleInstances isKindOfClass:[NSArray class]]){
        for (id tempUnifiedRoleAssignmentScheduleInstance in roleAssignmentScheduleInstances){
            [roleAssignmentScheduleInstancesResult addObject:tempUnifiedRoleAssignmentScheduleInstance];
        }
    }

    _roleAssignmentScheduleInstances = roleAssignmentScheduleInstancesResult;
        
    }
    return _roleAssignmentScheduleInstances;
}

- (void) setRoleAssignmentScheduleInstances: (NSArray*) val
{
    _roleAssignmentScheduleInstances = val;
    self.dictionary[@"roleAssignmentScheduleInstances"] = val;
}

- (NSArray*) roleAssignmentScheduleRequests
{
    if(!_roleAssignmentScheduleRequests){
        
    NSMutableArray *roleAssignmentScheduleRequestsResult = [NSMutableArray array];
    NSArray *roleAssignmentScheduleRequests = self.dictionary[@"roleAssignmentScheduleRequests"];

    if ([roleAssignmentScheduleRequests isKindOfClass:[NSArray class]]){
        for (id tempUnifiedRoleAssignmentScheduleRequest in roleAssignmentScheduleRequests){
            [roleAssignmentScheduleRequestsResult addObject:tempUnifiedRoleAssignmentScheduleRequest];
        }
    }

    _roleAssignmentScheduleRequests = roleAssignmentScheduleRequestsResult;
        
    }
    return _roleAssignmentScheduleRequests;
}

- (void) setRoleAssignmentScheduleRequests: (NSArray*) val
{
    _roleAssignmentScheduleRequests = val;
    self.dictionary[@"roleAssignmentScheduleRequests"] = val;
}

- (NSArray*) roleAssignmentSchedules
{
    if(!_roleAssignmentSchedules){
        
    NSMutableArray *roleAssignmentSchedulesResult = [NSMutableArray array];
    NSArray *roleAssignmentSchedules = self.dictionary[@"roleAssignmentSchedules"];

    if ([roleAssignmentSchedules isKindOfClass:[NSArray class]]){
        for (id tempUnifiedRoleAssignmentSchedule in roleAssignmentSchedules){
            [roleAssignmentSchedulesResult addObject:tempUnifiedRoleAssignmentSchedule];
        }
    }

    _roleAssignmentSchedules = roleAssignmentSchedulesResult;
        
    }
    return _roleAssignmentSchedules;
}

- (void) setRoleAssignmentSchedules: (NSArray*) val
{
    _roleAssignmentSchedules = val;
    self.dictionary[@"roleAssignmentSchedules"] = val;
}

- (NSArray*) roleEligibilityScheduleInstances
{
    if(!_roleEligibilityScheduleInstances){
        
    NSMutableArray *roleEligibilityScheduleInstancesResult = [NSMutableArray array];
    NSArray *roleEligibilityScheduleInstances = self.dictionary[@"roleEligibilityScheduleInstances"];

    if ([roleEligibilityScheduleInstances isKindOfClass:[NSArray class]]){
        for (id tempUnifiedRoleEligibilityScheduleInstance in roleEligibilityScheduleInstances){
            [roleEligibilityScheduleInstancesResult addObject:tempUnifiedRoleEligibilityScheduleInstance];
        }
    }

    _roleEligibilityScheduleInstances = roleEligibilityScheduleInstancesResult;
        
    }
    return _roleEligibilityScheduleInstances;
}

- (void) setRoleEligibilityScheduleInstances: (NSArray*) val
{
    _roleEligibilityScheduleInstances = val;
    self.dictionary[@"roleEligibilityScheduleInstances"] = val;
}

- (NSArray*) roleEligibilityScheduleRequests
{
    if(!_roleEligibilityScheduleRequests){
        
    NSMutableArray *roleEligibilityScheduleRequestsResult = [NSMutableArray array];
    NSArray *roleEligibilityScheduleRequests = self.dictionary[@"roleEligibilityScheduleRequests"];

    if ([roleEligibilityScheduleRequests isKindOfClass:[NSArray class]]){
        for (id tempUnifiedRoleEligibilityScheduleRequest in roleEligibilityScheduleRequests){
            [roleEligibilityScheduleRequestsResult addObject:tempUnifiedRoleEligibilityScheduleRequest];
        }
    }

    _roleEligibilityScheduleRequests = roleEligibilityScheduleRequestsResult;
        
    }
    return _roleEligibilityScheduleRequests;
}

- (void) setRoleEligibilityScheduleRequests: (NSArray*) val
{
    _roleEligibilityScheduleRequests = val;
    self.dictionary[@"roleEligibilityScheduleRequests"] = val;
}

- (NSArray*) roleEligibilitySchedules
{
    if(!_roleEligibilitySchedules){
        
    NSMutableArray *roleEligibilitySchedulesResult = [NSMutableArray array];
    NSArray *roleEligibilitySchedules = self.dictionary[@"roleEligibilitySchedules"];

    if ([roleEligibilitySchedules isKindOfClass:[NSArray class]]){
        for (id tempUnifiedRoleEligibilitySchedule in roleEligibilitySchedules){
            [roleEligibilitySchedulesResult addObject:tempUnifiedRoleEligibilitySchedule];
        }
    }

    _roleEligibilitySchedules = roleEligibilitySchedulesResult;
        
    }
    return _roleEligibilitySchedules;
}

- (void) setRoleEligibilitySchedules: (NSArray*) val
{
    _roleEligibilitySchedules = val;
    self.dictionary[@"roleEligibilitySchedules"] = val;
}


@end
