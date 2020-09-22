// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWin32LobAppPowerShellScriptRule()
{
    NSString* _comparisonValue;
    NSString* _displayName;
    BOOL _enforceSignatureCheck;
    MSGraphWin32LobAppPowerShellScriptRuleOperationType* _operationType;
    MSGraphWin32LobAppRuleOperator* _operator;
    BOOL _runAs32Bit;
    MSGraphRunAsAccountType* _runAsAccount;
    NSString* _scriptContent;
}
@end

@implementation MSGraphWin32LobAppPowerShellScriptRule

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

- (BOOL) enforceSignatureCheck
{
    _enforceSignatureCheck = [self.dictionary[@"enforceSignatureCheck"] boolValue];
    return _enforceSignatureCheck;
}

- (void) setEnforceSignatureCheck: (BOOL) val
{
    _enforceSignatureCheck = val;
    self.dictionary[@"enforceSignatureCheck"] = @(val);
}

- (MSGraphWin32LobAppPowerShellScriptRuleOperationType*) operationType
{
    if(!_operationType){
        _operationType = [self.dictionary[@"operationType"] toMSGraphWin32LobAppPowerShellScriptRuleOperationType];
    }
    return _operationType;
}

- (void) setOperationType: (MSGraphWin32LobAppPowerShellScriptRuleOperationType*) val
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

- (BOOL) runAs32Bit
{
    _runAs32Bit = [self.dictionary[@"runAs32Bit"] boolValue];
    return _runAs32Bit;
}

- (void) setRunAs32Bit: (BOOL) val
{
    _runAs32Bit = val;
    self.dictionary[@"runAs32Bit"] = @(val);
}

- (MSGraphRunAsAccountType*) runAsAccount
{
    if(!_runAsAccount){
        _runAsAccount = [self.dictionary[@"runAsAccount"] toMSGraphRunAsAccountType];
    }
    return _runAsAccount;
}

- (void) setRunAsAccount: (MSGraphRunAsAccountType*) val
{
    _runAsAccount = val;
    self.dictionary[@"runAsAccount"] = val;
}

- (NSString*) scriptContent
{
    if([[NSNull null] isEqual:self.dictionary[@"scriptContent"]])
    {
        return nil;
    }   
    return self.dictionary[@"scriptContent"];
}

- (void) setScriptContent: (NSString*) val
{
    self.dictionary[@"scriptContent"] = val;
}

@end
