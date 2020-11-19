// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphLobbyBypassScope.h"


#import "MSObject.h"

@interface MSGraphLobbyBypassSettings : MSObject

@property (nonatomic, setter=setIsDialInBypassEnabled:, getter=isDialInBypassEnabled) BOOL isDialInBypassEnabled;
@property (nullable, nonatomic, setter=setScope:, getter=scope) MSGraphLobbyBypassScope* scope;

@end
