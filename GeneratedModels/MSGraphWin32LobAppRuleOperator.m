// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWin32LobAppRuleOperator.h"

@interface MSGraphWin32LobAppRuleOperator () {
    MSGraphWin32LobAppRuleOperatorValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWin32LobAppRuleOperatorValue enumValue;
@end

@implementation MSGraphWin32LobAppRuleOperator

+ (MSGraphWin32LobAppRuleOperator*) notConfigured {
    static MSGraphWin32LobAppRuleOperator *_notConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notConfigured = [[MSGraphWin32LobAppRuleOperator alloc] init];
        _notConfigured.enumValue = MSGraphWin32LobAppRuleOperatorNotConfigured;
    });
    return _notConfigured;
}
+ (MSGraphWin32LobAppRuleOperator*) equal {
    static MSGraphWin32LobAppRuleOperator *_equal;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _equal = [[MSGraphWin32LobAppRuleOperator alloc] init];
        _equal.enumValue = MSGraphWin32LobAppRuleOperatorEqual;
    });
    return _equal;
}
+ (MSGraphWin32LobAppRuleOperator*) notEqual {
    static MSGraphWin32LobAppRuleOperator *_notEqual;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notEqual = [[MSGraphWin32LobAppRuleOperator alloc] init];
        _notEqual.enumValue = MSGraphWin32LobAppRuleOperatorNotEqual;
    });
    return _notEqual;
}
+ (MSGraphWin32LobAppRuleOperator*) greaterThan {
    static MSGraphWin32LobAppRuleOperator *_greaterThan;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _greaterThan = [[MSGraphWin32LobAppRuleOperator alloc] init];
        _greaterThan.enumValue = MSGraphWin32LobAppRuleOperatorGreaterThan;
    });
    return _greaterThan;
}
+ (MSGraphWin32LobAppRuleOperator*) greaterThanOrEqual {
    static MSGraphWin32LobAppRuleOperator *_greaterThanOrEqual;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _greaterThanOrEqual = [[MSGraphWin32LobAppRuleOperator alloc] init];
        _greaterThanOrEqual.enumValue = MSGraphWin32LobAppRuleOperatorGreaterThanOrEqual;
    });
    return _greaterThanOrEqual;
}
+ (MSGraphWin32LobAppRuleOperator*) lessThan {
    static MSGraphWin32LobAppRuleOperator *_lessThan;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lessThan = [[MSGraphWin32LobAppRuleOperator alloc] init];
        _lessThan.enumValue = MSGraphWin32LobAppRuleOperatorLessThan;
    });
    return _lessThan;
}
+ (MSGraphWin32LobAppRuleOperator*) lessThanOrEqual {
    static MSGraphWin32LobAppRuleOperator *_lessThanOrEqual;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lessThanOrEqual = [[MSGraphWin32LobAppRuleOperator alloc] init];
        _lessThanOrEqual.enumValue = MSGraphWin32LobAppRuleOperatorLessThanOrEqual;
    });
    return _lessThanOrEqual;
}

+ (MSGraphWin32LobAppRuleOperator*) UnknownEnumValue {
    static MSGraphWin32LobAppRuleOperator *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWin32LobAppRuleOperator alloc] init];
        _unknownValue.enumValue = MSGraphWin32LobAppRuleOperatorEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWin32LobAppRuleOperator*) win32LobAppRuleOperatorWithEnumValue:(MSGraphWin32LobAppRuleOperatorValue)val {

    switch(val)
    {
        case MSGraphWin32LobAppRuleOperatorNotConfigured:
            return [MSGraphWin32LobAppRuleOperator notConfigured];
        case MSGraphWin32LobAppRuleOperatorEqual:
            return [MSGraphWin32LobAppRuleOperator equal];
        case MSGraphWin32LobAppRuleOperatorNotEqual:
            return [MSGraphWin32LobAppRuleOperator notEqual];
        case MSGraphWin32LobAppRuleOperatorGreaterThan:
            return [MSGraphWin32LobAppRuleOperator greaterThan];
        case MSGraphWin32LobAppRuleOperatorGreaterThanOrEqual:
            return [MSGraphWin32LobAppRuleOperator greaterThanOrEqual];
        case MSGraphWin32LobAppRuleOperatorLessThan:
            return [MSGraphWin32LobAppRuleOperator lessThan];
        case MSGraphWin32LobAppRuleOperatorLessThanOrEqual:
            return [MSGraphWin32LobAppRuleOperator lessThanOrEqual];
        case MSGraphWin32LobAppRuleOperatorEndOfEnum:
        default:
            return [MSGraphWin32LobAppRuleOperator UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWin32LobAppRuleOperatorNotConfigured:
            return @"notConfigured";
        case MSGraphWin32LobAppRuleOperatorEqual:
            return @"equal";
        case MSGraphWin32LobAppRuleOperatorNotEqual:
            return @"notEqual";
        case MSGraphWin32LobAppRuleOperatorGreaterThan:
            return @"greaterThan";
        case MSGraphWin32LobAppRuleOperatorGreaterThanOrEqual:
            return @"greaterThanOrEqual";
        case MSGraphWin32LobAppRuleOperatorLessThan:
            return @"lessThan";
        case MSGraphWin32LobAppRuleOperatorLessThanOrEqual:
            return @"lessThanOrEqual";
        case MSGraphWin32LobAppRuleOperatorEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWin32LobAppRuleOperatorValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWin32LobAppRuleOperator)

- (MSGraphWin32LobAppRuleOperator*) toMSGraphWin32LobAppRuleOperator{

    if([self isEqualToString:@"notConfigured"])
    {
          return [MSGraphWin32LobAppRuleOperator notConfigured];
    }
    else if([self isEqualToString:@"equal"])
    {
          return [MSGraphWin32LobAppRuleOperator equal];
    }
    else if([self isEqualToString:@"notEqual"])
    {
          return [MSGraphWin32LobAppRuleOperator notEqual];
    }
    else if([self isEqualToString:@"greaterThan"])
    {
          return [MSGraphWin32LobAppRuleOperator greaterThan];
    }
    else if([self isEqualToString:@"greaterThanOrEqual"])
    {
          return [MSGraphWin32LobAppRuleOperator greaterThanOrEqual];
    }
    else if([self isEqualToString:@"lessThan"])
    {
          return [MSGraphWin32LobAppRuleOperator lessThan];
    }
    else if([self isEqualToString:@"lessThanOrEqual"])
    {
          return [MSGraphWin32LobAppRuleOperator lessThanOrEqual];
    }
    else {
        return [MSGraphWin32LobAppRuleOperator UnknownEnumValue];
    }
}

@end
