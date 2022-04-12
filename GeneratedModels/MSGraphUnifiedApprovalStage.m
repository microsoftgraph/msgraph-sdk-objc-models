// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphUnifiedApprovalStage()
{
    int32_t _approvalStageTimeOutInDays;
    NSArray* _escalationApprovers;
    int32_t _escalationTimeInMinutes;
    BOOL _isApproverJustificationRequired;
    BOOL _isEscalationEnabled;
    NSArray* _primaryApprovers;
}
@end

@implementation MSGraphUnifiedApprovalStage

- (int32_t) approvalStageTimeOutInDays
{
    _approvalStageTimeOutInDays = [self.dictionary[@"approvalStageTimeOutInDays"] intValue];
    return _approvalStageTimeOutInDays;
}

- (void) setApprovalStageTimeOutInDays: (int32_t) val
{
    _approvalStageTimeOutInDays = val;
    self.dictionary[@"approvalStageTimeOutInDays"] = @(val);
}

- (NSArray*) escalationApprovers
{
    if(!_escalationApprovers){
        
    NSMutableArray *escalationApproversResult = [NSMutableArray array];
    NSArray *escalationApprovers = self.dictionary[@"escalationApprovers"];

    if ([escalationApprovers isKindOfClass:[NSArray class]]){
        for (id tempSubjectSet in escalationApprovers){
            [escalationApproversResult addObject:tempSubjectSet];
        }
    }

    _escalationApprovers = escalationApproversResult;
        
    }
    return _escalationApprovers;
}

- (void) setEscalationApprovers: (NSArray*) val
{
    _escalationApprovers = val;
    self.dictionary[@"escalationApprovers"] = val;
}

- (int32_t) escalationTimeInMinutes
{
    _escalationTimeInMinutes = [self.dictionary[@"escalationTimeInMinutes"] intValue];
    return _escalationTimeInMinutes;
}

- (void) setEscalationTimeInMinutes: (int32_t) val
{
    _escalationTimeInMinutes = val;
    self.dictionary[@"escalationTimeInMinutes"] = @(val);
}

- (BOOL) isApproverJustificationRequired
{
    _isApproverJustificationRequired = [self.dictionary[@"isApproverJustificationRequired"] boolValue];
    return _isApproverJustificationRequired;
}

- (void) setIsApproverJustificationRequired: (BOOL) val
{
    _isApproverJustificationRequired = val;
    self.dictionary[@"isApproverJustificationRequired"] = @(val);
}

- (BOOL) isEscalationEnabled
{
    _isEscalationEnabled = [self.dictionary[@"isEscalationEnabled"] boolValue];
    return _isEscalationEnabled;
}

- (void) setIsEscalationEnabled: (BOOL) val
{
    _isEscalationEnabled = val;
    self.dictionary[@"isEscalationEnabled"] = @(val);
}

- (NSArray*) primaryApprovers
{
    if(!_primaryApprovers){
        
    NSMutableArray *primaryApproversResult = [NSMutableArray array];
    NSArray *primaryApprovers = self.dictionary[@"primaryApprovers"];

    if ([primaryApprovers isKindOfClass:[NSArray class]]){
        for (id tempSubjectSet in primaryApprovers){
            [primaryApproversResult addObject:tempSubjectSet];
        }
    }

    _primaryApprovers = primaryApproversResult;
        
    }
    return _primaryApprovers;
}

- (void) setPrimaryApprovers: (NSArray*) val
{
    _primaryApprovers = val;
    self.dictionary[@"primaryApprovers"] = val;
}

@end
