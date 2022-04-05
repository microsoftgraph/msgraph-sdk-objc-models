// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSGraphIdentity.h"

@interface MSGraphSharePointIdentity : MSGraphIdentity

@property (nullable, nonatomic, setter=setLoginName:, getter=loginName) NSString* loginName;

@end
