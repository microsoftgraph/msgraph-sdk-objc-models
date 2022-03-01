// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphFilterMode.h"

@interface MSGraphFilterMode () {
    MSGraphFilterModeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphFilterModeValue enumValue;
@end

@implementation MSGraphFilterMode

+ (MSGraphFilterMode*) include {
    static MSGraphFilterMode *_include;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _include = [[MSGraphFilterMode alloc] init];
        _include.enumValue = MSGraphFilterModeInclude;
    });
    return _include;
}
+ (MSGraphFilterMode*) exclude {
    static MSGraphFilterMode *_exclude;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _exclude = [[MSGraphFilterMode alloc] init];
        _exclude.enumValue = MSGraphFilterModeExclude;
    });
    return _exclude;
}

+ (MSGraphFilterMode*) UnknownEnumValue {
    static MSGraphFilterMode *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphFilterMode alloc] init];
        _unknownValue.enumValue = MSGraphFilterModeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphFilterMode*) filterModeWithEnumValue:(MSGraphFilterModeValue)val {

    switch(val)
    {
        case MSGraphFilterModeInclude:
            return [MSGraphFilterMode include];
        case MSGraphFilterModeExclude:
            return [MSGraphFilterMode exclude];
        case MSGraphFilterModeEndOfEnum:
        default:
            return [MSGraphFilterMode UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphFilterModeInclude:
            return @"include";
        case MSGraphFilterModeExclude:
            return @"exclude";
        case MSGraphFilterModeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphFilterModeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphFilterMode)

- (MSGraphFilterMode*) toMSGraphFilterMode{

    if([self isEqualToString:@"include"])
    {
          return [MSGraphFilterMode include];
    }
    else if([self isEqualToString:@"exclude"])
    {
          return [MSGraphFilterMode exclude];
    }
    else {
        return [MSGraphFilterMode UnknownEnumValue];
    }
}

@end
