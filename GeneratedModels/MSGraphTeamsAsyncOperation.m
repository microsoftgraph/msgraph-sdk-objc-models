// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamsAsyncOperation()
{
    int32_t _attemptsCount;
    NSDate* _createdDateTime;
    MSGraphOperationError* _error;
    NSDate* _lastActionDateTime;
    MSGraphTeamsAsyncOperationType* _operationType;
    MSGraphTeamsAsyncOperationStatus* _status;
    NSString* _targetResourceId;
    NSString* _targetResourceLocation;
}
@end

@implementation MSGraphTeamsAsyncOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.teamsAsyncOperation";
    }
    return self;
}
- (int32_t) attemptsCount
{
    _attemptsCount = [self.dictionary[@"attemptsCount"] intValue];
    return _attemptsCount;
}

- (void) setAttemptsCount: (int32_t) val
{
    _attemptsCount = val;
    self.dictionary[@"attemptsCount"] = @(val);
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

- (MSGraphOperationError*) error
{
    if(!_error){
        _error = [[MSGraphOperationError alloc] initWithDictionary: self.dictionary[@"error"]];
    }
    return _error;
}

- (void) setError: (MSGraphOperationError*) val
{
    _error = val;
    self.dictionary[@"error"] = val;
}

- (NSDate*) lastActionDateTime
{
    if(!_lastActionDateTime){
        _lastActionDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastActionDateTime"]];
    }
    return _lastActionDateTime;
}

- (void) setLastActionDateTime: (NSDate*) val
{
    _lastActionDateTime = val;
    self.dictionary[@"lastActionDateTime"] = [val ms_toString];
}

- (MSGraphTeamsAsyncOperationType*) operationType
{
    if(!_operationType){
        _operationType = [self.dictionary[@"operationType"] toMSGraphTeamsAsyncOperationType];
    }
    return _operationType;
}

- (void) setOperationType: (MSGraphTeamsAsyncOperationType*) val
{
    _operationType = val;
    self.dictionary[@"operationType"] = val;
}

- (MSGraphTeamsAsyncOperationStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphTeamsAsyncOperationStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphTeamsAsyncOperationStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSString*) targetResourceId
{
    if([[NSNull null] isEqual:self.dictionary[@"targetResourceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"targetResourceId"];
}

- (void) setTargetResourceId: (NSString*) val
{
    self.dictionary[@"targetResourceId"] = val;
}

- (NSString*) targetResourceLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"targetResourceLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"targetResourceLocation"];
}

- (void) setTargetResourceLocation: (NSString*) val
{
    self.dictionary[@"targetResourceLocation"] = val;
}


@end
