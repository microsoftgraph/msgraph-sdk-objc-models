// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphWin32LobAppFileSystemRule()
{
    BOOL _check32BitOn64System;
    NSString* _comparisonValue;
    NSString* _fileOrFolderName;
    MSGraphWin32LobAppFileSystemOperationType* _operationType;
    MSGraphWin32LobAppRuleOperator* _operator;
    NSString* _path;
}
@end

@implementation MSGraphWin32LobAppFileSystemRule

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

- (NSString*) fileOrFolderName
{
    if([[NSNull null] isEqual:self.dictionary[@"fileOrFolderName"]])
    {
        return nil;
    }   
    return self.dictionary[@"fileOrFolderName"];
}

- (void) setFileOrFolderName: (NSString*) val
{
    self.dictionary[@"fileOrFolderName"] = val;
}

- (MSGraphWin32LobAppFileSystemOperationType*) operationType
{
    if(!_operationType){
        _operationType = [self.dictionary[@"operationType"] toMSGraphWin32LobAppFileSystemOperationType];
    }
    return _operationType;
}

- (void) setOperationType: (MSGraphWin32LobAppFileSystemOperationType*) val
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

- (NSString*) path
{
    if([[NSNull null] isEqual:self.dictionary[@"path"]])
    {
        return nil;
    }   
    return self.dictionary[@"path"];
}

- (void) setPath: (NSString*) val
{
    self.dictionary[@"path"] = val;
}

@end
