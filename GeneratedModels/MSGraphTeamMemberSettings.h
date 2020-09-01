// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphTeamMemberSettings : MSObject

@property (nonatomic, setter=setAllowAddRemoveApps:, getter=allowAddRemoveApps) BOOL allowAddRemoveApps;
@property (nonatomic, setter=setAllowCreatePrivateChannels:, getter=allowCreatePrivateChannels) BOOL allowCreatePrivateChannels;
@property (nonatomic, setter=setAllowCreateUpdateChannels:, getter=allowCreateUpdateChannels) BOOL allowCreateUpdateChannels;
@property (nonatomic, setter=setAllowCreateUpdateRemoveConnectors:, getter=allowCreateUpdateRemoveConnectors) BOOL allowCreateUpdateRemoveConnectors;
@property (nonatomic, setter=setAllowCreateUpdateRemoveTabs:, getter=allowCreateUpdateRemoveTabs) BOOL allowCreateUpdateRemoveTabs;
@property (nonatomic, setter=setAllowDeleteChannels:, getter=allowDeleteChannels) BOOL allowDeleteChannels;

@end
