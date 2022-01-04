// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphBucketAggregationSortProperty.h"

@interface MSGraphBucketAggregationSortProperty () {
    MSGraphBucketAggregationSortPropertyValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphBucketAggregationSortPropertyValue enumValue;
@end

@implementation MSGraphBucketAggregationSortProperty

+ (MSGraphBucketAggregationSortProperty*) count {
    static MSGraphBucketAggregationSortProperty *_count;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _count = [[MSGraphBucketAggregationSortProperty alloc] init];
        _count.enumValue = MSGraphBucketAggregationSortPropertyCount;
    });
    return _count;
}
+ (MSGraphBucketAggregationSortProperty*) keyAsString {
    static MSGraphBucketAggregationSortProperty *_keyAsString;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _keyAsString = [[MSGraphBucketAggregationSortProperty alloc] init];
        _keyAsString.enumValue = MSGraphBucketAggregationSortPropertyKeyAsString;
    });
    return _keyAsString;
}
+ (MSGraphBucketAggregationSortProperty*) keyAsNumber {
    static MSGraphBucketAggregationSortProperty *_keyAsNumber;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _keyAsNumber = [[MSGraphBucketAggregationSortProperty alloc] init];
        _keyAsNumber.enumValue = MSGraphBucketAggregationSortPropertyKeyAsNumber;
    });
    return _keyAsNumber;
}
+ (MSGraphBucketAggregationSortProperty*) unknownFutureValue {
    static MSGraphBucketAggregationSortProperty *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphBucketAggregationSortProperty alloc] init];
        _unknownFutureValue.enumValue = MSGraphBucketAggregationSortPropertyUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphBucketAggregationSortProperty*) UnknownEnumValue {
    static MSGraphBucketAggregationSortProperty *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphBucketAggregationSortProperty alloc] init];
        _unknownValue.enumValue = MSGraphBucketAggregationSortPropertyEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphBucketAggregationSortProperty*) bucketAggregationSortPropertyWithEnumValue:(MSGraphBucketAggregationSortPropertyValue)val {

    switch(val)
    {
        case MSGraphBucketAggregationSortPropertyCount:
            return [MSGraphBucketAggregationSortProperty count];
        case MSGraphBucketAggregationSortPropertyKeyAsString:
            return [MSGraphBucketAggregationSortProperty keyAsString];
        case MSGraphBucketAggregationSortPropertyKeyAsNumber:
            return [MSGraphBucketAggregationSortProperty keyAsNumber];
        case MSGraphBucketAggregationSortPropertyUnknownFutureValue:
            return [MSGraphBucketAggregationSortProperty unknownFutureValue];
        case MSGraphBucketAggregationSortPropertyEndOfEnum:
        default:
            return [MSGraphBucketAggregationSortProperty UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphBucketAggregationSortPropertyCount:
            return @"count";
        case MSGraphBucketAggregationSortPropertyKeyAsString:
            return @"keyAsString";
        case MSGraphBucketAggregationSortPropertyKeyAsNumber:
            return @"keyAsNumber";
        case MSGraphBucketAggregationSortPropertyUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphBucketAggregationSortPropertyEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphBucketAggregationSortPropertyValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphBucketAggregationSortProperty)

- (MSGraphBucketAggregationSortProperty*) toMSGraphBucketAggregationSortProperty{

    if([self isEqualToString:@"count"])
    {
          return [MSGraphBucketAggregationSortProperty count];
    }
    else if([self isEqualToString:@"keyAsString"])
    {
          return [MSGraphBucketAggregationSortProperty keyAsString];
    }
    else if([self isEqualToString:@"keyAsNumber"])
    {
          return [MSGraphBucketAggregationSortProperty keyAsNumber];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphBucketAggregationSortProperty unknownFutureValue];
    }
    else {
        return [MSGraphBucketAggregationSortProperty UnknownEnumValue];
    }
}

@end
