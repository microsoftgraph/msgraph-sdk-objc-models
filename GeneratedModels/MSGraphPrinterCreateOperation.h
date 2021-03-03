// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPrinter; 


#import "MSGraphPrintOperation.h"

@interface MSGraphPrinterCreateOperation : MSGraphPrintOperation

  @property (nullable, nonatomic, setter=setCertificate:, getter=certificate) NSString* certificate;
    @property (nullable, nonatomic, setter=setPrinter:, getter=printer) MSGraphPrinter* printer;
  
@end
