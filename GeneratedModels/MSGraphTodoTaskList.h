// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphExtension, MSGraphTodoTask; 
#import "MSGraphWellknownListName.h"


#import "MSGraphEntity.h"

@interface MSGraphTodoTaskList : MSGraphEntity

  @property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;
    @property (nonatomic, setter=setIsOwner:, getter=isOwner) BOOL isOwner;
    @property (nonatomic, setter=setIsShared:, getter=isShared) BOOL isShared;
    @property (nonnull, nonatomic, setter=setWellknownListName:, getter=wellknownListName) MSGraphWellknownListName* wellknownListName;
    @property (nullable, nonatomic, setter=setExtensions:, getter=extensions) NSArray* extensions;
    @property (nullable, nonatomic, setter=setTasks:, getter=tasks) NSArray* tasks;
  
@end
