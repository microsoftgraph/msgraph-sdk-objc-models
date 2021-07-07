// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExternalConnectorsExternalItemContentType.h"

@interface MSGraphExternalConnectorsExternalItemContentType () {
    MSGraphExternalConnectorsExternalItemContentTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphExternalConnectorsExternalItemContentTypeValue enumValue;
@end

@implementation MSGraphExternalConnectorsExternalItemContentType

+ (MSGraphExternalConnectorsExternalItemContentType*) text {
    static MSGraphExternalConnectorsExternalItemContentType *_text;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _text = [[MSGraphExternalConnectorsExternalItemContentType alloc] init];
        _text.enumValue = MSGraphExternalConnectorsExternalItemContentTypeText;
    });
    return _text;
}
+ (MSGraphExternalConnectorsExternalItemContentType*) html {
    static MSGraphExternalConnectorsExternalItemContentType *_html;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _html = [[MSGraphExternalConnectorsExternalItemContentType alloc] init];
        _html.enumValue = MSGraphExternalConnectorsExternalItemContentTypeHtml;
    });
    return _html;
}
+ (MSGraphExternalConnectorsExternalItemContentType*) unknownFutureValue {
    static MSGraphExternalConnectorsExternalItemContentType *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphExternalConnectorsExternalItemContentType alloc] init];
        _unknownFutureValue.enumValue = MSGraphExternalConnectorsExternalItemContentTypeUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphExternalConnectorsExternalItemContentType*) UnknownEnumValue {
    static MSGraphExternalConnectorsExternalItemContentType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphExternalConnectorsExternalItemContentType alloc] init];
        _unknownValue.enumValue = MSGraphExternalConnectorsExternalItemContentTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphExternalConnectorsExternalItemContentType*) externalItemContentTypeWithEnumValue:(MSGraphExternalConnectorsExternalItemContentTypeValue)val {

    switch(val)
    {
        case MSGraphExternalConnectorsExternalItemContentTypeText:
            return [MSGraphExternalConnectorsExternalItemContentType text];
        case MSGraphExternalConnectorsExternalItemContentTypeHtml:
            return [MSGraphExternalConnectorsExternalItemContentType html];
        case MSGraphExternalConnectorsExternalItemContentTypeUnknownFutureValue:
            return [MSGraphExternalConnectorsExternalItemContentType unknownFutureValue];
        case MSGraphExternalConnectorsExternalItemContentTypeEndOfEnum:
        default:
            return [MSGraphExternalConnectorsExternalItemContentType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphExternalConnectorsExternalItemContentTypeText:
            return @"text";
        case MSGraphExternalConnectorsExternalItemContentTypeHtml:
            return @"html";
        case MSGraphExternalConnectorsExternalItemContentTypeUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphExternalConnectorsExternalItemContentTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphExternalConnectorsExternalItemContentTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphExternalConnectorsExternalItemContentType)

- (MSGraphExternalConnectorsExternalItemContentType*) toMSGraphExternalConnectorsExternalItemContentType{

    if([self isEqualToString:@"text"])
    {
          return [MSGraphExternalConnectorsExternalItemContentType text];
    }
    else if([self isEqualToString:@"html"])
    {
          return [MSGraphExternalConnectorsExternalItemContentType html];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphExternalConnectorsExternalItemContentType unknownFutureValue];
    }
    else {
        return [MSGraphExternalConnectorsExternalItemContentType UnknownEnumValue];
    }
}

@end
