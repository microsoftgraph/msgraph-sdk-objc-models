// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphPendingContentUpdate : MSObject

@property (nullable, nonatomic, setter=setQueuedDateTime:, getter=queuedDateTime) NSDate* queuedDateTime;

@end
