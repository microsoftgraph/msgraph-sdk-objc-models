// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallParticipantInfo()
{
    MSGraphIdentitySet* _participant;
}
@end

@implementation MSGraphCallParticipantInfo

- (MSGraphIdentitySet*) participant
{
    if(!_participant){
        _participant = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"participant"]];
    }
    return _participant;
}

- (void) setParticipant: (MSGraphIdentitySet*) val
{
    _participant = val;
    self.dictionary[@"participant"] = val;
}

@end
