// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphApprovalStage()
{
    BOOL _assignedToMe;
    NSString* _displayName;
    NSString* _justification;
    MSGraphIdentity* _reviewedBy;
    NSDate* _reviewedDateTime;
    NSString* _reviewResult;
    NSString* _status;
}
@end

@implementation MSGraphApprovalStage

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.approvalStage";
    }
    return self;
}
- (BOOL) assignedToMe
{
    _assignedToMe = [self.dictionary[@"assignedToMe"] boolValue];
    return _assignedToMe;
}

- (void) setAssignedToMe: (BOOL) val
{
    _assignedToMe = val;
    self.dictionary[@"assignedToMe"] = @(val);
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

- (NSString*) justification
{
    if([[NSNull null] isEqual:self.dictionary[@"justification"]])
    {
        return nil;
    }   
    return self.dictionary[@"justification"];
}

- (void) setJustification: (NSString*) val
{
    self.dictionary[@"justification"] = val;
}

- (MSGraphIdentity*) reviewedBy
{
    if(!_reviewedBy){
        _reviewedBy = [[MSGraphIdentity alloc] initWithDictionary: self.dictionary[@"reviewedBy"]];
    }
    return _reviewedBy;
}

- (void) setReviewedBy: (MSGraphIdentity*) val
{
    _reviewedBy = val;
    self.dictionary[@"reviewedBy"] = val;
}

- (NSDate*) reviewedDateTime
{
    if(!_reviewedDateTime){
        _reviewedDateTime = [NSDate ms_dateFromString: self.dictionary[@"reviewedDateTime"]];
    }
    return _reviewedDateTime;
}

- (void) setReviewedDateTime: (NSDate*) val
{
    _reviewedDateTime = val;
    self.dictionary[@"reviewedDateTime"] = [val ms_toString];
}

- (NSString*) reviewResult
{
    if([[NSNull null] isEqual:self.dictionary[@"reviewResult"]])
    {
        return nil;
    }   
    return self.dictionary[@"reviewResult"];
}

- (void) setReviewResult: (NSString*) val
{
    self.dictionary[@"reviewResult"] = val;
}

- (NSString*) status
{
    if([[NSNull null] isEqual:self.dictionary[@"status"]])
    {
        return nil;
    }   
    return self.dictionary[@"status"];
}

- (void) setStatus: (NSString*) val
{
    self.dictionary[@"status"] = val;
}


@end
