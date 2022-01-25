// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphInvitationParticipantInfo()
{
    BOOL _hidden;
    MSGraphIdentitySet* _identity;
    NSString* _participantId;
    BOOL _removeFromDefaultAudioRoutingGroup;
    NSString* _replacesCallId;
}
@end

@implementation MSGraphInvitationParticipantInfo

- (BOOL) hidden
{
    _hidden = [self.dictionary[@"hidden"] boolValue];
    return _hidden;
}

- (void) setHidden: (BOOL) val
{
    _hidden = val;
    self.dictionary[@"hidden"] = @(val);
}

- (MSGraphIdentitySet*) identity
{
    if(!_identity){
        _identity = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"identity"]];
    }
    return _identity;
}

- (void) setIdentity: (MSGraphIdentitySet*) val
{
    _identity = val;
    self.dictionary[@"identity"] = val;
}

- (NSString*) participantId
{
    if([[NSNull null] isEqual:self.dictionary[@"participantId"]])
    {
        return nil;
    }   
    return self.dictionary[@"participantId"];
}

- (void) setParticipantId: (NSString*) val
{
    self.dictionary[@"participantId"] = val;
}

- (BOOL) removeFromDefaultAudioRoutingGroup
{
    _removeFromDefaultAudioRoutingGroup = [self.dictionary[@"removeFromDefaultAudioRoutingGroup"] boolValue];
    return _removeFromDefaultAudioRoutingGroup;
}

- (void) setRemoveFromDefaultAudioRoutingGroup: (BOOL) val
{
    _removeFromDefaultAudioRoutingGroup = val;
    self.dictionary[@"removeFromDefaultAudioRoutingGroup"] = @(val);
}

- (NSString*) replacesCallId
{
    if([[NSNull null] isEqual:self.dictionary[@"replacesCallId"]])
    {
        return nil;
    }   
    return self.dictionary[@"replacesCallId"];
}

- (void) setReplacesCallId: (NSString*) val
{
    self.dictionary[@"replacesCallId"] = val;
}

@end
