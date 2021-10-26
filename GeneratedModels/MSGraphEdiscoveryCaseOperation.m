// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryCaseOperation()
{
    MSGraphEdiscoveryCaseAction* _action;
    NSDate* _completedDateTime;
    MSGraphIdentitySet* _createdBy;
    NSDate* _createdDateTime;
    int32_t _percentProgress;
    MSGraphResultInfo* _resultInfo;
    MSGraphEdiscoveryCaseOperationStatus* _status;
}
@end

@implementation MSGraphEdiscoveryCaseOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.caseOperation";
    }
    return self;
}
- (MSGraphEdiscoveryCaseAction*) action
{
    if(!_action){
        _action = [self.dictionary[@"action"] toMSGraphEdiscoveryCaseAction];
    }
    return _action;
}

- (void) setAction: (MSGraphEdiscoveryCaseAction*) val
{
    _action = val;
    self.dictionary[@"action"] = val;
}

- (NSDate*) completedDateTime
{
    if(!_completedDateTime){
        _completedDateTime = [NSDate ms_dateFromString: self.dictionary[@"completedDateTime"]];
    }
    return _completedDateTime;
}

- (void) setCompletedDateTime: (NSDate*) val
{
    _completedDateTime = val;
    self.dictionary[@"completedDateTime"] = [val ms_toString];
}

- (MSGraphIdentitySet*) createdBy
{
    if(!_createdBy){
        _createdBy = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"createdBy"]];
    }
    return _createdBy;
}

- (void) setCreatedBy: (MSGraphIdentitySet*) val
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

- (int32_t) percentProgress
{
    _percentProgress = [self.dictionary[@"percentProgress"] intValue];
    return _percentProgress;
}

- (void) setPercentProgress: (int32_t) val
{
    _percentProgress = val;
    self.dictionary[@"percentProgress"] = @(val);
}

- (MSGraphResultInfo*) resultInfo
{
    if(!_resultInfo){
        _resultInfo = [[MSGraphResultInfo alloc] initWithDictionary: self.dictionary[@"resultInfo"]];
    }
    return _resultInfo;
}

- (void) setResultInfo: (MSGraphResultInfo*) val
{
    _resultInfo = val;
    self.dictionary[@"resultInfo"] = val;
}

- (MSGraphEdiscoveryCaseOperationStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphEdiscoveryCaseOperationStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphEdiscoveryCaseOperationStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}


@end
