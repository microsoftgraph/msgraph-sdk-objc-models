// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessPackageAssignmentApprovalSettings()
{
    BOOL _isApprovalRequiredForAdd;
    BOOL _isApprovalRequiredForUpdate;
    NSArray* _stages;
}
@end

@implementation MSGraphAccessPackageAssignmentApprovalSettings

- (BOOL) isApprovalRequiredForAdd
{
    _isApprovalRequiredForAdd = [self.dictionary[@"isApprovalRequiredForAdd"] boolValue];
    return _isApprovalRequiredForAdd;
}

- (void) setIsApprovalRequiredForAdd: (BOOL) val
{
    _isApprovalRequiredForAdd = val;
    self.dictionary[@"isApprovalRequiredForAdd"] = @(val);
}

- (BOOL) isApprovalRequiredForUpdate
{
    _isApprovalRequiredForUpdate = [self.dictionary[@"isApprovalRequiredForUpdate"] boolValue];
    return _isApprovalRequiredForUpdate;
}

- (void) setIsApprovalRequiredForUpdate: (BOOL) val
{
    _isApprovalRequiredForUpdate = val;
    self.dictionary[@"isApprovalRequiredForUpdate"] = @(val);
}

- (NSArray*) stages
{
    if(!_stages){
        
    NSMutableArray *stagesResult = [NSMutableArray array];
    NSArray *stages = self.dictionary[@"stages"];

    if ([stages isKindOfClass:[NSArray class]]){
        for (id tempAccessPackageApprovalStage in stages){
            [stagesResult addObject:tempAccessPackageApprovalStage];
        }
    }

    _stages = stagesResult;
        
    }
    return _stages;
}

- (void) setStages: (NSArray*) val
{
    _stages = val;
    self.dictionary[@"stages"] = val;
}

@end
