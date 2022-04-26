// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphApprovalSettings()
{
    NSString* _approvalMode;
    NSArray* _approvalStages;
    BOOL _isApprovalRequired;
    BOOL _isApprovalRequiredForExtension;
    BOOL _isRequestorJustificationRequired;
}
@end

@implementation MSGraphApprovalSettings

- (NSString*) approvalMode
{
    if([[NSNull null] isEqual:self.dictionary[@"approvalMode"]])
    {
        return nil;
    }   
    return self.dictionary[@"approvalMode"];
}

- (void) setApprovalMode: (NSString*) val
{
    self.dictionary[@"approvalMode"] = val;
}

- (NSArray*) approvalStages
{
    if(!_approvalStages){
        
    NSMutableArray *approvalStagesResult = [NSMutableArray array];
    NSArray *approvalStages = self.dictionary[@"approvalStages"];

    if ([approvalStages isKindOfClass:[NSArray class]]){
        for (id tempUnifiedApprovalStage in approvalStages){
            [approvalStagesResult addObject:tempUnifiedApprovalStage];
        }
    }

    _approvalStages = approvalStagesResult;
        
    }
    return _approvalStages;
}

- (void) setApprovalStages: (NSArray*) val
{
    _approvalStages = val;
    self.dictionary[@"approvalStages"] = val;
}

- (BOOL) isApprovalRequired
{
    _isApprovalRequired = [self.dictionary[@"isApprovalRequired"] boolValue];
    return _isApprovalRequired;
}

- (void) setIsApprovalRequired: (BOOL) val
{
    _isApprovalRequired = val;
    self.dictionary[@"isApprovalRequired"] = @(val);
}

- (BOOL) isApprovalRequiredForExtension
{
    _isApprovalRequiredForExtension = [self.dictionary[@"isApprovalRequiredForExtension"] boolValue];
    return _isApprovalRequiredForExtension;
}

- (void) setIsApprovalRequiredForExtension: (BOOL) val
{
    _isApprovalRequiredForExtension = val;
    self.dictionary[@"isApprovalRequiredForExtension"] = @(val);
}

- (BOOL) isRequestorJustificationRequired
{
    _isRequestorJustificationRequired = [self.dictionary[@"isRequestorJustificationRequired"] boolValue];
    return _isRequestorJustificationRequired;
}

- (void) setIsRequestorJustificationRequired: (BOOL) val
{
    _isRequestorJustificationRequired = val;
    self.dictionary[@"isRequestorJustificationRequired"] = @(val);
}

@end
