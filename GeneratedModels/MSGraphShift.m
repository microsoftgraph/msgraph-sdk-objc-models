// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphShift()
{
    MSGraphShiftItem* _draftShift;
    NSString* _schedulingGroupId;
    MSGraphShiftItem* _sharedShift;
    NSString* _userId;
}
@end

@implementation MSGraphShift

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.shift";
    }
    return self;
}
- (MSGraphShiftItem*) draftShift
{
    if(!_draftShift){
        _draftShift = [[MSGraphShiftItem alloc] initWithDictionary: self.dictionary[@"draftShift"]];
    }
    return _draftShift;
}

- (void) setDraftShift: (MSGraphShiftItem*) val
{
    _draftShift = val;
    self.dictionary[@"draftShift"] = val;
}

- (NSString*) schedulingGroupId
{
    if([[NSNull null] isEqual:self.dictionary[@"schedulingGroupId"]])
    {
        return nil;
    }   
    return self.dictionary[@"schedulingGroupId"];
}

- (void) setSchedulingGroupId: (NSString*) val
{
    self.dictionary[@"schedulingGroupId"] = val;
}

- (MSGraphShiftItem*) sharedShift
{
    if(!_sharedShift){
        _sharedShift = [[MSGraphShiftItem alloc] initWithDictionary: self.dictionary[@"sharedShift"]];
    }
    return _sharedShift;
}

- (void) setSharedShift: (MSGraphShiftItem*) val
{
    _sharedShift = val;
    self.dictionary[@"sharedShift"] = val;
}

- (NSString*) userId
{
    if([[NSNull null] isEqual:self.dictionary[@"userId"]])
    {
        return nil;
    }   
    return self.dictionary[@"userId"];
}

- (void) setUserId: (NSString*) val
{
    self.dictionary[@"userId"] = val;
}


@end
