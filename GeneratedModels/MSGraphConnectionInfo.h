// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphConnectionInfo : MSObject

@property (nullable, nonatomic, setter=setUrl:, getter=url) NSString* url;

@end
