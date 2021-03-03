// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPrintJobConfiguration, MSGraphUserIdentity, MSGraphPrintJobStatus, MSGraphPrintDocument, MSGraphPrintTask; 


#import "MSGraphEntity.h"

@interface MSGraphPrintJob : MSGraphEntity

  @property (nonnull, nonatomic, setter=setConfiguration:, getter=configuration) MSGraphPrintJobConfiguration* configuration;
    @property (nullable, nonatomic, setter=setCreatedBy:, getter=createdBy) MSGraphUserIdentity* createdBy;
    @property (nonnull, nonatomic, setter=setCreatedDateTime:, getter=createdDateTime) NSDate* createdDateTime;
    @property (nonatomic, setter=setIsFetchable:, getter=isFetchable) BOOL isFetchable;
    @property (nullable, nonatomic, setter=setRedirectedFrom:, getter=redirectedFrom) NSString* redirectedFrom;
    @property (nullable, nonatomic, setter=setRedirectedTo:, getter=redirectedTo) NSString* redirectedTo;
    @property (nonnull, nonatomic, setter=setStatus:, getter=status) MSGraphPrintJobStatus* status;
    @property (nullable, nonatomic, setter=setDocuments:, getter=documents) NSArray* documents;
    @property (nullable, nonatomic, setter=setTasks:, getter=tasks) NSArray* tasks;
  
@end
