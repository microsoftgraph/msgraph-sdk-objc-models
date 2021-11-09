// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphTeamsAppRemovedEventMessageDetail()
{
    MSGraphIdentitySet* _initiator;
    NSString* _teamsAppDisplayName;
    NSString* _teamsAppId;
}
@end

@implementation MSGraphTeamsAppRemovedEventMessageDetail

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

- (NSString*) teamsAppDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"teamsAppDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"teamsAppDisplayName"];
}

- (void) setTeamsAppDisplayName: (NSString*) val
{
    self.dictionary[@"teamsAppDisplayName"] = val;
}

- (NSString*) teamsAppId
{
    if([[NSNull null] isEqual:self.dictionary[@"teamsAppId"]])
    {
        return nil;
    }   
    return self.dictionary[@"teamsAppId"];
}

- (void) setTeamsAppId: (NSString*) val
{
    self.dictionary[@"teamsAppId"] = val;
}

@end
