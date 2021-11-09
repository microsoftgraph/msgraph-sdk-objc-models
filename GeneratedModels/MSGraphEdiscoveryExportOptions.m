// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEdiscoveryExportOptions.h"

@interface MSGraphEdiscoveryExportOptions () {
    MSGraphEdiscoveryExportOptionsValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEdiscoveryExportOptionsValue enumValue;
@end

@implementation MSGraphEdiscoveryExportOptions

+ (MSGraphEdiscoveryExportOptions*) originalFiles {
    static MSGraphEdiscoveryExportOptions *_originalFiles;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _originalFiles = [[MSGraphEdiscoveryExportOptions alloc] init];
        _originalFiles.enumValue = MSGraphEdiscoveryExportOptionsOriginalFiles;
    });
    return _originalFiles;
}
+ (MSGraphEdiscoveryExportOptions*) text {
    static MSGraphEdiscoveryExportOptions *_text;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _text = [[MSGraphEdiscoveryExportOptions alloc] init];
        _text.enumValue = MSGraphEdiscoveryExportOptionsText;
    });
    return _text;
}
+ (MSGraphEdiscoveryExportOptions*) pdfReplacement {
    static MSGraphEdiscoveryExportOptions *_pdfReplacement;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pdfReplacement = [[MSGraphEdiscoveryExportOptions alloc] init];
        _pdfReplacement.enumValue = MSGraphEdiscoveryExportOptionsPdfReplacement;
    });
    return _pdfReplacement;
}
+ (MSGraphEdiscoveryExportOptions*) fileInfo {
    static MSGraphEdiscoveryExportOptions *_fileInfo;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fileInfo = [[MSGraphEdiscoveryExportOptions alloc] init];
        _fileInfo.enumValue = MSGraphEdiscoveryExportOptionsFileInfo;
    });
    return _fileInfo;
}
+ (MSGraphEdiscoveryExportOptions*) tags {
    static MSGraphEdiscoveryExportOptions *_tags;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _tags = [[MSGraphEdiscoveryExportOptions alloc] init];
        _tags.enumValue = MSGraphEdiscoveryExportOptionsTags;
    });
    return _tags;
}
+ (MSGraphEdiscoveryExportOptions*) unknownFutureValue {
    static MSGraphEdiscoveryExportOptions *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEdiscoveryExportOptions alloc] init];
        _unknownFutureValue.enumValue = MSGraphEdiscoveryExportOptionsUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEdiscoveryExportOptions*) UnknownEnumValue {
    static MSGraphEdiscoveryExportOptions *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEdiscoveryExportOptions alloc] init];
        _unknownValue.enumValue = MSGraphEdiscoveryExportOptionsEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEdiscoveryExportOptions*) exportOptionsWithEnumValue:(MSGraphEdiscoveryExportOptionsValue)val {

    switch(val)
    {
        case MSGraphEdiscoveryExportOptionsOriginalFiles:
            return [MSGraphEdiscoveryExportOptions originalFiles];
        case MSGraphEdiscoveryExportOptionsText:
            return [MSGraphEdiscoveryExportOptions text];
        case MSGraphEdiscoveryExportOptionsPdfReplacement:
            return [MSGraphEdiscoveryExportOptions pdfReplacement];
        case MSGraphEdiscoveryExportOptionsFileInfo:
            return [MSGraphEdiscoveryExportOptions fileInfo];
        case MSGraphEdiscoveryExportOptionsTags:
            return [MSGraphEdiscoveryExportOptions tags];
        case MSGraphEdiscoveryExportOptionsUnknownFutureValue:
            return [MSGraphEdiscoveryExportOptions unknownFutureValue];
        case MSGraphEdiscoveryExportOptionsEndOfEnum:
        default:
            return [MSGraphEdiscoveryExportOptions UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEdiscoveryExportOptionsOriginalFiles:
            return @"originalFiles";
        case MSGraphEdiscoveryExportOptionsText:
            return @"text";
        case MSGraphEdiscoveryExportOptionsPdfReplacement:
            return @"pdfReplacement";
        case MSGraphEdiscoveryExportOptionsFileInfo:
            return @"fileInfo";
        case MSGraphEdiscoveryExportOptionsTags:
            return @"tags";
        case MSGraphEdiscoveryExportOptionsUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphEdiscoveryExportOptionsEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEdiscoveryExportOptionsValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEdiscoveryExportOptions)

- (MSGraphEdiscoveryExportOptions*) toMSGraphEdiscoveryExportOptions{

    if([self isEqualToString:@"originalFiles"])
    {
          return [MSGraphEdiscoveryExportOptions originalFiles];
    }
    else if([self isEqualToString:@"text"])
    {
          return [MSGraphEdiscoveryExportOptions text];
    }
    else if([self isEqualToString:@"pdfReplacement"])
    {
          return [MSGraphEdiscoveryExportOptions pdfReplacement];
    }
    else if([self isEqualToString:@"fileInfo"])
    {
          return [MSGraphEdiscoveryExportOptions fileInfo];
    }
    else if([self isEqualToString:@"tags"])
    {
          return [MSGraphEdiscoveryExportOptions tags];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphEdiscoveryExportOptions unknownFutureValue];
    }
    else {
        return [MSGraphEdiscoveryExportOptions UnknownEnumValue];
    }
}

@end
