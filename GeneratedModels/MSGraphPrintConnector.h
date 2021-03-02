// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPrinterLocation; 


#import "MSGraphEntity.h"

@interface MSGraphPrintConnector : MSGraphEntity

  @property (nonnull, nonatomic, setter=setAppVersion:, getter=appVersion) NSString* appVersion;
    @property (nonnull, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonnull, nonatomic, setter=setFullyQualifiedDomainName:, getter=fullyQualifiedDomainName) NSString* fullyQualifiedDomainName;
    @property (nullable, nonatomic, setter=setLocation:, getter=location) MSGraphPrinterLocation* location;
    @property (nonnull, nonatomic, setter=setOperatingSystem:, getter=operatingSystem) NSString* operatingSystem;
    @property (nonnull, nonatomic, setter=setRegisteredDateTime:, getter=registeredDateTime) NSDate* registeredDateTime;
  
@end
