// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallRecordsParticipantEndpoint()
{
    MSGraphCallRecordsUserFeedback* _feedback;
    MSGraphIdentitySet* _identity;
}
@end

@implementation MSGraphCallRecordsParticipantEndpoint

- (MSGraphCallRecordsUserFeedback*) feedback
{
    if(!_feedback){
        _feedback = [[MSGraphCallRecordsUserFeedback alloc] initWithDictionary: self.dictionary[@"feedback"]];
    }
    return _feedback;
}

- (void) setFeedback: (MSGraphCallRecordsUserFeedback*) val
{
    _feedback = val;
    self.dictionary[@"feedback"] = val;
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

@end
