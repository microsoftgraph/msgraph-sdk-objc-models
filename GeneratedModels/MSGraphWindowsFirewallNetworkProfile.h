// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphStateManagementSetting.h"


#import "MSObject.h"

@interface MSGraphWindowsFirewallNetworkProfile : MSObject

@property (nonatomic, setter=setAuthorizedApplicationRulesFromGroupPolicyMerged:, getter=authorizedApplicationRulesFromGroupPolicyMerged) BOOL authorizedApplicationRulesFromGroupPolicyMerged;
@property (nonatomic, setter=setConnectionSecurityRulesFromGroupPolicyMerged:, getter=connectionSecurityRulesFromGroupPolicyMerged) BOOL connectionSecurityRulesFromGroupPolicyMerged;
@property (nonnull, nonatomic, setter=setFirewallEnabled:, getter=firewallEnabled) MSGraphStateManagementSetting* firewallEnabled;
@property (nonatomic, setter=setGlobalPortRulesFromGroupPolicyMerged:, getter=globalPortRulesFromGroupPolicyMerged) BOOL globalPortRulesFromGroupPolicyMerged;
@property (nonatomic, setter=setInboundConnectionsBlocked:, getter=inboundConnectionsBlocked) BOOL inboundConnectionsBlocked;
@property (nonatomic, setter=setInboundNotificationsBlocked:, getter=inboundNotificationsBlocked) BOOL inboundNotificationsBlocked;
@property (nonatomic, setter=setIncomingTrafficBlocked:, getter=incomingTrafficBlocked) BOOL incomingTrafficBlocked;
@property (nonatomic, setter=setOutboundConnectionsBlocked:, getter=outboundConnectionsBlocked) BOOL outboundConnectionsBlocked;
@property (nonatomic, setter=setPolicyRulesFromGroupPolicyMerged:, getter=policyRulesFromGroupPolicyMerged) BOOL policyRulesFromGroupPolicyMerged;
@property (nonatomic, setter=setSecuredPacketExemptionAllowed:, getter=securedPacketExemptionAllowed) BOOL securedPacketExemptionAllowed;
@property (nonatomic, setter=setStealthModeBlocked:, getter=stealthModeBlocked) BOOL stealthModeBlocked;
@property (nonatomic, setter=setUnicastResponsesToMulticastBroadcastsBlocked:, getter=unicastResponsesToMulticastBroadcastsBlocked) BOOL unicastResponsesToMulticastBroadcastsBlocked;

@end
