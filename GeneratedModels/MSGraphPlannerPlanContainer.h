// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPlannerContainerType.h"


#import "MSObject.h"

@interface MSGraphPlannerPlanContainer : MSObject

@property (nonnull, nonatomic, setter=setContainerId:, getter=containerId) NSString* containerId;
@property (nonnull, nonatomic, setter=setType:, getter=type) MSGraphPlannerContainerType* type;
@property (nonnull, nonatomic, setter=setUrl:, getter=url) NSString* url;

@end
