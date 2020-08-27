// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCallRecordsWifiRadioTypeValue){

	MSGraphCallRecordsWifiRadioTypeUnknown = 0,
	MSGraphCallRecordsWifiRadioTypeWifi80211a = 1,
	MSGraphCallRecordsWifiRadioTypeWifi80211b = 2,
	MSGraphCallRecordsWifiRadioTypeWifi80211g = 3,
	MSGraphCallRecordsWifiRadioTypeWifi80211n = 4,
	MSGraphCallRecordsWifiRadioTypeWifi80211ac = 5,
	MSGraphCallRecordsWifiRadioTypeWifi80211ax = 6,
	MSGraphCallRecordsWifiRadioTypeUnknownFutureValue = 7,
    MSGraphCallRecordsWifiRadioTypeEndOfEnum
};

@interface MSGraphCallRecordsWifiRadioType : NSObject

+(MSGraphCallRecordsWifiRadioType*) unknown;
+(MSGraphCallRecordsWifiRadioType*) wifi80211a;
+(MSGraphCallRecordsWifiRadioType*) wifi80211b;
+(MSGraphCallRecordsWifiRadioType*) wifi80211g;
+(MSGraphCallRecordsWifiRadioType*) wifi80211n;
+(MSGraphCallRecordsWifiRadioType*) wifi80211ac;
+(MSGraphCallRecordsWifiRadioType*) wifi80211ax;
+(MSGraphCallRecordsWifiRadioType*) unknownFutureValue;

+(MSGraphCallRecordsWifiRadioType*) UnknownEnumValue;

+(MSGraphCallRecordsWifiRadioType*) wifiRadioTypeWithEnumValue:(MSGraphCallRecordsWifiRadioTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCallRecordsWifiRadioTypeValue enumValue;

@end


@interface NSString (MSGraphCallRecordsWifiRadioType)

- (MSGraphCallRecordsWifiRadioType*) toMSGraphCallRecordsWifiRadioType;

@end
