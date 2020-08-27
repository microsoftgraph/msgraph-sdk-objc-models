// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallRecordsNetworkInfo()
{
    NSString* _ipAddress;
    NSString* _subnet;
    int64_t _linkSpeed;
    MSGraphCallRecordsNetworkConnectionType* _connectionType;
    int32_t _port;
    NSString* _reflexiveIPAddress;
    NSString* _relayIPAddress;
    int32_t _relayPort;
    NSString* _macAddress;
    NSString* _wifiMicrosoftDriver;
    NSString* _wifiMicrosoftDriverVersion;
    NSString* _wifiVendorDriver;
    NSString* _wifiVendorDriverVersion;
    int32_t _wifiChannel;
    MSGraphCallRecordsWifiBand* _wifiBand;
    NSString* _basicServiceSetIdentifier;
    MSGraphCallRecordsWifiRadioType* _wifiRadioType;
    int32_t _wifiSignalStrength;
    int32_t _wifiBatteryCharge;
    NSString* _dnsSuffix;
    double _sentQualityEventRatio;
    double _receivedQualityEventRatio;
    double _delayEventRatio;
    double _bandwidthLowEventRatio;
}
@end

@implementation MSGraphCallRecordsNetworkInfo

- (NSString*) ipAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"ipAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"ipAddress"];
}

- (void) setIpAddress: (NSString*) val
{
    self.dictionary[@"ipAddress"] = val;
}

- (NSString*) subnet
{
    if([[NSNull null] isEqual:self.dictionary[@"subnet"]])
    {
        return nil;
    }   
    return self.dictionary[@"subnet"];
}

- (void) setSubnet: (NSString*) val
{
    self.dictionary[@"subnet"] = val;
}

- (int64_t) linkSpeed
{
    _linkSpeed = [self.dictionary[@"linkSpeed"] longLongValue];
    return _linkSpeed;
}

- (void) setLinkSpeed: (int64_t) val
{
    _linkSpeed = val;
    self.dictionary[@"linkSpeed"] = @(val);
}

- (MSGraphCallRecordsNetworkConnectionType*) connectionType
{
    if(!_connectionType){
        _connectionType = [self.dictionary[@"connectionType"] toMSGraphCallRecordsNetworkConnectionType];
    }
    return _connectionType;
}

- (void) setConnectionType: (MSGraphCallRecordsNetworkConnectionType*) val
{
    _connectionType = val;
    self.dictionary[@"connectionType"] = val;
}

- (int32_t) port
{
    _port = [self.dictionary[@"port"] intValue];
    return _port;
}

- (void) setPort: (int32_t) val
{
    _port = val;
    self.dictionary[@"port"] = @(val);
}

- (NSString*) reflexiveIPAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"reflexiveIPAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"reflexiveIPAddress"];
}

- (void) setReflexiveIPAddress: (NSString*) val
{
    self.dictionary[@"reflexiveIPAddress"] = val;
}

- (NSString*) relayIPAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"relayIPAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"relayIPAddress"];
}

- (void) setRelayIPAddress: (NSString*) val
{
    self.dictionary[@"relayIPAddress"] = val;
}

- (int32_t) relayPort
{
    _relayPort = [self.dictionary[@"relayPort"] intValue];
    return _relayPort;
}

- (void) setRelayPort: (int32_t) val
{
    _relayPort = val;
    self.dictionary[@"relayPort"] = @(val);
}

- (NSString*) macAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"macAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"macAddress"];
}

- (void) setMacAddress: (NSString*) val
{
    self.dictionary[@"macAddress"] = val;
}

- (NSString*) wifiMicrosoftDriver
{
    if([[NSNull null] isEqual:self.dictionary[@"wifiMicrosoftDriver"]])
    {
        return nil;
    }   
    return self.dictionary[@"wifiMicrosoftDriver"];
}

- (void) setWifiMicrosoftDriver: (NSString*) val
{
    self.dictionary[@"wifiMicrosoftDriver"] = val;
}

- (NSString*) wifiMicrosoftDriverVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"wifiMicrosoftDriverVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"wifiMicrosoftDriverVersion"];
}

- (void) setWifiMicrosoftDriverVersion: (NSString*) val
{
    self.dictionary[@"wifiMicrosoftDriverVersion"] = val;
}

- (NSString*) wifiVendorDriver
{
    if([[NSNull null] isEqual:self.dictionary[@"wifiVendorDriver"]])
    {
        return nil;
    }   
    return self.dictionary[@"wifiVendorDriver"];
}

- (void) setWifiVendorDriver: (NSString*) val
{
    self.dictionary[@"wifiVendorDriver"] = val;
}

- (NSString*) wifiVendorDriverVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"wifiVendorDriverVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"wifiVendorDriverVersion"];
}

- (void) setWifiVendorDriverVersion: (NSString*) val
{
    self.dictionary[@"wifiVendorDriverVersion"] = val;
}

- (int32_t) wifiChannel
{
    _wifiChannel = [self.dictionary[@"wifiChannel"] intValue];
    return _wifiChannel;
}

- (void) setWifiChannel: (int32_t) val
{
    _wifiChannel = val;
    self.dictionary[@"wifiChannel"] = @(val);
}

- (MSGraphCallRecordsWifiBand*) wifiBand
{
    if(!_wifiBand){
        _wifiBand = [self.dictionary[@"wifiBand"] toMSGraphCallRecordsWifiBand];
    }
    return _wifiBand;
}

- (void) setWifiBand: (MSGraphCallRecordsWifiBand*) val
{
    _wifiBand = val;
    self.dictionary[@"wifiBand"] = val;
}

- (NSString*) basicServiceSetIdentifier
{
    if([[NSNull null] isEqual:self.dictionary[@"basicServiceSetIdentifier"]])
    {
        return nil;
    }   
    return self.dictionary[@"basicServiceSetIdentifier"];
}

- (void) setBasicServiceSetIdentifier: (NSString*) val
{
    self.dictionary[@"basicServiceSetIdentifier"] = val;
}

- (MSGraphCallRecordsWifiRadioType*) wifiRadioType
{
    if(!_wifiRadioType){
        _wifiRadioType = [self.dictionary[@"wifiRadioType"] toMSGraphCallRecordsWifiRadioType];
    }
    return _wifiRadioType;
}

- (void) setWifiRadioType: (MSGraphCallRecordsWifiRadioType*) val
{
    _wifiRadioType = val;
    self.dictionary[@"wifiRadioType"] = val;
}

- (int32_t) wifiSignalStrength
{
    _wifiSignalStrength = [self.dictionary[@"wifiSignalStrength"] intValue];
    return _wifiSignalStrength;
}

- (void) setWifiSignalStrength: (int32_t) val
{
    _wifiSignalStrength = val;
    self.dictionary[@"wifiSignalStrength"] = @(val);
}

- (int32_t) wifiBatteryCharge
{
    _wifiBatteryCharge = [self.dictionary[@"wifiBatteryCharge"] intValue];
    return _wifiBatteryCharge;
}

- (void) setWifiBatteryCharge: (int32_t) val
{
    _wifiBatteryCharge = val;
    self.dictionary[@"wifiBatteryCharge"] = @(val);
}

- (NSString*) dnsSuffix
{
    if([[NSNull null] isEqual:self.dictionary[@"dnsSuffix"]])
    {
        return nil;
    }   
    return self.dictionary[@"dnsSuffix"];
}

- (void) setDnsSuffix: (NSString*) val
{
    self.dictionary[@"dnsSuffix"] = val;
}

- (double) sentQualityEventRatio
{
    _sentQualityEventRatio = [self.dictionary[@"sentQualityEventRatio"] floatValue];
    return _sentQualityEventRatio;
}

- (void) setSentQualityEventRatio: (double) val
{
    _sentQualityEventRatio = val;
    self.dictionary[@"sentQualityEventRatio"] = @(val);
}

- (double) receivedQualityEventRatio
{
    _receivedQualityEventRatio = [self.dictionary[@"receivedQualityEventRatio"] floatValue];
    return _receivedQualityEventRatio;
}

- (void) setReceivedQualityEventRatio: (double) val
{
    _receivedQualityEventRatio = val;
    self.dictionary[@"receivedQualityEventRatio"] = @(val);
}

- (double) delayEventRatio
{
    _delayEventRatio = [self.dictionary[@"delayEventRatio"] floatValue];
    return _delayEventRatio;
}

- (void) setDelayEventRatio: (double) val
{
    _delayEventRatio = val;
    self.dictionary[@"delayEventRatio"] = @(val);
}

- (double) bandwidthLowEventRatio
{
    _bandwidthLowEventRatio = [self.dictionary[@"bandwidthLowEventRatio"] floatValue];
    return _bandwidthLowEventRatio;
}

- (void) setBandwidthLowEventRatio: (double) val
{
    _bandwidthLowEventRatio = val;
    self.dictionary[@"bandwidthLowEventRatio"] = @(val);
}

@end
