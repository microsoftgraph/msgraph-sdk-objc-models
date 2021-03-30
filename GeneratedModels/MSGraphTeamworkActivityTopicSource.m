// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphTeamworkActivityTopicSource.h"

@interface MSGraphTeamworkActivityTopicSource () {
    MSGraphTeamworkActivityTopicSourceValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphTeamworkActivityTopicSourceValue enumValue;
@end

@implementation MSGraphTeamworkActivityTopicSource

+ (MSGraphTeamworkActivityTopicSource*) entityUrl {
    static MSGraphTeamworkActivityTopicSource *_entityUrl;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _entityUrl = [[MSGraphTeamworkActivityTopicSource alloc] init];
        _entityUrl.enumValue = MSGraphTeamworkActivityTopicSourceEntityUrl;
    });
    return _entityUrl;
}
+ (MSGraphTeamworkActivityTopicSource*) text {
    static MSGraphTeamworkActivityTopicSource *_text;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _text = [[MSGraphTeamworkActivityTopicSource alloc] init];
        _text.enumValue = MSGraphTeamworkActivityTopicSourceText;
    });
    return _text;
}

+ (MSGraphTeamworkActivityTopicSource*) UnknownEnumValue {
    static MSGraphTeamworkActivityTopicSource *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphTeamworkActivityTopicSource alloc] init];
        _unknownValue.enumValue = MSGraphTeamworkActivityTopicSourceEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphTeamworkActivityTopicSource*) teamworkActivityTopicSourceWithEnumValue:(MSGraphTeamworkActivityTopicSourceValue)val {

    switch(val)
    {
        case MSGraphTeamworkActivityTopicSourceEntityUrl:
            return [MSGraphTeamworkActivityTopicSource entityUrl];
        case MSGraphTeamworkActivityTopicSourceText:
            return [MSGraphTeamworkActivityTopicSource text];
        case MSGraphTeamworkActivityTopicSourceEndOfEnum:
        default:
            return [MSGraphTeamworkActivityTopicSource UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphTeamworkActivityTopicSourceEntityUrl:
            return @"entityUrl";
        case MSGraphTeamworkActivityTopicSourceText:
            return @"text";
        case MSGraphTeamworkActivityTopicSourceEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphTeamworkActivityTopicSourceValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphTeamworkActivityTopicSource)

- (MSGraphTeamworkActivityTopicSource*) toMSGraphTeamworkActivityTopicSource{

    if([self isEqualToString:@"entityUrl"])
    {
          return [MSGraphTeamworkActivityTopicSource entityUrl];
    }
    else if([self isEqualToString:@"text"])
    {
          return [MSGraphTeamworkActivityTopicSource text];
    }
    else {
        return [MSGraphTeamworkActivityTopicSource UnknownEnumValue];
    }
}

@end
