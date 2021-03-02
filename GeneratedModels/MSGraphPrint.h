// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPrintSettings, MSGraphPrintConnector, MSGraphPrintOperation, MSGraphPrinter, MSGraphPrintService, MSGraphPrinterShare, MSGraphPrintTaskDefinition; 


#import "MSObject.h"

@interface MSGraphPrint : MSObject

  @property (nullable, nonatomic, setter=setODataType:, getter=oDataType) NSString *oDataType;
  @property (nullable, nonatomic, setter=setODataEtag:, getter=oDataEtag) NSString *oDataEtag;
  @property (nullable, nonatomic, setter=setSettings:, getter=settings) MSGraphPrintSettings* settings;
    @property (nullable, nonatomic, setter=setConnectors:, getter=connectors) NSArray* connectors;
    @property (nullable, nonatomic, setter=setPrintOperations:, getter=printOperations) NSArray* printOperations;
    @property (nullable, nonatomic, setter=setPrinters:, getter=printers) NSArray* printers;
    @property (nullable, nonatomic, setter=setServices:, getter=services) NSArray* services;
    @property (nullable, nonatomic, setter=setShares:, getter=shares) NSArray* shares;
    @property (nullable, nonatomic, setter=setTaskDefinitions:, getter=taskDefinitions) NSArray* taskDefinitions;
  
@end
