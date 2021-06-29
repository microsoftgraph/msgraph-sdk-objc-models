// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExternalConnectorsExternalItemContentType.h"


#import "MSObject.h"

@interface MSGraphExternalConnectorsExternalItemContent : MSObject

@property (nonnull, nonatomic, setter=setType:, getter=type) MSGraphExternalConnectorsExternalItemContentType* type;
@property (nullable, nonatomic, setter=setValue:, getter=value) NSString* value;

@end
