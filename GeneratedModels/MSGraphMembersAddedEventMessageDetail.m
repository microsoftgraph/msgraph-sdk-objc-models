// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMembersAddedEventMessageDetail()
{
    MSGraphIdentitySet* _initiator;
    NSArray* _members;
    NSDate* _visibleHistoryStartDateTime;
}
@end

@implementation MSGraphMembersAddedEventMessageDetail

- (MSGraphIdentitySet*) initiator
{
    if(!_initiator){
        _initiator = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"initiator"]];
    }
    return _initiator;
}

- (void) setInitiator: (MSGraphIdentitySet*) val
{
    _initiator = val;
    self.dictionary[@"initiator"] = val;
}

- (NSArray*) members
{
    if(!_members){
        
    NSMutableArray *membersResult = [NSMutableArray array];
    NSArray *members = self.dictionary[@"members"];

    if ([members isKindOfClass:[NSArray class]]){
        for (id tempTeamworkUserIdentity in members){
            [membersResult addObject:tempTeamworkUserIdentity];
        }
    }

    _members = membersResult;
        
    }
    return _members;
}

- (void) setMembers: (NSArray*) val
{
    _members = val;
    self.dictionary[@"members"] = val;
}

- (NSDate*) visibleHistoryStartDateTime
{
    if(!_visibleHistoryStartDateTime){
        _visibleHistoryStartDateTime = [NSDate ms_dateFromString: self.dictionary[@"visibleHistoryStartDateTime"]];
    }
    return _visibleHistoryStartDateTime;
}

- (void) setVisibleHistoryStartDateTime: (NSDate*) val
{
    _visibleHistoryStartDateTime = val;
    self.dictionary[@"visibleHistoryStartDateTime"] = [val ms_toString];
}

@end
