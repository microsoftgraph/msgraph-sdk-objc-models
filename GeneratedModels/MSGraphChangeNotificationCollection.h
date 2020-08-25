// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphChangeNotification; 


#import "MSObject.h"

@interface MSGraphChangeNotificationCollection : MSObject

@property (nonnull, nonatomic, setter=setValue:, getter=value) NSArray* value;

@end
