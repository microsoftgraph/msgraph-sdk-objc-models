// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphEdiscoveryExportFileStructure.h"

@interface MSGraphEdiscoveryExportFileStructure () {
    MSGraphEdiscoveryExportFileStructureValue _enumValue;
}
@property (nonatomic, readwrite) MSGraphEdiscoveryExportFileStructureValue enumValue;
@end

@implementation MSGraphEdiscoveryExportFileStructure

+ (MSGraphEdiscoveryExportFileStructure*) none {
    static MSGraphEdiscoveryExportFileStructure *_none;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _none = [[MSGraphEdiscoveryExportFileStructure alloc] init];
        _none.enumValue = MSGraphEdiscoveryExportFileStructureNone;
    });
    return _none;
}
+ (MSGraphEdiscoveryExportFileStructure*) directory {
    static MSGraphEdiscoveryExportFileStructure *_directory;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _directory = [[MSGraphEdiscoveryExportFileStructure alloc] init];
        _directory.enumValue = MSGraphEdiscoveryExportFileStructureDirectory;
    });
    return _directory;
}
+ (MSGraphEdiscoveryExportFileStructure*) pst {
    static MSGraphEdiscoveryExportFileStructure *_pst;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _pst = [[MSGraphEdiscoveryExportFileStructure alloc] init];
        _pst.enumValue = MSGraphEdiscoveryExportFileStructurePst;
    });
    return _pst;
}
+ (MSGraphEdiscoveryExportFileStructure*) unknownFutureValue {
    static MSGraphEdiscoveryExportFileStructure *_unknownFutureValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownFutureValue = [[MSGraphEdiscoveryExportFileStructure alloc] init];
        _unknownFutureValue.enumValue = MSGraphEdiscoveryExportFileStructureUnknownFutureValue;
    });
    return _unknownFutureValue;
}

+ (MSGraphEdiscoveryExportFileStructure*) UnknownEnumValue {
    static MSGraphEdiscoveryExportFileStructure *_unknownValue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _unknownValue = [[MSGraphEdiscoveryExportFileStructure alloc] init];
        _unknownValue.enumValue = MSGraphEdiscoveryExportFileStructureEndOfEnum;
    });
    return _unknownValue;
}


+ (MSGraphEdiscoveryExportFileStructure*) exportFileStructureWithEnumValue:(MSGraphEdiscoveryExportFileStructureValue)val {

    switch(val)
    {
        case MSGraphEdiscoveryExportFileStructureNone:
            return [MSGraphEdiscoveryExportFileStructure none];
        case MSGraphEdiscoveryExportFileStructureDirectory:
            return [MSGraphEdiscoveryExportFileStructure directory];
        case MSGraphEdiscoveryExportFileStructurePst:
            return [MSGraphEdiscoveryExportFileStructure pst];
        case MSGraphEdiscoveryExportFileStructureUnknownFutureValue:
            return [MSGraphEdiscoveryExportFileStructure unknownFutureValue];
        case MSGraphEdiscoveryExportFileStructureEndOfEnum:
        default:
            return [MSGraphEdiscoveryExportFileStructure UnknownEnumValue];
    }

    return nil;
}

- (NSString*) ms_toString {

    switch(self.enumValue)
    {
        case MSGraphEdiscoveryExportFileStructureNone:
            return @"none";
        case MSGraphEdiscoveryExportFileStructureDirectory:
            return @"directory";
        case MSGraphEdiscoveryExportFileStructurePst:
            return @"pst";
        case MSGraphEdiscoveryExportFileStructureUnknownFutureValue:
            return @"unknownFutureValue";
        case MSGraphEdiscoveryExportFileStructureEndOfEnum:
        default:
            return nil;
    }

    return nil;
}

- (MSGraphEdiscoveryExportFileStructureValue) enumValue {
    return _enumValue;
}

@end

@implementation NSString (MSGraphEdiscoveryExportFileStructure)

- (MSGraphEdiscoveryExportFileStructure*) toMSGraphEdiscoveryExportFileStructure{

    if([self isEqualToString:@"none"])
    {
          return [MSGraphEdiscoveryExportFileStructure none];
    }
    else if([self isEqualToString:@"directory"])
    {
          return [MSGraphEdiscoveryExportFileStructure directory];
    }
    else if([self isEqualToString:@"pst"])
    {
          return [MSGraphEdiscoveryExportFileStructure pst];
    }
    else if([self isEqualToString:@"unknownFutureValue"])
    {
          return [MSGraphEdiscoveryExportFileStructure unknownFutureValue];
    }
    else {
        return [MSGraphEdiscoveryExportFileStructure UnknownEnumValue];
    }
}

@end
