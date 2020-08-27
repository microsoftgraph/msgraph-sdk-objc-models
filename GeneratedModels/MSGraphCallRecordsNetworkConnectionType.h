// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphCallRecordsNetworkConnectionTypeValue){

	MSGraphCallRecordsNetworkConnectionTypeUnknown = 0,
	MSGraphCallRecordsNetworkConnectionTypeWired = 1,
	MSGraphCallRecordsNetworkConnectionTypeWifi = 2,
	MSGraphCallRecordsNetworkConnectionTypeMobile = 3,
	MSGraphCallRecordsNetworkConnectionTypeTunnel = 4,
	MSGraphCallRecordsNetworkConnectionTypeUnknownFutureValue = 5,
    MSGraphCallRecordsNetworkConnectionTypeEndOfEnum
};

@interface MSGraphCallRecordsNetworkConnectionType : NSObject

+(MSGraphCallRecordsNetworkConnectionType*) unknown;
+(MSGraphCallRecordsNetworkConnectionType*) wired;
+(MSGraphCallRecordsNetworkConnectionType*) wifi;
+(MSGraphCallRecordsNetworkConnectionType*) mobile;
+(MSGraphCallRecordsNetworkConnectionType*) tunnel;
+(MSGraphCallRecordsNetworkConnectionType*) unknownFutureValue;

+(MSGraphCallRecordsNetworkConnectionType*) UnknownEnumValue;

+(MSGraphCallRecordsNetworkConnectionType*) networkConnectionTypeWithEnumValue:(MSGraphCallRecordsNetworkConnectionTypeValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphCallRecordsNetworkConnectionTypeValue enumValue;

@end


@interface NSString (MSGraphCallRecordsNetworkConnectionType)

- (MSGraphCallRecordsNetworkConnectionType*) toMSGraphCallRecordsNetworkConnectionType;

@end
