// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppNotification.h"

@interface MSGraphWin32LobAppNotification () {
    MSGraphWin32LobAppNotificationValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWin32LobAppNotificationValue enumValue;
@end

@implementation MSGraphWin32LobAppNotification

+ (MSGraphWin32LobAppNotification*) showAll {
    static MSGraphWin32LobAppNotification *_showAll;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _showAll = [[MSGraphWin32LobAppNotification alloc] init];
        _showAll.enumValue = MSGraphWin32LobAppNotificationShowAll;
    });
    return _showAll;
}
+ (MSGraphWin32LobAppNotification*) showReboot {
    static MSGraphWin32LobAppNotification *_showReboot;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _showReboot = [[MSGraphWin32LobAppNotification alloc] init];
        _showReboot.enumValue = MSGraphWin32LobAppNotificationShowReboot;
    });
    return _showReboot;
}
+ (MSGraphWin32LobAppNotification*) hideAll {
    static MSGraphWin32LobAppNotification *_hideAll;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _hideAll = [[MSGraphWin32LobAppNotification alloc] init];
        _hideAll.enumValue = MSGraphWin32LobAppNotificationHideAll;
    });
    return _hideAll;
}

+ (MSGraphWin32LobAppNotification*) UnknownEnumValue {
    static MSGraphWin32LobAppNotification *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWin32LobAppNotification alloc] init];
        _unknownValue.enumValue = MSGraphWin32LobAppNotificationEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWin32LobAppNotification*) win32LobAppNotificationWithEnumValue:(MSGraphWin32LobAppNotificationValue)val {

    switch(val)
    {
        case MSGraphWin32LobAppNotificationShowAll:
            return [MSGraphWin32LobAppNotification showAll];
        case MSGraphWin32LobAppNotificationShowReboot:
            return [MSGraphWin32LobAppNotification showReboot];
        case MSGraphWin32LobAppNotificationHideAll:
            return [MSGraphWin32LobAppNotification hideAll];
        case MSGraphWin32LobAppNotificationEndOfEnum:
        default:
            return [MSGraphWin32LobAppNotification UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWin32LobAppNotificationShowAll:
            return @"showAll";
        case MSGraphWin32LobAppNotificationShowReboot:
            return @"showReboot";
        case MSGraphWin32LobAppNotificationHideAll:
            return @"hideAll";
        case MSGraphWin32LobAppNotificationEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWin32LobAppNotificationValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWin32LobAppNotification)

- (MSGraphWin32LobAppNotification*) toMSGraphWin32LobAppNotification{

    if([self isEqualToString:@"showAll"])
    {
          return [MSGraphWin32LobAppNotification showAll];
    }
    else if([self isEqualToString:@"showReboot"])
    {
          return [MSGraphWin32LobAppNotification showReboot];
    }
    else if([self isEqualToString:@"hideAll"])
    {
          return [MSGraphWin32LobAppNotification hideAll];
    }
    else {
        return [MSGraphWin32LobAppNotification UnknownEnumValue];
    }
}

@end
