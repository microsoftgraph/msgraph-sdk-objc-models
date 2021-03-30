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


@end
