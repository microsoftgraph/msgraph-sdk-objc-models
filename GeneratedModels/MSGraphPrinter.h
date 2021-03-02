// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPrintConnector, MSGraphPrinterShare, MSGraphPrintTaskTrigger; 


#import "MSGraphPrinterBase.h"

@interface MSGraphPrinter : MSGraphPrinterBase

  @property (nonatomic, setter=setHasPhysicalDevice:, getter=hasPhysicalDevice) BOOL hasPhysicalDevice;
    @property (nonatomic, setter=setIsShared:, getter=isShared) BOOL isShared;
    @property (nonnull, nonatomic, setter=setRegisteredDateTime:, getter=registeredDateTime) NSDate* registeredDateTime;
    @property (nullable, nonatomic, setter=setConnectors:, getter=connectors) NSArray* connectors;
    @property (nullable, nonatomic, setter=setShares:, getter=shares) NSArray* shares;
    @property (nullable, nonatomic, setter=setTaskTriggers:, getter=taskTriggers) NSArray* taskTriggers;
  
@end
