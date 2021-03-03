// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamsAppPublishingState.h"

@interface MSGraphTeamsAppPublishingState () {
    MSGraphTeamsAppPublishingStateValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTeamsAppPublishingStateValue enumValue;
@end

@implementation MSGraphTeamsAppPublishingState

+ (MSGraphTeamsAppPublishingState*) submitted {
    static MSGraphTeamsAppPublishingState *_submitted;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _submitted = [[MSGraphTeamsAppPublishingState alloc] init];
        _submitted.enumValue = MSGraphTeamsAppPublishingStateSubmitted;
    });
    return _submitted;
}
+ (MSGraphTeamsAppPublishingState*) rejected {
    static MSGraphTeamsAppPublishingState *_rejected;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _rejected = [[MSGraphTeamsAppPublishingState alloc] init];
        _rejected.enumValue = MSGraphTeamsAppPublishingStateRejected;
    });
    return _rejected;
}
+ (MSGraphTeamsAppPublishingState*) published {
    static MSGraphTeamsAppPublishingState *_published;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _published = [[MSGraphTeamsAppPublishingState alloc] init];
        _published.enumValue = MSGraphTeamsAppPublishingStatePublished;
    });
    return _published;
}
+ (MSGraphTeamsAppPublishingState*) unknownFutureValue {
    static MSGraphTeamsAppPublishingState *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphTeamsAppPublishingState alloc] init];
        _unknownFutureValue.enumValue = MSGraphTeamsAppPublishingStateUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphTeamsAppPublishingState*) UnknownEnumValue {
    static MSGraphTeamsAppPublishingState *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTeamsAppPublishingState alloc] init];
        _unknownValue.enumValue = MSGraphTeamsAppPublishingStateEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTeamsAppPublishingState*) teamsAppPublishingStateWithEnumValue:(MSGraphTeamsAppPublishingStateValue)val {

    switch(val)
    {
        case MSGraphTeamsAppPublishingStateSubmitted:
            return [MSGraphTeamsAppPublishingState submitted];
        case MSGraphTeamsAppPublishingStateRejected:
            return [MSGraphTeamsAppPublishingState rejected];
        case MSGraphTeamsAppPublishingStatePublished:
            return [MSGraphTeamsAppPublishingState published];
        case MSGraphTeamsAppPublishingStateUnknownFutureValue:
            return [MSGraphTeamsAppPublishingState unknownFutureValue];
        case MSGraphTeamsAppPublishingStateEndOfEnum:
        default:
            return [MSGraphTeamsAppPublishingState UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTeamsAppPublishingStateSubmitted:
            return @"submitted";
        case MSGraphTeamsAppPublishingStateRejected:
            return @"rejected";
        case MSGraphTeamsAppPublishingStatePublished:
            return @"published";
        case MSGraphTeamsAppPublishingStateUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphTeamsAppPublishingStateEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTeamsAppPublishingStateValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTeamsAppPublishingState)

- (MSGraphTeamsAppPublishingState*) toMSGraphTeamsAppPublishingState{

    if([self isEqualToString:@"submitted"])
    {
          return [MSGraphTeamsAppPublishingState submitted];
    }
    else if([self isEqualToString:@"rejected"])
    {
          return [MSGraphTeamsAppPublishingState rejected];
    }
    else if([self isEqualToString:@"published"])
    {
          return [MSGraphTeamsAppPublishingState published];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphTeamsAppPublishingState unknownFutureValue];
    }
    else {
        return [MSGraphTeamsAppPublishingState UnknownEnumValue];
    }
}

@end
