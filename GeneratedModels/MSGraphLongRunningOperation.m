// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphLongRunningOperation()
{
    NSDate* _createdDateTime;
    NSDate* _lastActionDateTime;
    NSString* _resourceLocation;
    MSGraphLongRunningOperationStatus* _status;
    NSString* _statusDetail;
}
@end

@implementation MSGraphLongRunningOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.longRunningOperation";
    }
    return self;
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

- (NSString*) resourceLocation
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceLocation"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceLocation"];
}

- (void) setResourceLocation: (NSString*) val
{
    self.dictionary[@"resourceLocation"] = val;
}

- (MSGraphLongRunningOperationStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphLongRunningOperationStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphLongRunningOperationStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSString*) statusDetail
{
    if([[NSNull null] isEqual:self.dictionary[@"statusDetail"]])
    {
        return nil;
    }   
    return self.dictionary[@"statusDetail"];
}

- (void) setStatusDetail: (NSString*) val
{
    self.dictionary[@"statusDetail"] = val;
}


@end
