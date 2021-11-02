// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryDataSourceContainer()
{
    NSDate* _createdDateTime;
    NSString* _displayName;
    NSDate* _lastModifiedDateTime;
    NSDate* _releasedDateTime;
    MSGraphEdiscoveryDataSourceContainerStatus* _status;
    MSGraphEdiscoveryCaseIndexOperation* _lastIndexOperation;
}
@end

@implementation MSGraphEdiscoveryDataSourceContainer

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

- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (NSDate*) releasedDateTime
{
    if(!_releasedDateTime){
        _releasedDateTime = [NSDate ms_dateFromString: self.dictionary[@"releasedDateTime"]];
    }
    return _releasedDateTime;
}

- (void) setReleasedDateTime: (NSDate*) val
{
    _releasedDateTime = val;
    self.dictionary[@"releasedDateTime"] = [val ms_toString];
}

- (MSGraphEdiscoveryDataSourceContainerStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphEdiscoveryDataSourceContainerStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphEdiscoveryDataSourceContainerStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (MSGraphEdiscoveryCaseIndexOperation*) lastIndexOperation
{
    if(!_lastIndexOperation){
        _lastIndexOperation = [[MSGraphEdiscoveryCaseIndexOperation alloc] initWithDictionary: self.dictionary[@"lastIndexOperation"]];
    }
    return _lastIndexOperation;
}

- (void) setLastIndexOperation: (MSGraphEdiscoveryCaseIndexOperation*) val
{
    _lastIndexOperation = val;
    self.dictionary[@"lastIndexOperation"] = val;
}


@end
