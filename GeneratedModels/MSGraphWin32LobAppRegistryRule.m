// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWin32LobAppRegistryRule()
{
    BOOL _check32BitOn64System;
    NSString* _comparisonValue;
    NSString* _keyPath;
    MSGraphWin32LobAppRegistryRuleOperationType* _operationType;
    MSGraphWin32LobAppRuleOperator* _operator;
    NSString* _valueName;
}
@end

@implementation MSGraphWin32LobAppRegistryRule

- (BOOL) check32BitOn64System
{
    _check32BitOn64System = [self.dictionary[@"check32BitOn64System"] boolValue];
    return _check32BitOn64System;
}

- (void) setCheck32BitOn64System: (BOOL) val
{
    _check32BitOn64System = val;
    self.dictionary[@"check32BitOn64System"] = @(val);
}

- (NSString*) comparisonValue
{
    if([[NSNull null] isEqual:self.dictionary[@"comparisonValue"]])
    {
        return nil;
    }   
    return self.dictionary[@"comparisonValue"];
}

- (void) setComparisonValue: (NSString*) val
{
    self.dictionary[@"comparisonValue"] = val;
}

- (NSString*) keyPath
{
    if([[NSNull null] isEqual:self.dictionary[@"keyPath"]])
    {
        return nil;
    }   
    return self.dictionary[@"keyPath"];
}

- (void) setKeyPath: (NSString*) val
{
    self.dictionary[@"keyPath"] = val;
}

- (MSGraphWin32LobAppRegistryRuleOperationType*) operationType
{
    if(!_operationType){
        _operationType = [self.dictionary[@"operationType"] toMSGraphWin32LobAppRegistryRuleOperationType];
    }
    return _operationType;
}

- (void) setOperationType: (MSGraphWin32LobAppRegistryRuleOperationType*) val
{
    _operationType = val;
    self.dictionary[@"operationType"] = val;
}

- (MSGraphWin32LobAppRuleOperator*) operator
{
    if(!_operator){
        _operator = [self.dictionary[@"operator"] toMSGraphWin32LobAppRuleOperator];
    }
    return _operator;
}

- (void) setOperator: (MSGraphWin32LobAppRuleOperator*) val
{
    _operator = val;
    self.dictionary[@"operator"] = val;
}

- (NSString*) valueName
{
    if([[NSNull null] isEqual:self.dictionary[@"valueName"]])
    {
        return nil;
    }   
    return self.dictionary[@"valueName"];
}

- (void) setValueName: (NSString*) val
{
    self.dictionary[@"valueName"] = val;
}

@end
