// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphSearchAlterationType.h"

@interface MSGraphSearchAlterationType () {
    MSGraphSearchAlterationTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphSearchAlterationTypeValue enumValue;
@end

@implementation MSGraphSearchAlterationType

+ (MSGraphSearchAlterationType*) suggestion {
    static MSGraphSearchAlterationType *_suggestion;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _suggestion = [[MSGraphSearchAlterationType alloc] init];
        _suggestion.enumValue = MSGraphSearchAlterationTypeSuggestion;
    });
    return _suggestion;
}
+ (MSGraphSearchAlterationType*) modification {
    static MSGraphSearchAlterationType *_modification;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _modification = [[MSGraphSearchAlterationType alloc] init];
        _modification.enumValue = MSGraphSearchAlterationTypeModification;
    });
    return _modification;
}
+ (MSGraphSearchAlterationType*) unknownFutureValue {
    static MSGraphSearchAlterationType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphSearchAlterationType alloc] init];
        _unknownFutureValue.enumValue = MSGraphSearchAlterationTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphSearchAlterationType*) UnknownEnumValue {
    static MSGraphSearchAlterationType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphSearchAlterationType alloc] init];
        _unknownValue.enumValue = MSGraphSearchAlterationTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphSearchAlterationType*) searchAlterationTypeWithEnumValue:(MSGraphSearchAlterationTypeValue)val {

    switch(val)
    {
        case MSGraphSearchAlterationTypeSuggestion:
            return [MSGraphSearchAlterationType suggestion];
        case MSGraphSearchAlterationTypeModification:
            return [MSGraphSearchAlterationType modification];
        case MSGraphSearchAlterationTypeUnknownFutureValue:
            return [MSGraphSearchAlterationType unknownFutureValue];
        case MSGraphSearchAlterationTypeEndOfEnum:
        default:
            return [MSGraphSearchAlterationType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphSearchAlterationTypeSuggestion:
            return @"suggestion";
        case MSGraphSearchAlterationTypeModification:
            return @"modification";
        case MSGraphSearchAlterationTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphSearchAlterationTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphSearchAlterationTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphSearchAlterationType)

- (MSGraphSearchAlterationType*) toMSGraphSearchAlterationType{

    if([self isEqualToString:@"suggestion"])
    {
          return [MSGraphSearchAlterationType suggestion];
    }
    else if([self isEqualToString:@"modification"])
    {
          return [MSGraphSearchAlterationType modification];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphSearchAlterationType unknownFutureValue];
    }
    else {
        return [MSGraphSearchAlterationType UnknownEnumValue];
    }
}

@end
