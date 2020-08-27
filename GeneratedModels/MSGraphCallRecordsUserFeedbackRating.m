// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallRecordsUserFeedbackRating.h"

@interface MSGraphCallRecordsUserFeedbackRating () {
    MSGraphCallRecordsUserFeedbackRatingValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphCallRecordsUserFeedbackRatingValue enumValue;
@end

@implementation MSGraphCallRecordsUserFeedbackRating

+ (MSGraphCallRecordsUserFeedbackRating*) notRated {
    static MSGraphCallRecordsUserFeedbackRating *_notRated;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _notRated = [[MSGraphCallRecordsUserFeedbackRating alloc] init];
        _notRated.enumValue = MSGraphCallRecordsUserFeedbackRatingNotRated;
    });
    return _notRated;
}
+ (MSGraphCallRecordsUserFeedbackRating*) bad {
    static MSGraphCallRecordsUserFeedbackRating *_bad;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _bad = [[MSGraphCallRecordsUserFeedbackRating alloc] init];
        _bad.enumValue = MSGraphCallRecordsUserFeedbackRatingBad;
    });
    return _bad;
}
+ (MSGraphCallRecordsUserFeedbackRating*) poor {
    static MSGraphCallRecordsUserFeedbackRating *_poor;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _poor = [[MSGraphCallRecordsUserFeedbackRating alloc] init];
        _poor.enumValue = MSGraphCallRecordsUserFeedbackRatingPoor;
    });
    return _poor;
}
+ (MSGraphCallRecordsUserFeedbackRating*) fair {
    static MSGraphCallRecordsUserFeedbackRating *_fair;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fair = [[MSGraphCallRecordsUserFeedbackRating alloc] init];
        _fair.enumValue = MSGraphCallRecordsUserFeedbackRatingFair;
    });
    return _fair;
}
+ (MSGraphCallRecordsUserFeedbackRating*) good {
    static MSGraphCallRecordsUserFeedbackRating *_good;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _good = [[MSGraphCallRecordsUserFeedbackRating alloc] init];
        _good.enumValue = MSGraphCallRecordsUserFeedbackRatingGood;
    });
    return _good;
}
+ (MSGraphCallRecordsUserFeedbackRating*) excellent {
    static MSGraphCallRecordsUserFeedbackRating *_excellent;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _excellent = [[MSGraphCallRecordsUserFeedbackRating alloc] init];
        _excellent.enumValue = MSGraphCallRecordsUserFeedbackRatingExcellent;
    });
    return _excellent;
}
+ (MSGraphCallRecordsUserFeedbackRating*) unknownFutureValue {
    static MSGraphCallRecordsUserFeedbackRating *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphCallRecordsUserFeedbackRating alloc] init];
        _unknownFutureValue.enumValue = MSGraphCallRecordsUserFeedbackRatingUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphCallRecordsUserFeedbackRating*) UnknownEnumValue {
    static MSGraphCallRecordsUserFeedbackRating *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphCallRecordsUserFeedbackRating alloc] init];
        _unknownValue.enumValue = MSGraphCallRecordsUserFeedbackRatingEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphCallRecordsUserFeedbackRating*) userFeedbackRatingWithEnumValue:(MSGraphCallRecordsUserFeedbackRatingValue)val {

    switch(val)
    {
        case MSGraphCallRecordsUserFeedbackRatingNotRated:
            return [MSGraphCallRecordsUserFeedbackRating notRated];
        case MSGraphCallRecordsUserFeedbackRatingBad:
            return [MSGraphCallRecordsUserFeedbackRating bad];
        case MSGraphCallRecordsUserFeedbackRatingPoor:
            return [MSGraphCallRecordsUserFeedbackRating poor];
        case MSGraphCallRecordsUserFeedbackRatingFair:
            return [MSGraphCallRecordsUserFeedbackRating fair];
        case MSGraphCallRecordsUserFeedbackRatingGood:
            return [MSGraphCallRecordsUserFeedbackRating good];
        case MSGraphCallRecordsUserFeedbackRatingExcellent:
            return [MSGraphCallRecordsUserFeedbackRating excellent];
        case MSGraphCallRecordsUserFeedbackRatingUnknownFutureValue:
            return [MSGraphCallRecordsUserFeedbackRating unknownFutureValue];
        case MSGraphCallRecordsUserFeedbackRatingEndOfEnum:
        default:
            return [MSGraphCallRecordsUserFeedbackRating UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphCallRecordsUserFeedbackRatingNotRated:
            return @"notRated";
        case MSGraphCallRecordsUserFeedbackRatingBad:
            return @"bad";
        case MSGraphCallRecordsUserFeedbackRatingPoor:
            return @"poor";
        case MSGraphCallRecordsUserFeedbackRatingFair:
            return @"fair";
        case MSGraphCallRecordsUserFeedbackRatingGood:
            return @"good";
        case MSGraphCallRecordsUserFeedbackRatingExcellent:
            return @"excellent";
        case MSGraphCallRecordsUserFeedbackRatingUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphCallRecordsUserFeedbackRatingEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphCallRecordsUserFeedbackRatingValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphCallRecordsUserFeedbackRating)

- (MSGraphCallRecordsUserFeedbackRating*) toMSGraphCallRecordsUserFeedbackRating{

    if([self isEqualToString:@"notRated"])
    {
          return [MSGraphCallRecordsUserFeedbackRating notRated];
    }
    else if([self isEqualToString:@"bad"])
    {
          return [MSGraphCallRecordsUserFeedbackRating bad];
    }
    else if([self isEqualToString:@"poor"])
    {
          return [MSGraphCallRecordsUserFeedbackRating poor];
    }
    else if([self isEqualToString:@"fair"])
    {
          return [MSGraphCallRecordsUserFeedbackRating fair];
    }
    else if([self isEqualToString:@"good"])
    {
          return [MSGraphCallRecordsUserFeedbackRating good];
    }
    else if([self isEqualToString:@"excellent"])
    {
          return [MSGraphCallRecordsUserFeedbackRating excellent];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphCallRecordsUserFeedbackRating unknownFutureValue];
    }
    else {
        return [MSGraphCallRecordsUserFeedbackRating UnknownEnumValue];
    }
}

@end
