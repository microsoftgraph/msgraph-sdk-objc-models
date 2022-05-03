// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphAccessReviewExpirationBehavior.h"

@interface MSGraphAccessReviewExpirationBehavior () {
    MSGraphAccessReviewExpirationBehaviorValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphAccessReviewExpirationBehaviorValue enumValue;
@end

@implementation MSGraphAccessReviewExpirationBehavior

+ (MSGraphAccessReviewExpirationBehavior*) keepAccess {
    static MSGraphAccessReviewExpirationBehavior *_keepAccess;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _keepAccess = [[MSGraphAccessReviewExpirationBehavior alloc] init];
        _keepAccess.enumValue = MSGraphAccessReviewExpirationBehaviorKeepAccess;
    });
    return _keepAccess;
}
+ (MSGraphAccessReviewExpirationBehavior*) removeAccess {
    static MSGraphAccessReviewExpirationBehavior *_removeAccess;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _removeAccess = [[MSGraphAccessReviewExpirationBehavior alloc] init];
        _removeAccess.enumValue = MSGraphAccessReviewExpirationBehaviorRemoveAccess;
    });
    return _removeAccess;
}
+ (MSGraphAccessReviewExpirationBehavior*) acceptAccessRecommendation {
    static MSGraphAccessReviewExpirationBehavior *_acceptAccessRecommendation;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _acceptAccessRecommendation = [[MSGraphAccessReviewExpirationBehavior alloc] init];
        _acceptAccessRecommendation.enumValue = MSGraphAccessReviewExpirationBehaviorAcceptAccessRecommendation;
    });
    return _acceptAccessRecommendation;
}
+ (MSGraphAccessReviewExpirationBehavior*) unknownFutureValue {
    static MSGraphAccessReviewExpirationBehavior *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphAccessReviewExpirationBehavior alloc] init];
        _unknownFutureValue.enumValue = MSGraphAccessReviewExpirationBehaviorUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphAccessReviewExpirationBehavior*) UnknownEnumValue {
    static MSGraphAccessReviewExpirationBehavior *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphAccessReviewExpirationBehavior alloc] init];
        _unknownValue.enumValue = MSGraphAccessReviewExpirationBehaviorEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphAccessReviewExpirationBehavior*) accessReviewExpirationBehaviorWithEnumValue:(MSGraphAccessReviewExpirationBehaviorValue)val {

    switch(val)
    {
        case MSGraphAccessReviewExpirationBehaviorKeepAccess:
            return [MSGraphAccessReviewExpirationBehavior keepAccess];
        case MSGraphAccessReviewExpirationBehaviorRemoveAccess:
            return [MSGraphAccessReviewExpirationBehavior removeAccess];
        case MSGraphAccessReviewExpirationBehaviorAcceptAccessRecommendation:
            return [MSGraphAccessReviewExpirationBehavior acceptAccessRecommendation];
        case MSGraphAccessReviewExpirationBehaviorUnknownFutureValue:
            return [MSGraphAccessReviewExpirationBehavior unknownFutureValue];
        case MSGraphAccessReviewExpirationBehaviorEndOfEnum:
        default:
            return [MSGraphAccessReviewExpirationBehavior UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphAccessReviewExpirationBehaviorKeepAccess:
            return @"keepAccess";
        case MSGraphAccessReviewExpirationBehaviorRemoveAccess:
            return @"removeAccess";
        case MSGraphAccessReviewExpirationBehaviorAcceptAccessRecommendation:
            return @"acceptAccessRecommendation";
        case MSGraphAccessReviewExpirationBehaviorUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphAccessReviewExpirationBehaviorEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphAccessReviewExpirationBehaviorValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphAccessReviewExpirationBehavior)

- (MSGraphAccessReviewExpirationBehavior*) toMSGraphAccessReviewExpirationBehavior{

    if([self isEqualToString:@"keepAccess"])
    {
          return [MSGraphAccessReviewExpirationBehavior keepAccess];
    }
    else if([self isEqualToString:@"removeAccess"])
    {
          return [MSGraphAccessReviewExpirationBehavior removeAccess];
    }
    else if([self isEqualToString:@"acceptAccessRecommendation"])
    {
          return [MSGraphAccessReviewExpirationBehavior acceptAccessRecommendation];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphAccessReviewExpirationBehavior unknownFutureValue];
    }
    else {
        return [MSGraphAccessReviewExpirationBehavior UnknownEnumValue];
    }
}

@end
