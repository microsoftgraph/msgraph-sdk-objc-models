// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessReviewScheduleSettings()
{
    NSArray* _applyActions;
    BOOL _autoApplyDecisionsEnabled;
    NSString* _defaultDecision;
    BOOL _defaultDecisionEnabled;
    int32_t _instanceDurationInDays;
    BOOL _justificationRequiredOnApproval;
    BOOL _mailNotificationsEnabled;
    BOOL _recommendationsEnabled;
    MSGraphPatternedRecurrence* _recurrence;
    BOOL _reminderNotificationsEnabled;
}
@end

@implementation MSGraphAccessReviewScheduleSettings

- (NSArray*) applyActions
{
    if(!_applyActions){
        
    NSMutableArray *applyActionsResult = [NSMutableArray array];
    NSArray *applyActions = self.dictionary[@"applyActions"];

    if ([applyActions isKindOfClass:[NSArray class]]){
        for (id tempAccessReviewApplyAction in applyActions){
            [applyActionsResult addObject:tempAccessReviewApplyAction];
        }
    }

    _applyActions = applyActionsResult;
        
    }
    return _applyActions;
}

- (void) setApplyActions: (NSArray*) val
{
    _applyActions = val;
    self.dictionary[@"applyActions"] = val;
}

- (BOOL) autoApplyDecisionsEnabled
{
    _autoApplyDecisionsEnabled = [self.dictionary[@"autoApplyDecisionsEnabled"] boolValue];
    return _autoApplyDecisionsEnabled;
}

- (void) setAutoApplyDecisionsEnabled: (BOOL) val
{
    _autoApplyDecisionsEnabled = val;
    self.dictionary[@"autoApplyDecisionsEnabled"] = @(val);
}

- (NSString*) defaultDecision
{
    if([[NSNull null] isEqual:self.dictionary[@"defaultDecision"]])
    {
        return nil;
    }   
    return self.dictionary[@"defaultDecision"];
}

- (void) setDefaultDecision: (NSString*) val
{
    self.dictionary[@"defaultDecision"] = val;
}

- (BOOL) defaultDecisionEnabled
{
    _defaultDecisionEnabled = [self.dictionary[@"defaultDecisionEnabled"] boolValue];
    return _defaultDecisionEnabled;
}

- (void) setDefaultDecisionEnabled: (BOOL) val
{
    _defaultDecisionEnabled = val;
    self.dictionary[@"defaultDecisionEnabled"] = @(val);
}

- (int32_t) instanceDurationInDays
{
    _instanceDurationInDays = [self.dictionary[@"instanceDurationInDays"] intValue];
    return _instanceDurationInDays;
}

- (void) setInstanceDurationInDays: (int32_t) val
{
    _instanceDurationInDays = val;
    self.dictionary[@"instanceDurationInDays"] = @(val);
}

- (BOOL) justificationRequiredOnApproval
{
    _justificationRequiredOnApproval = [self.dictionary[@"justificationRequiredOnApproval"] boolValue];
    return _justificationRequiredOnApproval;
}

- (void) setJustificationRequiredOnApproval: (BOOL) val
{
    _justificationRequiredOnApproval = val;
    self.dictionary[@"justificationRequiredOnApproval"] = @(val);
}

- (BOOL) mailNotificationsEnabled
{
    _mailNotificationsEnabled = [self.dictionary[@"mailNotificationsEnabled"] boolValue];
    return _mailNotificationsEnabled;
}

- (void) setMailNotificationsEnabled: (BOOL) val
{
    _mailNotificationsEnabled = val;
    self.dictionary[@"mailNotificationsEnabled"] = @(val);
}

- (BOOL) recommendationsEnabled
{
    _recommendationsEnabled = [self.dictionary[@"recommendationsEnabled"] boolValue];
    return _recommendationsEnabled;
}

- (void) setRecommendationsEnabled: (BOOL) val
{
    _recommendationsEnabled = val;
    self.dictionary[@"recommendationsEnabled"] = @(val);
}

- (MSGraphPatternedRecurrence*) recurrence
{
    if(!_recurrence){
        _recurrence = [[MSGraphPatternedRecurrence alloc] initWithDictionary: self.dictionary[@"recurrence"]];
    }
    return _recurrence;
}

- (void) setRecurrence: (MSGraphPatternedRecurrence*) val
{
    _recurrence = val;
    self.dictionary[@"recurrence"] = val;
}

- (BOOL) reminderNotificationsEnabled
{
    _reminderNotificationsEnabled = [self.dictionary[@"reminderNotificationsEnabled"] boolValue];
    return _reminderNotificationsEnabled;
}

- (void) setReminderNotificationsEnabled: (BOOL) val
{
    _reminderNotificationsEnabled = val;
    self.dictionary[@"reminderNotificationsEnabled"] = @(val);
}

@end
