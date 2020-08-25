// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPersistentBrowserSessionMode.h"

@interface MSGraphPersistentBrowserSessionMode () {
    MSGraphPersistentBrowserSessionModeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPersistentBrowserSessionModeValue enumValue;
@end

@implementation MSGraphPersistentBrowserSessionMode

+ (MSGraphPersistentBrowserSessionMode*) always {
    static MSGraphPersistentBrowserSessionMode *_always;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _always = [[MSGraphPersistentBrowserSessionMode alloc] init];
        _always.enumValue = MSGraphPersistentBrowserSessionModeAlways;
    });
    return _always;
}
+ (MSGraphPersistentBrowserSessionMode*) never {
    static MSGraphPersistentBrowserSessionMode *_never;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _never = [[MSGraphPersistentBrowserSessionMode alloc] init];
        _never.enumValue = MSGraphPersistentBrowserSessionModeNever;
    });
    return _never;
}

+ (MSGraphPersistentBrowserSessionMode*) UnknownEnumValue {
    static MSGraphPersistentBrowserSessionMode *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPersistentBrowserSessionMode alloc] init];
        _unknownValue.enumValue = MSGraphPersistentBrowserSessionModeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPersistentBrowserSessionMode*) persistentBrowserSessionModeWithEnumValue:(MSGraphPersistentBrowserSessionModeValue)val {

    switch(val)
    {
        case MSGraphPersistentBrowserSessionModeAlways:
            return [MSGraphPersistentBrowserSessionMode always];
        case MSGraphPersistentBrowserSessionModeNever:
            return [MSGraphPersistentBrowserSessionMode never];
        case MSGraphPersistentBrowserSessionModeEndOfEnum:
        default:
            return [MSGraphPersistentBrowserSessionMode UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPersistentBrowserSessionModeAlways:
            return @"always";
        case MSGraphPersistentBrowserSessionModeNever:
            return @"never";
        case MSGraphPersistentBrowserSessionModeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPersistentBrowserSessionModeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPersistentBrowserSessionMode)

- (MSGraphPersistentBrowserSessionMode*) toMSGraphPersistentBrowserSessionMode{

    if([self isEqualToString:@"always"])
    {
          return [MSGraphPersistentBrowserSessionMode always];
    }
    else if([self isEqualToString:@"never"])
    {
          return [MSGraphPersistentBrowserSessionMode never];
    }
    else {
        return [MSGraphPersistentBrowserSessionMode UnknownEnumValue];
    }
}

@end
