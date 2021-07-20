// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphExternalConnectorsConfiguration, MSGraphExternalConnectorsExternalItem, MSGraphExternalConnectorsConnectionOperation, MSGraphExternalConnectorsSchema; 
#import "MSGraphExternalConnectorsConnectionState.h"


#import "MSGraphEntity.h"

@interface MSGraphExternalConnectorsExternalConnection : MSGraphEntity

  @property (nullable, nonatomic, setter=setConfiguration:, getter=configuration) MSGraphExternalConnectorsConfiguration* configuration;
    @property (nullable, nonatomic, setter=setExternalConnectionDescription:, getter=externalConnectionDescription) NSString* externalConnectionDescription;
    @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nullable, nonatomic, setter=setState:, getter=state) MSGraphExternalConnectorsConnectionState* state;
    @property (nullable, nonatomic, setter=setItems:, getter=items) NSArray* items;
    @property (nullable, nonatomic, setter=setExternalConnectionOperations:, getter=externalConnectionOperations) NSArray* externalConnectionOperations;
    @property (nullable, nonatomic, setter=setSchema:, getter=schema) MSGraphExternalConnectorsSchema* schema;
  
@end
