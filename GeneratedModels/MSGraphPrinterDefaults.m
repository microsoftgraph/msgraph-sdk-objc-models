// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrinterDefaults()
{
    MSGraphPrintColorMode* _colorMode;
    NSString* _contentType;
    int32_t _copiesPerJob;
    int32_t _dpi;
    MSGraphPrintDuplexMode* _duplexMode;
    NSArray* _finishings;
    BOOL _fitPdfToPage;
    NSString* _inputBin;
    NSString* _mediaColor;
    NSString* _mediaSize;
    NSString* _mediaType;
    MSGraphPrintMultipageLayout* _multipageLayout;
    MSGraphPrintOrientation* _orientation;
    NSString* _outputBin;
    int32_t _pagesPerSheet;
    MSGraphPrintQuality* _quality;
    MSGraphPrintScaling* _scaling;
}
@end

@implementation MSGraphPrinterDefaults

- (MSGraphPrintColorMode*) colorMode
{
    if(!_colorMode){
        _colorMode = [self.dictionary[@"colorMode"] toMSGraphPrintColorMode];
    }
    return _colorMode;
}

- (void) setColorMode: (MSGraphPrintColorMode*) val
{
    _colorMode = val;
    self.dictionary[@"colorMode"] = val;
}

- (NSString*) contentType
{
    if([[NSNull null] isEqual:self.dictionary[@"contentType"]])
    {
        return nil;
    }   
    return self.dictionary[@"contentType"];
}

- (void) setContentType: (NSString*) val
{
    self.dictionary[@"contentType"] = val;
}

- (int32_t) copiesPerJob
{
    _copiesPerJob = [self.dictionary[@"copiesPerJob"] intValue];
    return _copiesPerJob;
}

- (void) setCopiesPerJob: (int32_t) val
{
    _copiesPerJob = val;
    self.dictionary[@"copiesPerJob"] = @(val);
}

- (int32_t) dpi
{
    _dpi = [self.dictionary[@"dpi"] intValue];
    return _dpi;
}

- (void) setDpi: (int32_t) val
{
    _dpi = val;
    self.dictionary[@"dpi"] = @(val);
}

- (MSGraphPrintDuplexMode*) duplexMode
{
    if(!_duplexMode){
        _duplexMode = [self.dictionary[@"duplexMode"] toMSGraphPrintDuplexMode];
    }
    return _duplexMode;
}

- (void) setDuplexMode: (MSGraphPrintDuplexMode*) val
{
    _duplexMode = val;
    self.dictionary[@"duplexMode"] = val;
}

- (NSArray*) finishings
{
    if(!_finishings){
        
    NSMutableArray *finishingsResult = [NSMutableArray array];
    NSArray *finishings = self.dictionary[@"finishings"];

    if ([finishings isKindOfClass:[NSArray class]]){
        for (id tempPrintFinishing in finishings){
            [finishingsResult addObject:tempPrintFinishing];
        }
    }

    _finishings = finishingsResult;
        
    }
    return _finishings;
}

- (void) setFinishings: (NSArray*) val
{
    _finishings = val;
    self.dictionary[@"finishings"] = val;
}

- (BOOL) fitPdfToPage
{
    _fitPdfToPage = [self.dictionary[@"fitPdfToPage"] boolValue];
    return _fitPdfToPage;
}

- (void) setFitPdfToPage: (BOOL) val
{
    _fitPdfToPage = val;
    self.dictionary[@"fitPdfToPage"] = @(val);
}

- (NSString*) inputBin
{
    if([[NSNull null] isEqual:self.dictionary[@"inputBin"]])
    {
        return nil;
    }   
    return self.dictionary[@"inputBin"];
}

- (void) setInputBin: (NSString*) val
{
    self.dictionary[@"inputBin"] = val;
}

- (NSString*) mediaColor
{
    if([[NSNull null] isEqual:self.dictionary[@"mediaColor"]])
    {
        return nil;
    }   
    return self.dictionary[@"mediaColor"];
}

- (void) setMediaColor: (NSString*) val
{
    self.dictionary[@"mediaColor"] = val;
}

- (NSString*) mediaSize
{
    if([[NSNull null] isEqual:self.dictionary[@"mediaSize"]])
    {
        return nil;
    }   
    return self.dictionary[@"mediaSize"];
}

- (void) setMediaSize: (NSString*) val
{
    self.dictionary[@"mediaSize"] = val;
}

- (NSString*) mediaType
{
    if([[NSNull null] isEqual:self.dictionary[@"mediaType"]])
    {
        return nil;
    }   
    return self.dictionary[@"mediaType"];
}

- (void) setMediaType: (NSString*) val
{
    self.dictionary[@"mediaType"] = val;
}

- (MSGraphPrintMultipageLayout*) multipageLayout
{
    if(!_multipageLayout){
        _multipageLayout = [self.dictionary[@"multipageLayout"] toMSGraphPrintMultipageLayout];
    }
    return _multipageLayout;
}

- (void) setMultipageLayout: (MSGraphPrintMultipageLayout*) val
{
    _multipageLayout = val;
    self.dictionary[@"multipageLayout"] = val;
}

- (MSGraphPrintOrientation*) orientation
{
    if(!_orientation){
        _orientation = [self.dictionary[@"orientation"] toMSGraphPrintOrientation];
    }
    return _orientation;
}

- (void) setOrientation: (MSGraphPrintOrientation*) val
{
    _orientation = val;
    self.dictionary[@"orientation"] = val;
}

- (NSString*) outputBin
{
    if([[NSNull null] isEqual:self.dictionary[@"outputBin"]])
    {
        return nil;
    }   
    return self.dictionary[@"outputBin"];
}

- (void) setOutputBin: (NSString*) val
{
    self.dictionary[@"outputBin"] = val;
}

- (int32_t) pagesPerSheet
{
    _pagesPerSheet = [self.dictionary[@"pagesPerSheet"] intValue];
    return _pagesPerSheet;
}

- (void) setPagesPerSheet: (int32_t) val
{
    _pagesPerSheet = val;
    self.dictionary[@"pagesPerSheet"] = @(val);
}

- (MSGraphPrintQuality*) quality
{
    if(!_quality){
        _quality = [self.dictionary[@"quality"] toMSGraphPrintQuality];
    }
    return _quality;
}

- (void) setQuality: (MSGraphPrintQuality*) val
{
    _quality = val;
    self.dictionary[@"quality"] = val;
}

- (MSGraphPrintScaling*) scaling
{
    if(!_scaling){
        _scaling = [self.dictionary[@"scaling"] toMSGraphPrintScaling];
    }
    return _scaling;
}

- (void) setScaling: (MSGraphPrintScaling*) val
{
    _scaling = val;
    self.dictionary[@"scaling"] = val;
}

@end
