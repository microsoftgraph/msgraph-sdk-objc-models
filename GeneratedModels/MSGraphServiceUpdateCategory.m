// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphServiceUpdateCategory.h"

@interface MSGraphServiceUpdateCategory () {
    MSGraphServiceUpdateCategoryValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphServiceUpdateCategoryValue enumValue;
@end

@implementation MSGraphServiceUpdateCategory

+ (MSGraphServiceUpdateCategory*) preventOrFixIssue {
    static MSGraphServiceUpdateCategory *_preventOrFixIssue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _preventOrFixIssue = [[MSGraphServiceUpdateCategory alloc] init];
        _preventOrFixIssue.enumValue = MSGraphServiceUpdateCategoryPreventOrFixIssue;
    });
    return _preventOrFixIssue;
}
+ (MSGraphServiceUpdateCategory*) planForChange {
    static MSGraphServiceUpdateCategory *_planForChange;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _planForChange = [[MSGraphServiceUpdateCategory alloc] init];
        _planForChange.enumValue = MSGraphServiceUpdateCategoryPlanForChange;
    });
    return _planForChange;
}
+ (MSGraphServiceUpdateCategory*) stayInformed {
    static MSGraphServiceUpdateCategory *_stayInformed;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _stayInformed = [[MSGraphServiceUpdateCategory alloc] init];
        _stayInformed.enumValue = MSGraphServiceUpdateCategoryStayInformed;
    });
    return _stayInformed;
}
+ (MSGraphServiceUpdateCategory*) unknownFutureValue {
    static MSGraphServiceUpdateCategory *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphServiceUpdateCategory alloc] init];
        _unknownFutureValue.enumValue = MSGraphServiceUpdateCategoryUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphServiceUpdateCategory*) UnknownEnumValue {
    static MSGraphServiceUpdateCategory *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphServiceUpdateCategory alloc] init];
        _unknownValue.enumValue = MSGraphServiceUpdateCategoryEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphServiceUpdateCategory*) serviceUpdateCategoryWithEnumValue:(MSGraphServiceUpdateCategoryValue)val {

    switch(val)
    {
        case MSGraphServiceUpdateCategoryPreventOrFixIssue:
            return [MSGraphServiceUpdateCategory preventOrFixIssue];
        case MSGraphServiceUpdateCategoryPlanForChange:
            return [MSGraphServiceUpdateCategory planForChange];
        case MSGraphServiceUpdateCategoryStayInformed:
            return [MSGraphServiceUpdateCategory stayInformed];
        case MSGraphServiceUpdateCategoryUnknownFutureValue:
            return [MSGraphServiceUpdateCategory unknownFutureValue];
        case MSGraphServiceUpdateCategoryEndOfEnum:
        default:
            return [MSGraphServiceUpdateCategory UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphServiceUpdateCategoryPreventOrFixIssue:
            return @"preventOrFixIssue";
        case MSGraphServiceUpdateCategoryPlanForChange:
            return @"planForChange";
        case MSGraphServiceUpdateCategoryStayInformed:
            return @"stayInformed";
        case MSGraphServiceUpdateCategoryUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphServiceUpdateCategoryEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphServiceUpdateCategoryValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphServiceUpdateCategory)

- (MSGraphServiceUpdateCategory*) toMSGraphServiceUpdateCategory{

    if([self isEqualToString:@"preventOrFixIssue"])
    {
          return [MSGraphServiceUpdateCategory preventOrFixIssue];
    }
    else if([self isEqualToString:@"planForChange"])
    {
          return [MSGraphServiceUpdateCategory planForChange];
    }
    else if([self isEqualToString:@"stayInformed"])
    {
          return [MSGraphServiceUpdateCategory stayInformed];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphServiceUpdateCategory unknownFutureValue];
    }
    else {
        return [MSGraphServiceUpdateCategory UnknownEnumValue];
    }
}

@end
