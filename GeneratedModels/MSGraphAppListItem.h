// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphAppListItem : MSObject

@property (nullable, nonatomic, setter=setAppId:, getter=appId) NSString* appId;
@property (nullable, nonatomic, setter=setAppStoreUrl:, getter=appStoreUrl) NSString* appStoreUrl;
@property (nonnull, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setPublisher:, getter=publisher) NSString* publisher;

@end
