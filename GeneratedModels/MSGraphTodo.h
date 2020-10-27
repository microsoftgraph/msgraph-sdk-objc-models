// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphTodoTaskList; 


#import "MSGraphEntity.h"

@interface MSGraphTodo : MSGraphEntity

  @property (nullable, nonatomic, setter=setLists:, getter=lists) NSArray* lists;
  
@end
