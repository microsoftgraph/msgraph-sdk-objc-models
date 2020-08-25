// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphManagedBrowserType.h"

@interface MSGraphManagedBrowserType () {
    MSGraphManagedBrowserTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphManagedBrowserTypeValue enumValue;
@end

@implementation MSGraphManagedBrowserType

+ (MSGraphManagedBrowserType*) notConfigured {
    static MSGraphManagedBrowserType *_notConfigured;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notConfigured = [[MSGraphManagedBrowserType alloc] init];
        _notConfigured.enumValue = MSGraphManagedBrowserTypeNotConfigured;
    });
    return _notConfigured;
}
+ (MSGraphManagedBrowserType*) microsoftEdge {
    static MSGraphManagedBrowserType *_microsoftEdge;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _microsoftEdge = [[MSGraphManagedBrowserType alloc] init];
        _microsoftEdge.enumValue = MSGraphManagedBrowserTypeMicrosoftEdge;
    });
    return _microsoftEdge;
}

+ (MSGraphManagedBrowserType*) UnknownEnumValue {
    static MSGraphManagedBrowserType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphManagedBrowserType alloc] init];
        _unknownValue.enumValue = MSGraphManagedBrowserTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphManagedBrowserType*) managedBrowserTypeWithEnumValue:(MSGraphManagedBrowserTypeValue)val {

    switch(val)
    {
        case MSGraphManagedBrowserTypeNotConfigured:
            return [MSGraphManagedBrowserType notConfigured];
        case MSGraphManagedBrowserTypeMicrosoftEdge:
            return [MSGraphManagedBrowserType microsoftEdge];
        case MSGraphManagedBrowserTypeEndOfEnum:
        default:
            return [MSGraphManagedBrowserType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphManagedBrowserTypeNotConfigured:
            return @"notConfigured";
        case MSGraphManagedBrowserTypeMicrosoftEdge:
            return @"microsoftEdge";
        case MSGraphManagedBrowserTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphManagedBrowserTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphManagedBrowserType)

- (MSGraphManagedBrowserType*) toMSGraphManagedBrowserType{

    if([self isEqualToString:@"notConfigured"])
    {
          return [MSGraphManagedBrowserType notConfigured];
    }
    else if([self isEqualToString:@"microsoftEdge"])
    {
          return [MSGraphManagedBrowserType microsoftEdge];
    }
    else {
        return [MSGraphManagedBrowserType UnknownEnumValue];
    }
}

@end
