// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphConditionalAccessClientApp.h"

@interface MSGraphConditionalAccessClientApp () {
    MSGraphConditionalAccessClientAppValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphConditionalAccessClientAppValue enumValue;
@end

@implementation MSGraphConditionalAccessClientApp

+ (MSGraphConditionalAccessClientApp*) all {
    static MSGraphConditionalAccessClientApp *_all;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _all = [[MSGraphConditionalAccessClientApp alloc] init];
        _all.enumValue = MSGraphConditionalAccessClientAppAll;
    });
    return _all;
}
+ (MSGraphConditionalAccessClientApp*) browser {
    static MSGraphConditionalAccessClientApp *_browser;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _browser = [[MSGraphConditionalAccessClientApp alloc] init];
        _browser.enumValue = MSGraphConditionalAccessClientAppBrowser;
    });
    return _browser;
}
+ (MSGraphConditionalAccessClientApp*) mobileAppsAndDesktopClients {
    static MSGraphConditionalAccessClientApp *_mobileAppsAndDesktopClients;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mobileAppsAndDesktopClients = [[MSGraphConditionalAccessClientApp alloc] init];
        _mobileAppsAndDesktopClients.enumValue = MSGraphConditionalAccessClientAppMobileAppsAndDesktopClients;
    });
    return _mobileAppsAndDesktopClients;
}
+ (MSGraphConditionalAccessClientApp*) exchangeActiveSync {
    static MSGraphConditionalAccessClientApp *_exchangeActiveSync;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _exchangeActiveSync = [[MSGraphConditionalAccessClientApp alloc] init];
        _exchangeActiveSync.enumValue = MSGraphConditionalAccessClientAppExchangeActiveSync;
    });
    return _exchangeActiveSync;
}
+ (MSGraphConditionalAccessClientApp*) easSupported {
    static MSGraphConditionalAccessClientApp *_easSupported;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _easSupported = [[MSGraphConditionalAccessClientApp alloc] init];
        _easSupported.enumValue = MSGraphConditionalAccessClientAppEasSupported;
    });
    return _easSupported;
}
+ (MSGraphConditionalAccessClientApp*) other {
    static MSGraphConditionalAccessClientApp *_other;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _other = [[MSGraphConditionalAccessClientApp alloc] init];
        _other.enumValue = MSGraphConditionalAccessClientAppOther;
    });
    return _other;
}
+ (MSGraphConditionalAccessClientApp*) unknownFutureValue {
    static MSGraphConditionalAccessClientApp *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphConditionalAccessClientApp alloc] init];
        _unknownFutureValue.enumValue = MSGraphConditionalAccessClientAppUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphConditionalAccessClientApp*) UnknownEnumValue {
    static MSGraphConditionalAccessClientApp *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphConditionalAccessClientApp alloc] init];
        _unknownValue.enumValue = MSGraphConditionalAccessClientAppEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphConditionalAccessClientApp*) conditionalAccessClientAppWithEnumValue:(MSGraphConditionalAccessClientAppValue)val {

    switch(val)
    {
        case MSGraphConditionalAccessClientAppAll:
            return [MSGraphConditionalAccessClientApp all];
        case MSGraphConditionalAccessClientAppBrowser:
            return [MSGraphConditionalAccessClientApp browser];
        case MSGraphConditionalAccessClientAppMobileAppsAndDesktopClients:
            return [MSGraphConditionalAccessClientApp mobileAppsAndDesktopClients];
        case MSGraphConditionalAccessClientAppExchangeActiveSync:
            return [MSGraphConditionalAccessClientApp exchangeActiveSync];
        case MSGraphConditionalAccessClientAppEasSupported:
            return [MSGraphConditionalAccessClientApp easSupported];
        case MSGraphConditionalAccessClientAppOther:
            return [MSGraphConditionalAccessClientApp other];
        case MSGraphConditionalAccessClientAppUnknownFutureValue:
            return [MSGraphConditionalAccessClientApp unknownFutureValue];
        case MSGraphConditionalAccessClientAppEndOfEnum:
        default:
            return [MSGraphConditionalAccessClientApp UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphConditionalAccessClientAppAll:
            return @"all";
        case MSGraphConditionalAccessClientAppBrowser:
            return @"browser";
        case MSGraphConditionalAccessClientAppMobileAppsAndDesktopClients:
            return @"mobileAppsAndDesktopClients";
        case MSGraphConditionalAccessClientAppExchangeActiveSync:
            return @"exchangeActiveSync";
        case MSGraphConditionalAccessClientAppEasSupported:
            return @"easSupported";
        case MSGraphConditionalAccessClientAppOther:
            return @"other";
        case MSGraphConditionalAccessClientAppUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphConditionalAccessClientAppEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphConditionalAccessClientAppValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphConditionalAccessClientApp)

- (MSGraphConditionalAccessClientApp*) toMSGraphConditionalAccessClientApp{

    if([self isEqualToString:@"all"])
    {
          return [MSGraphConditionalAccessClientApp all];
    }
    else if([self isEqualToString:@"browser"])
    {
          return [MSGraphConditionalAccessClientApp browser];
    }
    else if([self isEqualToString:@"mobileAppsAndDesktopClients"])
    {
          return [MSGraphConditionalAccessClientApp mobileAppsAndDesktopClients];
    }
    else if([self isEqualToString:@"exchangeActiveSync"])
    {
          return [MSGraphConditionalAccessClientApp exchangeActiveSync];
    }
    else if([self isEqualToString:@"easSupported"])
    {
          return [MSGraphConditionalAccessClientApp easSupported];
    }
    else if([self isEqualToString:@"other"])
    {
          return [MSGraphConditionalAccessClientApp other];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphConditionalAccessClientApp unknownFutureValue];
    }
    else {
        return [MSGraphConditionalAccessClientApp UnknownEnumValue];
    }
}

@end
