// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphWellknownListName.h"

@interface MSGraphWellknownListName () {
    MSGraphWellknownListNameValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphWellknownListNameValue enumValue;
@end

@implementation MSGraphWellknownListName

+ (MSGraphWellknownListName*) none {
    static MSGraphWellknownListName *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphWellknownListName alloc] init];
        _none.enumValue = MSGraphWellknownListNameNone;
    });
    return _none;
}
+ (MSGraphWellknownListName*) defaultList {
    static MSGraphWellknownListName *_defaultList;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _defaultList = [[MSGraphWellknownListName alloc] init];
        _defaultList.enumValue = MSGraphWellknownListNameDefaultList;
    });
    return _defaultList;
}
+ (MSGraphWellknownListName*) flaggedEmails {
    static MSGraphWellknownListName *_flaggedEmails;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _flaggedEmails = [[MSGraphWellknownListName alloc] init];
        _flaggedEmails.enumValue = MSGraphWellknownListNameFlaggedEmails;
    });
    return _flaggedEmails;
}
+ (MSGraphWellknownListName*) unknownFutureValue {
    static MSGraphWellknownListName *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphWellknownListName alloc] init];
        _unknownFutureValue.enumValue = MSGraphWellknownListNameUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphWellknownListName*) UnknownEnumValue {
    static MSGraphWellknownListName *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphWellknownListName alloc] init];
        _unknownValue.enumValue = MSGraphWellknownListNameEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphWellknownListName*) wellknownListNameWithEnumValue:(MSGraphWellknownListNameValue)val {

    switch(val)
    {
        case MSGraphWellknownListNameNone:
            return [MSGraphWellknownListName none];
        case MSGraphWellknownListNameDefaultList:
            return [MSGraphWellknownListName defaultList];
        case MSGraphWellknownListNameFlaggedEmails:
            return [MSGraphWellknownListName flaggedEmails];
        case MSGraphWellknownListNameUnknownFutureValue:
            return [MSGraphWellknownListName unknownFutureValue];
        case MSGraphWellknownListNameEndOfEnum:
        default:
            return [MSGraphWellknownListName UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphWellknownListNameNone:
            return @"none";
        case MSGraphWellknownListNameDefaultList:
            return @"defaultList";
        case MSGraphWellknownListNameFlaggedEmails:
            return @"flaggedEmails";
        case MSGraphWellknownListNameUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphWellknownListNameEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphWellknownListNameValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphWellknownListName)

- (MSGraphWellknownListName*) toMSGraphWellknownListName{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphWellknownListName none];
    }
    else if([self isEqualToString:@"defaultList"])
    {
          return [MSGraphWellknownListName defaultList];
    }
    else if([self isEqualToString:@"flaggedEmails"])
    {
          return [MSGraphWellknownListName flaggedEmails];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphWellknownListName unknownFutureValue];
    }
    else {
        return [MSGraphWellknownListName UnknownEnumValue];
    }
}

@end
