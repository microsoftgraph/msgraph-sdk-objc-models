// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#include <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MSGraphConditionalAccessClientAppValue){

	MSGraphConditionalAccessClientAppAll = 0,
	MSGraphConditionalAccessClientAppBrowser = 1,
	MSGraphConditionalAccessClientAppMobileAppsAndDesktopClients = 2,
	MSGraphConditionalAccessClientAppExchangeActiveSync = 3,
	MSGraphConditionalAccessClientAppEasSupported = 4,
	MSGraphConditionalAccessClientAppOther = 5,
	MSGraphConditionalAccessClientAppUnknownFutureValue = 6,
    MSGraphConditionalAccessClientAppEndOfEnum
};

@interface MSGraphConditionalAccessClientApp : NSObject

+(MSGraphConditionalAccessClientApp*) all;
+(MSGraphConditionalAccessClientApp*) browser;
+(MSGraphConditionalAccessClientApp*) mobileAppsAndDesktopClients;
+(MSGraphConditionalAccessClientApp*) exchangeActiveSync;
+(MSGraphConditionalAccessClientApp*) easSupported;
+(MSGraphConditionalAccessClientApp*) other;
+(MSGraphConditionalAccessClientApp*) unknownFutureValue;

+(MSGraphConditionalAccessClientApp*) UnknownEnumValue;

+(MSGraphConditionalAccessClientApp*) conditionalAccessClientAppWithEnumValue:(MSGraphConditionalAccessClientAppValue)val;
-(NSString*) ms_toString;

@property (nonatomic, readonly) MSGraphConditionalAccessClientAppValue enumValue;

@end


@interface NSString (MSGraphConditionalAccessClientApp)

- (MSGraphConditionalAccessClientApp*) toMSGraphConditionalAccessClientApp;

@end
