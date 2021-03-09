// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAgreementFileProperties()
{
    NSDate* _createdDateTime;
    NSString* _displayName;
    MSGraphAgreementFileData* _fileData;
    NSString* _fileName;
    BOOL _isDefault;
    BOOL _isMajorVersion;
    NSString* _language;
}
@end

@implementation MSGraphAgreementFileProperties

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.agreementFileProperties";
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

- (MSGraphAgreementFileData*) fileData
{
    if(!_fileData){
        _fileData = [[MSGraphAgreementFileData alloc] initWithDictionary: self.dictionary[@"fileData"]];
    }
    return _fileData;
}

- (void) setFileData: (MSGraphAgreementFileData*) val
{
    _fileData = val;
    self.dictionary[@"fileData"] = val;
}

- (NSString*) fileName
{
    if([[NSNull null] isEqual:self.dictionary[@"fileName"]])
    {
        return nil;
    }   
    return self.dictionary[@"fileName"];
}

- (void) setFileName: (NSString*) val
{
    self.dictionary[@"fileName"] = val;
}

- (BOOL) isDefault
{
    _isDefault = [self.dictionary[@"isDefault"] boolValue];
    return _isDefault;
}

- (void) setIsDefault: (BOOL) val
{
    _isDefault = val;
    self.dictionary[@"isDefault"] = @(val);
}

- (BOOL) isMajorVersion
{
    _isMajorVersion = [self.dictionary[@"isMajorVersion"] boolValue];
    return _isMajorVersion;
}

- (void) setIsMajorVersion: (BOOL) val
{
    _isMajorVersion = val;
    self.dictionary[@"isMajorVersion"] = @(val);
}

- (NSString*) language
{
    if([[NSNull null] isEqual:self.dictionary[@"language"]])
    {
        return nil;
    }   
    return self.dictionary[@"language"];
}

- (void) setLanguage: (NSString*) val
{
    self.dictionary[@"language"] = val;
}


@end
