// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphEdiscoveryReviewSet; 
#import "MSGraphEdiscoveryExportOptions.h"
#import "MSGraphEdiscoveryExportFileStructure.h"


#import "MSGraphEdiscoveryCaseOperation.h"

@interface MSGraphEdiscoveryCaseExportOperation : MSGraphEdiscoveryCaseOperation

  @property (nullable, nonatomic, setter=setAzureBlobContainer:, getter=azureBlobContainer) NSString* azureBlobContainer;
    @property (nullable, nonatomic, setter=setAzureBlobToken:, getter=azureBlobToken) NSString* azureBlobToken;
    @property (nullable, nonatomic, setter=setCaseExportOperationDescription:, getter=caseExportOperationDescription) NSString* caseExportOperationDescription;
    @property (nullable, nonatomic, setter=setExportOptions:, getter=exportOptions) MSGraphEdiscoveryExportOptions* exportOptions;
    @property (nullable, nonatomic, setter=setExportStructure:, getter=exportStructure) MSGraphEdiscoveryExportFileStructure* exportStructure;
    @property (nullable, nonatomic, setter=setOutputFolderId:, getter=outputFolderId) NSString* outputFolderId;
    @property (nullable, nonatomic, setter=setOutputName:, getter=outputName) NSString* outputName;
    @property (nullable, nonatomic, setter=setReviewSet:, getter=reviewSet) MSGraphEdiscoveryReviewSet* reviewSet;
  
@end
