// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphChatMessageImportance.h"

@interface MSGraphChatMessageImportance () {
    MSGraphChatMessageImportanceValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphChatMessageImportanceValue enumValue;
@end

@implementation MSGraphChatMessageImportance

+ (MSGraphChatMessageImportance*) normal {
    static MSGraphChatMessageImportance *_normal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _normal = [[MSGraphChatMessageImportance alloc] init];
        _normal.enumValue = MSGraphChatMessageImportanceNormal;
    });
    return _normal;
}
+ (MSGraphChatMessageImportance*) high {
    static MSGraphChatMessageImportance *_high;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _high = [[MSGraphChatMessageImportance alloc] init];
        _high.enumValue = MSGraphChatMessageImportanceHigh;
    });
    return _high;
}
+ (MSGraphChatMessageImportance*) urgent {
    static MSGraphChatMessageImportance *_urgent;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _urgent = [[MSGraphChatMessageImportance alloc] init];
        _urgent.enumValue = MSGraphChatMessageImportanceUrgent;
    });
    return _urgent;
}
+ (MSGraphChatMessageImportance*) unknownFutureValue {
    static MSGraphChatMessageImportance *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphChatMessageImportance alloc] init];
        _unknownFutureValue.enumValue = MSGraphChatMessageImportanceUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphChatMessageImportance*) UnknownEnumValue {
    static MSGraphChatMessageImportance *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphChatMessageImportance alloc] init];
        _unknownValue.enumValue = MSGraphChatMessageImportanceEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphChatMessageImportance*) chatMessageImportanceWithEnumValue:(MSGraphChatMessageImportanceValue)val {

    switch(val)
    {
        case MSGraphChatMessageImportanceNormal:
            return [MSGraphChatMessageImportance normal];
        case MSGraphChatMessageImportanceHigh:
            return [MSGraphChatMessageImportance high];
        case MSGraphChatMessageImportanceUrgent:
            return [MSGraphChatMessageImportance urgent];
        case MSGraphChatMessageImportanceUnknownFutureValue:
            return [MSGraphChatMessageImportance unknownFutureValue];
        case MSGraphChatMessageImportanceEndOfEnum:
        default:
            return [MSGraphChatMessageImportance UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphChatMessageImportanceNormal:
            return @"normal";
        case MSGraphChatMessageImportanceHigh:
            return @"high";
        case MSGraphChatMessageImportanceUrgent:
            return @"urgent";
        case MSGraphChatMessageImportanceUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphChatMessageImportanceEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphChatMessageImportanceValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphChatMessageImportance)

- (MSGraphChatMessageImportance*) toMSGraphChatMessageImportance{

    if([self isEqualToString:@"normal"])
    {
          return [MSGraphChatMessageImportance normal];
    }
    else if([self isEqualToString:@"high"])
    {
          return [MSGraphChatMessageImportance high];
    }
    else if([self isEqualToString:@"urgent"])
    {
          return [MSGraphChatMessageImportance urgent];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphChatMessageImportance unknownFutureValue];
    }
    else {
        return [MSGraphChatMessageImportance UnknownEnumValue];
    }
}

@end
