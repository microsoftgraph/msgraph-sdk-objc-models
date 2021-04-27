// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIdentityUserFlowAttributeAssignment()
{
    NSString* _displayName;
    BOOL _isOptional;
    BOOL _requiresVerification;
    NSArray* _userAttributeValues;
    MSGraphIdentityUserFlowAttributeInputType* _userInputType;
    MSGraphIdentityUserFlowAttribute* _userAttribute;
}
@end

@implementation MSGraphIdentityUserFlowAttributeAssignment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.identityUserFlowAttributeAssignment";
    }
    return self;
}
- (NSString*) displayName
{
    if([[NSNull null] isEqual:self.dictionary[@"displayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"displayName"];
}

- (void) setDisplayName: (NSString*) val
{
    self.dictionary[@"displayName"] = val;
}

- (BOOL) isOptional
{
    _isOptional = [self.dictionary[@"isOptional"] boolValue];
    return _isOptional;
}

- (void) setIsOptional: (BOOL) val
{
    _isOptional = val;
    self.dictionary[@"isOptional"] = @(val);
}

- (BOOL) requiresVerification
{
    _requiresVerification = [self.dictionary[@"requiresVerification"] boolValue];
    return _requiresVerification;
}

- (void) setRequiresVerification: (BOOL) val
{
    _requiresVerification = val;
    self.dictionary[@"requiresVerification"] = @(val);
}

- (NSArray*) userAttributeValues
{
    if(!_userAttributeValues){
        
    NSMutableArray *userAttributeValuesResult = [NSMutableArray array];
    NSArray *userAttributeValues = self.dictionary[@"userAttributeValues"];

    if ([userAttributeValues isKindOfClass:[NSArray class]]){
        for (id tempUserAttributeValuesItem in userAttributeValues){
            [userAttributeValuesResult addObject:tempUserAttributeValuesItem];
        }
    }

    _userAttributeValues = userAttributeValuesResult;
        
    }
    return _userAttributeValues;
}

- (void) setUserAttributeValues: (NSArray*) val
{
    _userAttributeValues = val;
    self.dictionary[@"userAttributeValues"] = val;
}

- (MSGraphIdentityUserFlowAttributeInputType*) userInputType
{
    if(!_userInputType){
        _userInputType = [self.dictionary[@"userInputType"] toMSGraphIdentityUserFlowAttributeInputType];
    }
    return _userInputType;
}

- (void) setUserInputType: (MSGraphIdentityUserFlowAttributeInputType*) val
{
    _userInputType = val;
    self.dictionary[@"userInputType"] = val;
}

- (MSGraphIdentityUserFlowAttribute*) userAttribute
{
    if(!_userAttribute){
        _userAttribute = [[MSGraphIdentityUserFlowAttribute alloc] initWithDictionary: self.dictionary[@"userAttribute"]];
    }
    return _userAttribute;
}

- (void) setUserAttribute: (MSGraphIdentityUserFlowAttribute*) val
{
    _userAttribute = val;
    self.dictionary[@"userAttribute"] = val;
}


@end
