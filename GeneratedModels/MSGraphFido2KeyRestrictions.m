// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphFido2KeyRestrictions()
{
    NSArray* _aaGuids;
    MSGraphFido2RestrictionEnforcementType* _enforcementType;
    BOOL _isEnforced;
}
@end

@implementation MSGraphFido2KeyRestrictions

- (NSArray*) aaGuids
{
    if([[NSNull null] isEqual:self.dictionary[@"aaGuids"]])
    {
        return nil;
    }   
    return self.dictionary[@"aaGuids"];
}

- (void) setAaGuids: (NSArray*) val
{
    self.dictionary[@"aaGuids"] = val;
}

- (MSGraphFido2RestrictionEnforcementType*) enforcementType
{
    if(!_enforcementType){
        _enforcementType = [self.dictionary[@"enforcementType"] toMSGraphFido2RestrictionEnforcementType];
    }
    return _enforcementType;
}

- (void) setEnforcementType: (MSGraphFido2RestrictionEnforcementType*) val
{
    _enforcementType = val;
    self.dictionary[@"enforcementType"] = val;
}

- (BOOL) isEnforced
{
    _isEnforced = [self.dictionary[@"isEnforced"] boolValue];
    return _isEnforced;
}

- (void) setIsEnforced: (BOOL) val
{
    _isEnforced = val;
    self.dictionary[@"isEnforced"] = @(val);
}

@end
