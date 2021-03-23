// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRequest()
{
    NSString* _approvalId;
    NSDate* _completedDateTime;
    MSGraphIdentitySet* _createdBy;
    NSDate* _createdDateTime;
    NSString* _customData;
    NSString* _status;
}
@end

@implementation MSGraphRequest

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.request";
    }
    return self;
}
- (NSString*) approvalId
{
    if([[NSNull null] isEqual:self.dictionary[@"approvalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"approvalId"];
}

- (void) setApprovalId: (NSString*) val
{
    self.dictionary[@"approvalId"] = val;
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

- (NSString*) customData
{
    if([[NSNull null] isEqual:self.dictionary[@"customData"]])
    {
        return nil;
    }   
    return self.dictionary[@"customData"];
}

- (void) setCustomData: (NSString*) val
{
    self.dictionary[@"customData"] = val;
}

- (NSString*) status
{
    return self.dictionary[@"status"];
}

- (void) setStatus: (NSString*) val
{
    self.dictionary[@"status"] = val;
}


@end
