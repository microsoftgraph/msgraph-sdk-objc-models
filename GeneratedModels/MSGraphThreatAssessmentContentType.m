// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphThreatAssessmentContentType.h"

@interface MSGraphThreatAssessmentContentType () {
    MSGraphThreatAssessmentContentTypeValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphThreatAssessmentContentTypeValue enumValue;
@end

@implementation MSGraphThreatAssessmentContentType

+ (MSGraphThreatAssessmentContentType*) mail {
    static MSGraphThreatAssessmentContentType *_mail;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mail = [[MSGraphThreatAssessmentContentType alloc] init];
        _mail.enumValue = MSGraphThreatAssessmentContentTypeMail;
    });
    return _mail;
}
+ (MSGraphThreatAssessmentContentType*) url {
    static MSGraphThreatAssessmentContentType *_url;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _url = [[MSGraphThreatAssessmentContentType alloc] init];
        _url.enumValue = MSGraphThreatAssessmentContentTypeUrl;
    });
    return _url;
}
+ (MSGraphThreatAssessmentContentType*) file {
    static MSGraphThreatAssessmentContentType *_file;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _file = [[MSGraphThreatAssessmentContentType alloc] init];
        _file.enumValue = MSGraphThreatAssessmentContentTypeFile;
    });
    return _file;
}

+ (MSGraphThreatAssessmentContentType*) UnknownEnumValue {
    static MSGraphThreatAssessmentContentType *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphThreatAssessmentContentType alloc] init];
        _unknownValue.enumValue = MSGraphThreatAssessmentContentTypeEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphThreatAssessmentContentType*) threatAssessmentContentTypeWithEnumValue:(MSGraphThreatAssessmentContentTypeValue)val {

    switch(val)
    {
        case MSGraphThreatAssessmentContentTypeMail:
            return [MSGraphThreatAssessmentContentType mail];
        case MSGraphThreatAssessmentContentTypeUrl:
            return [MSGraphThreatAssessmentContentType url];
        case MSGraphThreatAssessmentContentTypeFile:
            return [MSGraphThreatAssessmentContentType file];
        case MSGraphThreatAssessmentContentTypeEndOfEnum:
        default:
            return [MSGraphThreatAssessmentContentType UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphThreatAssessmentContentTypeMail:
            return @"mail";
        case MSGraphThreatAssessmentContentTypeUrl:
            return @"url";
        case MSGraphThreatAssessmentContentTypeFile:
            return @"file";
        case MSGraphThreatAssessmentContentTypeEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphThreatAssessmentContentTypeValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphThreatAssessmentContentType)

- (MSGraphThreatAssessmentContentType*) toMSGraphThreatAssessmentContentType{

    if([self isEqualToString:@"mail"])
    {
          return [MSGraphThreatAssessmentContentType mail];
    }
    else if([self isEqualToString:@"url"])
    {
          return [MSGraphThreatAssessmentContentType url];
    }
    else if([self isEqualToString:@"file"])
    {
          return [MSGraphThreatAssessmentContentType file];
    }
    else {
        return [MSGraphThreatAssessmentContentType UnknownEnumValue];
    }
}

@end
