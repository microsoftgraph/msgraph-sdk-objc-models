// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphConditionalAccessPolicy()
{
    NSDate* _createdDateTime;
    NSDate* _modifiedDateTime;
    NSString* _displayName;
    NSString* _conditionalAccessPolicyDescription;
    MSGraphConditionalAccessPolicyState* _state;
    MSGraphConditionalAccessConditionSet* _conditions;
    MSGraphConditionalAccessGrantControls* _grantControls;
    MSGraphConditionalAccessSessionControls* _sessionControls;
}
@end

@implementation MSGraphConditionalAccessPolicy

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.conditionalAccessPolicy";
    }
    return self;
}
- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSDate*) modifiedDateTime
{
    if(!_modifiedDateTime){
        _modifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"modifiedDateTime"]];
    }
    return _modifiedDateTime;
}

- (void) setModifiedDateTime: (NSDate*) val
{
    _modifiedDateTime = val;
    self.dictionary[@"modifiedDateTime"] = [val ms_toString];
}

- (NSString*) displayName
{
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (NSString*) conditionalAccessPolicyDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setConditionalAccessPolicyDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (MSGraphConditionalAccessPolicyState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphConditionalAccessPolicyState];
    }
    return _state;
}

- (void) setState: (MSGraphConditionalAccessPolicyState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

- (MSGraphConditionalAccessConditionSet*) conditions
{
    if(!_conditions){
        _conditions = [[MSGraphConditionalAccessConditionSet alloc] initWithDictionary: self.dictionary[@"conditions"]];
    }
    return _conditions;
}

- (void) setConditions: (MSGraphConditionalAccessConditionSet*) val
{
    _conditions = val;
    self.dictionary[@"conditions"] = val;
}

- (MSGraphConditionalAccessGrantControls*) grantControls
{
    if(!_grantControls){
        _grantControls = [[MSGraphConditionalAccessGrantControls alloc] initWithDictionary: self.dictionary[@"grantControls"]];
    }
    return _grantControls;
}

- (void) setGrantControls: (MSGraphConditionalAccessGrantControls*) val
{
    _grantControls = val;
    self.dictionary[@"grantControls"] = val;
}

- (MSGraphConditionalAccessSessionControls*) sessionControls
{
    if(!_sessionControls){
        _sessionControls = [[MSGraphConditionalAccessSessionControls alloc] initWithDictionary: self.dictionary[@"sessionControls"]];
    }
    return _sessionControls;
}

- (void) setSessionControls: (MSGraphConditionalAccessSessionControls*) val
{
    _sessionControls = val;
    self.dictionary[@"sessionControls"] = val;
}


@end
