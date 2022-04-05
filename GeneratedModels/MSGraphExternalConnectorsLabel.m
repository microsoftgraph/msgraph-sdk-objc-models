// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphExternalConnectorsLabel.h"

@interface MSGraphExternalConnectorsLabel () {
    MSGraphExternalConnectorsLabelValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphExternalConnectorsLabelValue enumValue;
@end

@implementation MSGraphExternalConnectorsLabel

+ (MSGraphExternalConnectorsLabel*) title {
    static MSGraphExternalConnectorsLabel *_title;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _title = [[MSGraphExternalConnectorsLabel alloc] init];
        _title.enumValue = MSGraphExternalConnectorsLabelTitle;
    });
    return _title;
}
+ (MSGraphExternalConnectorsLabel*) url {
    static MSGraphExternalConnectorsLabel *_url;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _url = [[MSGraphExternalConnectorsLabel alloc] init];
        _url.enumValue = MSGraphExternalConnectorsLabelUrl;
    });
    return _url;
}
+ (MSGraphExternalConnectorsLabel*) createdBy {
    static MSGraphExternalConnectorsLabel *_createdBy;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _createdBy = [[MSGraphExternalConnectorsLabel alloc] init];
        _createdBy.enumValue = MSGraphExternalConnectorsLabelCreatedBy;
    });
    return _createdBy;
}
+ (MSGraphExternalConnectorsLabel*) lastModifiedBy {
    static MSGraphExternalConnectorsLabel *_lastModifiedBy;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lastModifiedBy = [[MSGraphExternalConnectorsLabel alloc] init];
        _lastModifiedBy.enumValue = MSGraphExternalConnectorsLabelLastModifiedBy;
    });
    return _lastModifiedBy;
}
+ (MSGraphExternalConnectorsLabel*) authors {
    static MSGraphExternalConnectorsLabel *_authors;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _authors = [[MSGraphExternalConnectorsLabel alloc] init];
        _authors.enumValue = MSGraphExternalConnectorsLabelAuthors;
    });
    return _authors;
}
+ (MSGraphExternalConnectorsLabel*) createdDateTime {
    static MSGraphExternalConnectorsLabel *_createdDateTime;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _createdDateTime = [[MSGraphExternalConnectorsLabel alloc] init];
        _createdDateTime.enumValue = MSGraphExternalConnectorsLabelCreatedDateTime;
    });
    return _createdDateTime;
}
+ (MSGraphExternalConnectorsLabel*) lastModifiedDateTime {
    static MSGraphExternalConnectorsLabel *_lastModifiedDateTime;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _lastModifiedDateTime = [[MSGraphExternalConnectorsLabel alloc] init];
        _lastModifiedDateTime.enumValue = MSGraphExternalConnectorsLabelLastModifiedDateTime;
    });
    return _lastModifiedDateTime;
}
+ (MSGraphExternalConnectorsLabel*) fileName {
    static MSGraphExternalConnectorsLabel *_fileName;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fileName = [[MSGraphExternalConnectorsLabel alloc] init];
        _fileName.enumValue = MSGraphExternalConnectorsLabelFileName;
    });
    return _fileName;
}
+ (MSGraphExternalConnectorsLabel*) fileExtension {
    static MSGraphExternalConnectorsLabel *_fileExtension;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _fileExtension = [[MSGraphExternalConnectorsLabel alloc] init];
        _fileExtension.enumValue = MSGraphExternalConnectorsLabelFileExtension;
    });
    return _fileExtension;
}
+ (MSGraphExternalConnectorsLabel*) unknownFutureValue {
    static MSGraphExternalConnectorsLabel *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphExternalConnectorsLabel alloc] init];
        _unknownFutureValue.enumValue = MSGraphExternalConnectorsLabelUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphExternalConnectorsLabel*) UnknownEnumValue {
    static MSGraphExternalConnectorsLabel *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphExternalConnectorsLabel alloc] init];
        _unknownValue.enumValue = MSGraphExternalConnectorsLabelEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphExternalConnectorsLabel*) labelWithEnumValue:(MSGraphExternalConnectorsLabelValue)val {

    switch(val)
    {
        case MSGraphExternalConnectorsLabelTitle:
            return [MSGraphExternalConnectorsLabel title];
        case MSGraphExternalConnectorsLabelUrl:
            return [MSGraphExternalConnectorsLabel url];
        case MSGraphExternalConnectorsLabelCreatedBy:
            return [MSGraphExternalConnectorsLabel createdBy];
        case MSGraphExternalConnectorsLabelLastModifiedBy:
            return [MSGraphExternalConnectorsLabel lastModifiedBy];
        case MSGraphExternalConnectorsLabelAuthors:
            return [MSGraphExternalConnectorsLabel authors];
        case MSGraphExternalConnectorsLabelCreatedDateTime:
            return [MSGraphExternalConnectorsLabel createdDateTime];
        case MSGraphExternalConnectorsLabelLastModifiedDateTime:
            return [MSGraphExternalConnectorsLabel lastModifiedDateTime];
        case MSGraphExternalConnectorsLabelFileName:
            return [MSGraphExternalConnectorsLabel fileName];
        case MSGraphExternalConnectorsLabelFileExtension:
            return [MSGraphExternalConnectorsLabel fileExtension];
        case MSGraphExternalConnectorsLabelUnknownFutureValue:
            return [MSGraphExternalConnectorsLabel unknownFutureValue];
        case MSGraphExternalConnectorsLabelEndOfEnum:
        default:
            return [MSGraphExternalConnectorsLabel UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphExternalConnectorsLabelTitle:
            return @"title";
        case MSGraphExternalConnectorsLabelUrl:
            return @"url";
        case MSGraphExternalConnectorsLabelCreatedBy:
            return @"createdBy";
        case MSGraphExternalConnectorsLabelLastModifiedBy:
            return @"lastModifiedBy";
        case MSGraphExternalConnectorsLabelAuthors:
            return @"authors";
        case MSGraphExternalConnectorsLabelCreatedDateTime:
            return @"createdDateTime";
        case MSGraphExternalConnectorsLabelLastModifiedDateTime:
            return @"lastModifiedDateTime";
        case MSGraphExternalConnectorsLabelFileName:
            return @"fileName";
        case MSGraphExternalConnectorsLabelFileExtension:
            return @"fileExtension";
        case MSGraphExternalConnectorsLabelUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphExternalConnectorsLabelEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphExternalConnectorsLabelValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphExternalConnectorsLabel)

- (MSGraphExternalConnectorsLabel*) toMSGraphExternalConnectorsLabel{

    if([self isEqualToString:@"title"])
    {
          return [MSGraphExternalConnectorsLabel title];
    }
    else if([self isEqualToString:@"url"])
    {
          return [MSGraphExternalConnectorsLabel url];
    }
    else if([self isEqualToString:@"createdBy"])
    {
          return [MSGraphExternalConnectorsLabel createdBy];
    }
    else if([self isEqualToString:@"lastModifiedBy"])
    {
          return [MSGraphExternalConnectorsLabel lastModifiedBy];
    }
    else if([self isEqualToString:@"authors"])
    {
          return [MSGraphExternalConnectorsLabel authors];
    }
    else if([self isEqualToString:@"createdDateTime"])
    {
          return [MSGraphExternalConnectorsLabel createdDateTime];
    }
    else if([self isEqualToString:@"lastModifiedDateTime"])
    {
          return [MSGraphExternalConnectorsLabel lastModifiedDateTime];
    }
    else if([self isEqualToString:@"fileName"])
    {
          return [MSGraphExternalConnectorsLabel fileName];
    }
    else if([self isEqualToString:@"fileExtension"])
    {
          return [MSGraphExternalConnectorsLabel fileExtension];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphExternalConnectorsLabel unknownFutureValue];
    }
    else {
        return [MSGraphExternalConnectorsLabel UnknownEnumValue];
    }
}

@end
