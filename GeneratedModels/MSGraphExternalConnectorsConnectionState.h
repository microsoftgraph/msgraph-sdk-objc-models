// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphExternalConnectorsConnectionStateValue){

	MSGraphExternalConnectorsConnectionStateDraft = 1,
	MSGraphExternalConnectorsConnectionStateReady = 2,
	MSGraphExternalConnectorsConnectionStateObsolete = 3,
	MSGraphExternalConnectorsConnectionStateLimitExceeded = 4,
	MSGraphExternalConnectorsConnectionStateUnknownFutureValue = 5,
    MSGraphExternalConnectorsConnectionStateEndOfEnum
};

@interface MSGraphExternalConnectorsConnectionState : NSObject

+(MSGraphExternalConnectorsConnectionState*) draft;
+(MSGraphExternalConnectorsConnectionState*) ready;
+(MSGraphExternalConnectorsConnectionState*) obsolete;
+(MSGraphExternalConnectorsConnectionState*) limitExceeded;
+(MSGraphExternalConnectorsConnectionState*) unknownFutureValue;

+(MSGraphExternalConnectorsConnectionState*) UnknownEnumValue;

+(MSGraphExternalConnectorsConnectionState*) connectionStateWithEnumValue:(MSGraphExternalConnectorsConnectionStateValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphExternalConnectorsConnectionStateValue enumValue;

@end


@interface NSString (MSGraphExternalConnectorsConnectionState)

- (MSGraphExternalConnectorsConnectionState*) toMSGraphExternalConnectorsConnectionState;

@end
