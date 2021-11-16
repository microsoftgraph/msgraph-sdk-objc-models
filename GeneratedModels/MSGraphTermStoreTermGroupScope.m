// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTermStoreTermGroupScope.h"

@interface MSGraphTermStoreTermGroupScope () {
    MSGraphTermStoreTermGroupScopeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTermStoreTermGroupScopeValue enumValue;
@end

@implementation MSGraphTermStoreTermGroupScope

+ (MSGraphTermStoreTermGroupScope*) global {
    static MSGraphTermStoreTermGroupScope *_global;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _global = [[MSGraphTermStoreTermGroupScope alloc] init];
        _global.enumValue = MSGraphTermStoreTermGroupScopeGlobal;
    });
    return _global;
}
+ (MSGraphTermStoreTermGroupScope*) system {
    static MSGraphTermStoreTermGroupScope *_system;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _system = [[MSGraphTermStoreTermGroupScope alloc] init];
        _system.enumValue = MSGraphTermStoreTermGroupScopeSystem;
    });
    return _system;
}
+ (MSGraphTermStoreTermGroupScope*) siteCollection {
    static MSGraphTermStoreTermGroupScope *_siteCollection;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _siteCollection = [[MSGraphTermStoreTermGroupScope alloc] init];
        _siteCollection.enumValue = MSGraphTermStoreTermGroupScopeSiteCollection;
    });
    return _siteCollection;
}
+ (MSGraphTermStoreTermGroupScope*) unknownFutureValue {
    static MSGraphTermStoreTermGroupScope *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphTermStoreTermGroupScope alloc] init];
        _unknownFutureValue.enumValue = MSGraphTermStoreTermGroupScopeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphTermStoreTermGroupScope*) UnknownEnumValue {
    static MSGraphTermStoreTermGroupScope *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTermStoreTermGroupScope alloc] init];
        _unknownValue.enumValue = MSGraphTermStoreTermGroupScopeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTermStoreTermGroupScope*) termGroupScopeWithEnumValue:(MSGraphTermStoreTermGroupScopeValue)val {

    switch(val)
    {
        case MSGraphTermStoreTermGroupScopeGlobal:
            return [MSGraphTermStoreTermGroupScope global];
        case MSGraphTermStoreTermGroupScopeSystem:
            return [MSGraphTermStoreTermGroupScope system];
        case MSGraphTermStoreTermGroupScopeSiteCollection:
            return [MSGraphTermStoreTermGroupScope siteCollection];
        case MSGraphTermStoreTermGroupScopeUnknownFutureValue:
            return [MSGraphTermStoreTermGroupScope unknownFutureValue];
        case MSGraphTermStoreTermGroupScopeEndOfEnum:
        default:
            return [MSGraphTermStoreTermGroupScope UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTermStoreTermGroupScopeGlobal:
            return @"global";
        case MSGraphTermStoreTermGroupScopeSystem:
            return @"system";
        case MSGraphTermStoreTermGroupScopeSiteCollection:
            return @"siteCollection";
        case MSGraphTermStoreTermGroupScopeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphTermStoreTermGroupScopeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTermStoreTermGroupScopeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTermStoreTermGroupScope)

- (MSGraphTermStoreTermGroupScope*) toMSGraphTermStoreTermGroupScope{

    if([self isEqualToString:@"global"])
    {
          return [MSGraphTermStoreTermGroupScope global];
    }
    else if([self isEqualToString:@"system"])
    {
          return [MSGraphTermStoreTermGroupScope system];
    }
    else if([self isEqualToString:@"siteCollection"])
    {
          return [MSGraphTermStoreTermGroupScope siteCollection];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphTermStoreTermGroupScope unknownFutureValue];
    }
    else {
        return [MSGraphTermStoreTermGroupScope UnknownEnumValue];
    }
}

@end
