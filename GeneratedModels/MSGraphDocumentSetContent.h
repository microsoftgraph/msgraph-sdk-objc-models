// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphContentTypeInfo; 


#import "MSObject.h"

@interface MSGraphDocumentSetContent : MSObject

@property (nullable, nonatomic, setter=setContentType:, getter=contentType) MSGraphContentTypeInfo* contentType;
@property (nullable, nonatomic, setter=setFileName:, getter=fileName) NSString* fileName;
@property (nullable, nonatomic, setter=setFolderName:, getter=folderName) NSString* folderName;

@end
