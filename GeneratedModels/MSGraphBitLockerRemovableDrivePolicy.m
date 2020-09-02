// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBitLockerRemovableDrivePolicy()
{
    BOOL _blockCrossOrganizationWriteAccess;
    MSGraphBitLockerEncryptionMethod* _encryptionMethod;
    BOOL _requireEncryptionForWriteAccess;
}
@end

@implementation MSGraphBitLockerRemovableDrivePolicy

- (BOOL) blockCrossOrganizationWriteAccess
{
    _blockCrossOrganizationWriteAccess = [self.dictionary[@"blockCrossOrganizationWriteAccess"] boolValue];
    return _blockCrossOrganizationWriteAccess;
}

- (void) setBlockCrossOrganizationWriteAccess: (BOOL) val
{
    _blockCrossOrganizationWriteAccess = val;
    self.dictionary[@"blockCrossOrganizationWriteAccess"] = @(val);
}

- (MSGraphBitLockerEncryptionMethod*) encryptionMethod
{
    if(!_encryptionMethod){
        _encryptionMethod = [self.dictionary[@"encryptionMethod"] toMSGraphBitLockerEncryptionMethod];
    }
    return _encryptionMethod;
}

- (void) setEncryptionMethod: (MSGraphBitLockerEncryptionMethod*) val
{
    _encryptionMethod = val;
    self.dictionary[@"encryptionMethod"] = val;
}

- (BOOL) requireEncryptionForWriteAccess
{
    _requireEncryptionForWriteAccess = [self.dictionary[@"requireEncryptionForWriteAccess"] boolValue];
    return _requireEncryptionForWriteAccess;
}

- (void) setRequireEncryptionForWriteAccess: (BOOL) val
{
    _requireEncryptionForWriteAccess = val;
    self.dictionary[@"requireEncryptionForWriteAccess"] = @(val);
}

@end
