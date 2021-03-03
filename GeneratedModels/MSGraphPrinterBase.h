// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPrinterCapabilities, MSGraphPrinterDefaults, MSGraphPrinterLocation, MSGraphPrinterStatus, MSGraphPrintJob; 


#import "MSGraphEntity.h"

@interface MSGraphPrinterBase : MSGraphEntity

  @property (nullable, nonatomic, setter=setCapabilities:, getter=capabilities) MSGraphPrinterCapabilities* capabilities;
    @property (nullable, nonatomic, setter=setDefaults:, getter=defaults) MSGraphPrinterDefaults* defaults;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setIsAcceptingJobs:, getter=isAcceptingJobs) BOOL isAcceptingJobs;
    @property (nullable, nonatomic, setter=setLocation:, getter=location) MSGraphPrinterLocation* location;
    @property (nullable, nonatomic, setter=setManufacturer:, getter=manufacturer) NSString* manufacturer;
    @property (nullable, nonatomic, setter=setModel:, getter=model) NSString* model;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphPrinterStatus* status;
    @property (nullable, nonatomic, setter=setJobs:, getter=jobs) NSArray* jobs;
  
@end
