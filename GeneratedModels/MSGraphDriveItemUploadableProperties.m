// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDriveItemUploadableProperties()
{
    NSString* _driveItemUploadablePropertiesDescription;
    int64_t _fileSize;
    MSGraphFileSystemInfo* _fileSystemInfo;
    NSString* _name;
}
@end

@implementation MSGraphDriveItemUploadableProperties

- (NSString*) driveItemUploadablePropertiesDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setDriveItemUploadablePropertiesDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (int64_t) fileSize
{
    _fileSize = [self.dictionary[@"fileSize"] longLongValue];
    return _fileSize;
}

- (void) setFileSize: (int64_t) val
{
    _fileSize = val;
    self.dictionary[@"fileSize"] = @(val);
}

- (MSGraphFileSystemInfo*) fileSystemInfo
{
    if(!_fileSystemInfo){
        _fileSystemInfo = [[MSGraphFileSystemInfo alloc] initWithDictionary: self.dictionary[@"fileSystemInfo"]];
    }
    return _fileSystemInfo;
}

- (void) setFileSystemInfo: (MSGraphFileSystemInfo*) val
{
    _fileSystemInfo = val;
    self.dictionary[@"fileSystemInfo"] = val;
}

- (NSString*) name
{
    if([[NSNull null] isEqual:self.dictionary[@"name"]])
    {
        return nil;
    }   
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

@end
