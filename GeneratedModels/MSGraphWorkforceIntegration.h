// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphWorkforceIntegrationEncryption; 
#import "MSGraphWorkforceIntegrationSupportedEntities.h"


#import "MSGraphChangeTrackedEntity.h"

@interface MSGraphWorkforceIntegration : MSGraphChangeTrackedEntity

  @property (nonatomic, setter=setApiVersion:, getter=apiVersion) int32_t apiVersion;
    @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nullable, nonatomic, setter=setEncryption:, getter=encryption) MSGraphWorkforceIntegrationEncryption* encryption;
    @property (nonatomic, setter=setIsActive:, getter=isActive) BOOL isActive;
    @property (nullable, nonatomic, setter=setSupportedEntities:, getter=supportedEntities) MSGraphWorkforceIntegrationSupportedEntities* supportedEntities;
    @property (nullable, nonatomic, setter=setUrl:, getter=url) NSString* url;
  
@end
