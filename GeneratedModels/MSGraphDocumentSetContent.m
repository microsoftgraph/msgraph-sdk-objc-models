// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDocumentSetContent()
{
    MSGraphContentTypeInfo* _contentType;
    NSString* _fileName;
    NSString* _folderName;
}
@end

@implementation MSGraphDocumentSetContent

- (MSGraphContentTypeInfo*) contentType
{
    if(!_contentType){
        _contentType = [[MSGraphContentTypeInfo alloc] initWithDictionary: self.dictionary[@"contentType"]];
    }
    return _contentType;
}

- (void) setContentType: (MSGraphContentTypeInfo*) val
{
    _contentType = val;
    self.dictionary[@"contentType"] = val;
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

- (NSString*) folderName
{
    if([[NSNull null] isEqual:self.dictionary[@"folderName"]])
    {
        return nil;
    }   
    return self.dictionary[@"folderName"];
}

- (void) setFolderName: (NSString*) val
{
    self.dictionary[@"folderName"] = val;
}

@end
