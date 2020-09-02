// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallRecordsNetworkConnectionType.h"
#import "MSGraphCallRecordsWifiBand.h"
#import "MSGraphCallRecordsWifiRadioType.h"


#import "MSObject.h"

@interface MSGraphCallRecordsNetworkInfo : MSObject

@property (nonatomic, setter=setBandwidthLowEventRatio:, getter=bandwidthLowEventRatio) double bandwidthLowEventRatio;
@property (nullable, nonatomic, setter=setBasicServiceSetIdentifier:, getter=basicServiceSetIdentifier) NSString* basicServiceSetIdentifier;
@property (nonnull, nonatomic, setter=setConnectionType:, getter=connectionType) MSGraphCallRecordsNetworkConnectionType* connectionType;
@property (nonatomic, setter=setDelayEventRatio:, getter=delayEventRatio) double delayEventRatio;
@property (nullable, nonatomic, setter=setDnsSuffix:, getter=dnsSuffix) NSString* dnsSuffix;
@property (nullable, nonatomic, setter=setIpAddress:, getter=ipAddress) NSString* ipAddress;
@property (nonatomic, setter=setLinkSpeed:, getter=linkSpeed) int64_t linkSpeed;
@property (nullable, nonatomic, setter=setMacAddress:, getter=macAddress) NSString* macAddress;
@property (nonatomic, setter=setPort:, getter=port) int32_t port;
@property (nonatomic, setter=setReceivedQualityEventRatio:, getter=receivedQualityEventRatio) double receivedQualityEventRatio;
@property (nullable, nonatomic, setter=setReflexiveIPAddress:, getter=reflexiveIPAddress) NSString* reflexiveIPAddress;
@property (nullable, nonatomic, setter=setRelayIPAddress:, getter=relayIPAddress) NSString* relayIPAddress;
@property (nonatomic, setter=setRelayPort:, getter=relayPort) int32_t relayPort;
@property (nonatomic, setter=setSentQualityEventRatio:, getter=sentQualityEventRatio) double sentQualityEventRatio;
@property (nullable, nonatomic, setter=setSubnet:, getter=subnet) NSString* subnet;
@property (nonnull, nonatomic, setter=setWifiBand:, getter=wifiBand) MSGraphCallRecordsWifiBand* wifiBand;
@property (nonatomic, setter=setWifiBatteryCharge:, getter=wifiBatteryCharge) int32_t wifiBatteryCharge;
@property (nonatomic, setter=setWifiChannel:, getter=wifiChannel) int32_t wifiChannel;
@property (nullable, nonatomic, setter=setWifiMicrosoftDriver:, getter=wifiMicrosoftDriver) NSString* wifiMicrosoftDriver;
@property (nullable, nonatomic, setter=setWifiMicrosoftDriverVersion:, getter=wifiMicrosoftDriverVersion) NSString* wifiMicrosoftDriverVersion;
@property (nonnull, nonatomic, setter=setWifiRadioType:, getter=wifiRadioType) MSGraphCallRecordsWifiRadioType* wifiRadioType;
@property (nonatomic, setter=setWifiSignalStrength:, getter=wifiSignalStrength) int32_t wifiSignalStrength;
@property (nullable, nonatomic, setter=setWifiVendorDriver:, getter=wifiVendorDriver) NSString* wifiVendorDriver;
@property (nullable, nonatomic, setter=setWifiVendorDriverVersion:, getter=wifiVendorDriverVersion) NSString* wifiVendorDriverVersion;

@end
