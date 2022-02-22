// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamJoiningDisabledEventMessageDetail()
{
    MSGraphIdentitySet* _initiator;
    NSString* _teamId;
}
@end

@implementation MSGraphTeamJoiningDisabledEventMessageDetail

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

- (NSString*) teamId
{
    if([[NSNull null] isEqual:self.dictionary[@"teamId"]])
    {
        return nil;
    }   
    return self.dictionary[@"teamId"];
}

- (void) setTeamId: (NSString*) val
{
    self.dictionary[@"teamId"] = val;
}

@end
