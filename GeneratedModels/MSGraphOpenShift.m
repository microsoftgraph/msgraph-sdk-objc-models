// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphOpenShift()
{
    MSGraphOpenShiftItem* _sharedOpenShift;
    MSGraphOpenShiftItem* _draftOpenShift;
    NSString* _schedulingGroupId;
}
@end

@implementation MSGraphOpenShift

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.openShift";
    }
    return self;
}
- (MSGraphOpenShiftItem*) sharedOpenShift
{
    if(!_sharedOpenShift){
        _sharedOpenShift = [[MSGraphOpenShiftItem alloc] initWithDictionary: self.dictionary[@"sharedOpenShift"]];
    }
    return _sharedOpenShift;
}

- (void) setSharedOpenShift: (MSGraphOpenShiftItem*) val
{
    _sharedOpenShift = val;
    self.dictionary[@"sharedOpenShift"] = val;
}

- (MSGraphOpenShiftItem*) draftOpenShift
{
    if(!_draftOpenShift){
        _draftOpenShift = [[MSGraphOpenShiftItem alloc] initWithDictionary: self.dictionary[@"draftOpenShift"]];
    }
    return _draftOpenShift;
}

- (void) setDraftOpenShift: (MSGraphOpenShiftItem*) val
{
    _draftOpenShift = val;
    self.dictionary[@"draftOpenShift"] = val;
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


@end
