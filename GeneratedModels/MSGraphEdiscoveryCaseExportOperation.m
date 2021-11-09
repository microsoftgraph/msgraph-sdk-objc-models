// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEdiscoveryCaseExportOperation()
{
    NSString* _azureBlobContainer;
    NSString* _azureBlobToken;
    NSString* _caseExportOperationDescription;
    MSGraphEdiscoveryExportOptions* _exportOptions;
    MSGraphEdiscoveryExportFileStructure* _exportStructure;
    NSString* _outputFolderId;
    NSString* _outputName;
    MSGraphEdiscoveryReviewSet* _reviewSet;
}
@end

@implementation MSGraphEdiscoveryCaseExportOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.ediscovery.caseExportOperation";
    }
    return self;
}
- (NSString*) azureBlobContainer
{
    if([[NSNull null] isEqual:self.dictionary[@"azureBlobContainer"]])
    {
        return nil;
    }   
    return self.dictionary[@"azureBlobContainer"];
}

- (void) setAzureBlobContainer: (NSString*) val
{
    self.dictionary[@"azureBlobContainer"] = val;
}

- (NSString*) azureBlobToken
{
    if([[NSNull null] isEqual:self.dictionary[@"azureBlobToken"]])
    {
        return nil;
    }   
    return self.dictionary[@"azureBlobToken"];
}

- (void) setAzureBlobToken: (NSString*) val
{
    self.dictionary[@"azureBlobToken"] = val;
}

- (NSString*) caseExportOperationDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setCaseExportOperationDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (MSGraphEdiscoveryExportOptions*) exportOptions
{
    if(!_exportOptions){
        _exportOptions = [self.dictionary[@"exportOptions"] toMSGraphEdiscoveryExportOptions];
    }
    return _exportOptions;
}

- (void) setExportOptions: (MSGraphEdiscoveryExportOptions*) val
{
    _exportOptions = val;
    self.dictionary[@"exportOptions"] = val;
}

- (MSGraphEdiscoveryExportFileStructure*) exportStructure
{
    if(!_exportStructure){
        _exportStructure = [self.dictionary[@"exportStructure"] toMSGraphEdiscoveryExportFileStructure];
    }
    return _exportStructure;
}

- (void) setExportStructure: (MSGraphEdiscoveryExportFileStructure*) val
{
    _exportStructure = val;
    self.dictionary[@"exportStructure"] = val;
}

- (NSString*) outputFolderId
{
    if([[NSNull null] isEqual:self.dictionary[@"outputFolderId"]])
    {
        return nil;
    }   
    return self.dictionary[@"outputFolderId"];
}

- (void) setOutputFolderId: (NSString*) val
{
    self.dictionary[@"outputFolderId"] = val;
}

- (NSString*) outputName
{
    if([[NSNull null] isEqual:self.dictionary[@"outputName"]])
    {
        return nil;
    }   
    return self.dictionary[@"outputName"];
}

- (void) setOutputName: (NSString*) val
{
    self.dictionary[@"outputName"] = val;
}

- (MSGraphEdiscoveryReviewSet*) reviewSet
{
    if(!_reviewSet){
        _reviewSet = [[MSGraphEdiscoveryReviewSet alloc] initWithDictionary: self.dictionary[@"reviewSet"]];
    }
    return _reviewSet;
}

- (void) setReviewSet: (MSGraphEdiscoveryReviewSet*) val
{
    _reviewSet = val;
    self.dictionary[@"reviewSet"] = val;
}


@end
