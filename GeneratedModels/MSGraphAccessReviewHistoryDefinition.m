// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAccessReviewHistoryDefinition()
{
    MSGraphUserIdentity* _createdBy;
    NSDate* _createdDateTime;
    NSArray* _decisions;
    NSString* _displayName;
    NSDate* _reviewHistoryPeriodEndDateTime;
    NSDate* _reviewHistoryPeriodStartDateTime;
    MSGraphAccessReviewHistoryScheduleSettings* _scheduleSettings;
    NSArray* _scopes;
    MSGraphAccessReviewHistoryStatus* _status;
    NSArray* _instances;
}
@end

@implementation MSGraphAccessReviewHistoryDefinition

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.accessReviewHistoryDefinition";
    }
    return self;
}
- (MSGraphUserIdentity*) createdBy
{
    if(!_createdBy){
        _createdBy = [[MSGraphUserIdentity alloc] initWithDictionary: self.dictionary[@"createdBy"]];
    }
    return _createdBy;
}

- (void) setCreatedBy: (MSGraphUserIdentity*) val
{
    _createdBy = val;
    self.dictionary[@"createdBy"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSArray*) decisions
{
    if(!_decisions){
        
    NSMutableArray *decisionsResult = [NSMutableArray array];
    NSArray *decisions = self.dictionary[@"decisions"];

    if ([decisions isKindOfClass:[NSArray class]]){
        for (id tempAccessReviewHistoryDecisionFilter in decisions){
            [decisionsResult addObject:tempAccessReviewHistoryDecisionFilter];
        }
    }

    _decisions = decisionsResult;
        
    }
    return _decisions;
}

- (void) setDecisions: (NSArray*) val
{
    _decisions = val;
    self.dictionary[@"decisions"] = val;
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSDate*) reviewHistoryPeriodEndDateTime
{
    if(!_reviewHistoryPeriodEndDateTime){
        _reviewHistoryPeriodEndDateTime = [NSDate ms_dateFromString: self.dictionary[@"reviewHistoryPeriodEndDateTime"]];
    }
    return _reviewHistoryPeriodEndDateTime;
}

- (void) setReviewHistoryPeriodEndDateTime: (NSDate*) val
{
    _reviewHistoryPeriodEndDateTime = val;
    self.dictionary[@"reviewHistoryPeriodEndDateTime"] = [val ms_toString];
}

- (NSDate*) reviewHistoryPeriodStartDateTime
{
    if(!_reviewHistoryPeriodStartDateTime){
        _reviewHistoryPeriodStartDateTime = [NSDate ms_dateFromString: self.dictionary[@"reviewHistoryPeriodStartDateTime"]];
    }
    return _reviewHistoryPeriodStartDateTime;
}

- (void) setReviewHistoryPeriodStartDateTime: (NSDate*) val
{
    _reviewHistoryPeriodStartDateTime = val;
    self.dictionary[@"reviewHistoryPeriodStartDateTime"] = [val ms_toString];
}

- (MSGraphAccessReviewHistoryScheduleSettings*) scheduleSettings
{
    if(!_scheduleSettings){
        _scheduleSettings = [[MSGraphAccessReviewHistoryScheduleSettings alloc] initWithDictionary: self.dictionary[@"scheduleSettings"]];
    }
    return _scheduleSettings;
}

- (void) setScheduleSettings: (MSGraphAccessReviewHistoryScheduleSettings*) val
{
    _scheduleSettings = val;
    self.dictionary[@"scheduleSettings"] = val;
}

- (NSArray*) scopes
{
    if(!_scopes){
        
    NSMutableArray *scopesResult = [NSMutableArray array];
    NSArray *scopes = self.dictionary[@"scopes"];

    if ([scopes isKindOfClass:[NSArray class]]){
        for (id tempAccessReviewScope in scopes){
            [scopesResult addObject:tempAccessReviewScope];
        }
    }

    _scopes = scopesResult;
        
    }
    return _scopes;
}

- (void) setScopes: (NSArray*) val
{
    _scopes = val;
    self.dictionary[@"scopes"] = val;
}

- (MSGraphAccessReviewHistoryStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphAccessReviewHistoryStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphAccessReviewHistoryStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSArray*) instances
{
    if(!_instances){
        
    NSMutableArray *instancesResult = [NSMutableArray array];
    NSArray *instances = self.dictionary[@"instances"];

    if ([instances isKindOfClass:[NSArray class]]){
        for (id tempAccessReviewHistoryInstance in instances){
            [instancesResult addObject:tempAccessReviewHistoryInstance];
        }
    }

    _instances = instancesResult;
        
    }
    return _instances;
}

- (void) setInstances: (NSArray*) val
{
    _instances = val;
    self.dictionary[@"instances"] = val;
}


@end
