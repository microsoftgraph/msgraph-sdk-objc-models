// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPrintDocumentUploadProperties : MSObject

@property (nonnull, nonatomic, setter=setContentType:, getter=contentType) NSString* contentType;
@property (nonnull, nonatomic, setter=setDocumentName:, getter=documentName) NSString* documentName;
@property (nonatomic, setter=setSize:, getter=size) int64_t size;

@end
