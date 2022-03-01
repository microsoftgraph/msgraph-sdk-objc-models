// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessPackageCatalogState.h"

@interface MSGraphAccessPackageCatalogState () {
    MSGraphAccessPackageCatalogStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessPackageCatalogStateValue enumValue;
@end

@implementation MSGraphAccessPackageCatalogState

+ (MSGraphAccessPackageCatalogState*) unpublished {
    static MSGraphAccessPackageCatalogState *_unpublished;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unpublished = [[MSGraphAccessPackageCatalogState alloc] init];
        _unpublished.enumValue = MSGraphAccessPackageCatalogStateUnpublished;
    });
    return _unpublished;
}
+ (MSGraphAccessPackageCatalogState*) published {
    static MSGraphAccessPackageCatalogState *_published;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _published = [[MSGraphAccessPackageCatalogState alloc] init];
        _published.enumValue = MSGraphAccessPackageCatalogStatePublished;
    });
    return _published;
}
+ (MSGraphAccessPackageCatalogState*) unknownFutureValue {
    static MSGraphAccessPackageCatalogState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessPackageCatalogState alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessPackageCatalogStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessPackageCatalogState*) UnknownEnumValue {
    static MSGraphAccessPackageCatalogState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessPackageCatalogState alloc] init];
        _unknownValue.enumValue = MSGraphAccessPackageCatalogStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessPackageCatalogState*) accessPackageCatalogStateWithEnumValue:(MSGraphAccessPackageCatalogStateValue)val {

    switch(val)
    {
        case MSGraphAccessPackageCatalogStateUnpublished:
            return [MSGraphAccessPackageCatalogState unpublished];
        case MSGraphAccessPackageCatalogStatePublished:
            return [MSGraphAccessPackageCatalogState published];
        case MSGraphAccessPackageCatalogStateUnknownFutureValue:
            return [MSGraphAccessPackageCatalogState unknownFutureValue];
        case MSGraphAccessPackageCatalogStateEndOfEnum:
        default:
            return [MSGraphAccessPackageCatalogState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessPackageCatalogStateUnpublished:
            return @"unpublished";
        case MSGraphAccessPackageCatalogStatePublished:
            return @"published";
        case MSGraphAccessPackageCatalogStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessPackageCatalogStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessPackageCatalogStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessPackageCatalogState)

- (MSGraphAccessPackageCatalogState*) toMSGraphAccessPackageCatalogState{

    if([self isEqualToString:@"unpublished"])
    {
          return [MSGraphAccessPackageCatalogState unpublished];
    }
    else if([self isEqualToString:@"published"])
    {
          return [MSGraphAccessPackageCatalogState published];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessPackageCatalogState unknownFutureValue];
    }
    else {
        return [MSGraphAccessPackageCatalogState UnknownEnumValue];
    }
}

@end
