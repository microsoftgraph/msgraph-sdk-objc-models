// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphPlannerContainerType.h"

@interface MSGraphPlannerContainerType () {
    MSGraphPlannerContainerTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphPlannerContainerTypeValue enumValue;
@end

@implementation MSGraphPlannerContainerType

+ (MSGraphPlannerContainerType*) group {
    static MSGraphPlannerContainerType *_group;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _group = [[MSGraphPlannerContainerType alloc] init];
        _group.enumValue = MSGraphPlannerContainerTypeGroup;
    });
    return _group;
}
+ (MSGraphPlannerContainerType*) unknownFutureValue {
    static MSGraphPlannerContainerType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphPlannerContainerType alloc] init];
        _unknownFutureValue.enumValue = MSGraphPlannerContainerTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}
+ (MSGraphPlannerContainerType*) roster {
    static MSGraphPlannerContainerType *_roster;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _roster = [[MSGraphPlannerContainerType alloc] init];
        _roster.enumValue = MSGraphPlannerContainerTypeRoster;
    });
    return _roster;
}

+ (MSGraphPlannerContainerType*) UnknownEnumValue {
    static MSGraphPlannerContainerType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphPlannerContainerType alloc] init];
        _unknownValue.enumValue = MSGraphPlannerContainerTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphPlannerContainerType*) plannerContainerTypeWithEnumValue:(MSGraphPlannerContainerTypeValue)val {

    switch(val)
    {
        case MSGraphPlannerContainerTypeGroup:
            return [MSGraphPlannerContainerType group];
        case MSGraphPlannerContainerTypeUnknownFutureValue:
            return [MSGraphPlannerContainerType unknownFutureValue];
        case MSGraphPlannerContainerTypeRoster:
            return [MSGraphPlannerContainerType roster];
        case MSGraphPlannerContainerTypeEndOfEnum:
        default:
            return [MSGraphPlannerContainerType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphPlannerContainerTypeGroup:
            return @"group";
        case MSGraphPlannerContainerTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphPlannerContainerTypeRoster:
            return @"roster";
        case MSGraphPlannerContainerTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphPlannerContainerTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphPlannerContainerType)

- (MSGraphPlannerContainerType*) toMSGraphPlannerContainerType{

    if([self isEqualToString:@"group"])
    {
          return [MSGraphPlannerContainerType group];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphPlannerContainerType unknownFutureValue];
    }
    else if([self isEqualToString:@"roster"])
    {
          return [MSGraphPlannerContainerType roster];
    }
    else {
        return [MSGraphPlannerContainerType UnknownEnumValue];
    }
}

@end
