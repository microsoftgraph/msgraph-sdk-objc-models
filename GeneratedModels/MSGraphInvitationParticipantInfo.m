// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphInvitationParticipantInfo()
{
    MSGraphIdentitySet* _identity;
    NSString* _replacesCallId;
}
@end

@implementation MSGraphInvitationParticipantInfo

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
