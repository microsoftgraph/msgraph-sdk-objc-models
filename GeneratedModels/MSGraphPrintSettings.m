// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintSettings()
{
    BOOL _documentConversionEnabled;
}
@end

@implementation MSGraphPrintSettings

- (BOOL) documentConversionEnabled
{
    _documentConversionEnabled = [self.dictionary[@"documentConversionEnabled"] boolValue];
    return _documentConversionEnabled;
}

- (void) setDocumentConversionEnabled: (BOOL) val
{
    _documentConversionEnabled = val;
    self.dictionary[@"documentConversionEnabled"] = @(val);
}

@end
