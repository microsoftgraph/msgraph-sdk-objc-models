// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphDocumentSet, MSGraphDocumentSetContent, MSGraphItemReference, MSGraphContentTypeOrder, MSGraphColumnLink, MSGraphColumnDefinition; 


#import "MSGraphEntity.h"

@interface MSGraphContentType : MSGraphEntity

  @property (nullable, nonatomic, setter=setAssociatedHubsUrls:, getter=associatedHubsUrls) NSArray* associatedHubsUrls;
    @property (nullable, nonatomic, setter=setContentTypeDescription:, getter=contentTypeDescription) NSString* contentTypeDescription;
    @property (nullable, nonatomic, setter=setDocumentSet:, getter=documentSet) MSGraphDocumentSet* documentSet;
    @property (nullable, nonatomic, setter=setDocumentTemplate:, getter=documentTemplate) MSGraphDocumentSetContent* documentTemplate;
    @property (nullable, nonatomic, setter=setGroup:, getter=group) NSString* group;
    @property (nonatomic, setter=setHidden:, getter=hidden) BOOL hidden;
    @property (nullable, nonatomic, setter=setInheritedFrom:, getter=inheritedFrom) MSGraphItemReference* inheritedFrom;
    @property (nonatomic, setter=setIsBuiltIn:, getter=isBuiltIn) BOOL isBuiltIn;
    @property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
    @property (nullable, nonatomic, setter=setOrder:, getter=order) MSGraphContentTypeOrder* order;
    @property (nullable, nonatomic, setter=setParentId:, getter=parentId) NSString* parentId;
    @property (nonatomic, setter=setPropagateChanges:, getter=propagateChanges) BOOL propagateChanges;
    @property (nonatomic, setter=setContentTypeReadOnly:, getter=contentTypeReadOnly) BOOL contentTypeReadOnly;
    @property (nonatomic, setter=setSealed:, getter=sealed) BOOL sealed;
    @property (nullable, nonatomic, setter=setBase:, getter=base) MSGraphContentType* base;
    @property (nullable, nonatomic, setter=setBaseTypes:, getter=baseTypes) NSArray* baseTypes;
    @property (nullable, nonatomic, setter=setColumnLinks:, getter=columnLinks) NSArray* columnLinks;
    @property (nullable, nonatomic, setter=setColumnPositions:, getter=columnPositions) NSArray* columnPositions;
    @property (nullable, nonatomic, setter=setColumns:, getter=columns) NSArray* columns;
  
@end
