// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class NSDictionary; 


#import "MSObject.h"

@interface MSGraphResultTemplate : MSObject

@property (nullable, nonatomic, setter=setBody:, getter=body) NSDictionary* body;
@property (nullable, nonatomic, setter=setDisplayName:, getter=displayName) NSString* displayName;

@end
