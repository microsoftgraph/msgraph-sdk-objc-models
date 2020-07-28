// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphPendingContentUpdate; 


#import "MSObject.h"

@interface MSGraphPendingOperations : MSObject

@property (nullable, nonatomic, setter=setPendingContentUpdate:, getter=pendingContentUpdate) MSGraphPendingContentUpdate* pendingContentUpdate;

@end
