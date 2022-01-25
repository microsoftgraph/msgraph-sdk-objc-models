// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphConditionalAccessFilter; 


#import "MSObject.h"

@interface MSGraphConditionalAccessDevices : MSObject

@property (nullable, nonatomic, setter=setDeviceFilter:, getter=deviceFilter) MSGraphConditionalAccessFilter* deviceFilter;

@end
