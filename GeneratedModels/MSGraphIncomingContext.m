// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIncomingContext()
{
    NSString* _sourceParticipantId;
    NSString* _observedParticipantId;
    MSGraphIdentitySet* _onBehalfOf;
    MSGraphIdentitySet* _transferor;
}
@end

@implementation MSGraphIncomingContext

- (NSString*) sourceParticipantId
{
    if([[NSNull null] isEqual:self.dictionary[@"sourceParticipantId"]])
    {
        return nil;
    }   
    return self.dictionary[@"sourceParticipantId"];
}

- (void) setSourceParticipantId: (NSString*) val
{
    self.dictionary[@"sourceParticipantId"] = val;
}

- (NSString*) observedParticipantId
{
    if([[NSNull null] isEqual:self.dictionary[@"observedParticipantId"]])
    {
        return nil;
    }   
    return self.dictionary[@"observedParticipantId"];
}

- (void) setObservedParticipantId: (NSString*) val
{
    self.dictionary[@"observedParticipantId"] = val;
}

- (MSGraphIdentitySet*) onBehalfOf
{
    if(!_onBehalfOf){
        _onBehalfOf = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"onBehalfOf"]];
    }
    return _onBehalfOf;
}

- (void) setOnBehalfOf: (MSGraphIdentitySet*) val
{
    _onBehalfOf = val;
    self.dictionary[@"onBehalfOf"] = val;
}

- (MSGraphIdentitySet*) transferor
{
    if(!_transferor){
        _transferor = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"transferor"]];
    }
    return _transferor;
}

- (void) setTransferor: (MSGraphIdentitySet*) val
{
    _transferor = val;
    self.dictionary[@"transferor"] = val;
}

@end
