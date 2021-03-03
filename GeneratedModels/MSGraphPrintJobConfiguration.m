// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintJobConfiguration()
{
    BOOL _collate;
    MSGraphPrintColorMode* _colorMode;
    int32_t _copies;
    int32_t _dpi;
    MSGraphPrintDuplexMode* _duplexMode;
    MSGraphPrinterFeedOrientation* _feedOrientation;
    NSArray* _finishings;
    BOOL _fitPdfToPage;
    NSString* _inputBin;
    MSGraphPrintMargin* _margin;
    NSString* _mediaSize;
    NSString* _mediaType;
    MSGraphPrintMultipageLayout* _multipageLayout;
    MSGraphPrintOrientation* _orientation;
    NSString* _outputBin;
    NSArray* _pageRanges;
    int32_t _pagesPerSheet;
    MSGraphPrintQuality* _quality;
    MSGraphPrintScaling* _scaling;
}
@end

@implementation MSGraphPrintJobConfiguration

- (BOOL) collate
{
    _collate = [self.dictionary[@"collate"] boolValue];
    return _collate;
}

- (void) setCollate: (BOOL) val
{
    _collate = val;
    self.dictionary[@"collate"] = @(val);
}

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

- (int32_t) copies
{
    _copies = [self.dictionary[@"copies"] intValue];
    return _copies;
}

- (void) setCopies: (int32_t) val
{
    _copies = val;
    self.dictionary[@"copies"] = @(val);
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

- (MSGraphPrinterFeedOrientation*) feedOrientation
{
    if(!_feedOrientation){
        _feedOrientation = [self.dictionary[@"feedOrientation"] toMSGraphPrinterFeedOrientation];
    }
    return _feedOrientation;
}

- (void) setFeedOrientation: (MSGraphPrinterFeedOrientation*) val
{
    _feedOrientation = val;
    self.dictionary[@"feedOrientation"] = val;
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

- (MSGraphPrintMargin*) margin
{
    if(!_margin){
        _margin = [[MSGraphPrintMargin alloc] initWithDictionary: self.dictionary[@"margin"]];
    }
    return _margin;
}

- (void) setMargin: (MSGraphPrintMargin*) val
{
    _margin = val;
    self.dictionary[@"margin"] = val;
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

- (NSArray*) pageRanges
{
    if(!_pageRanges){
        
    NSMutableArray *pageRangesResult = [NSMutableArray array];
    NSArray *pageRanges = self.dictionary[@"pageRanges"];

    if ([pageRanges isKindOfClass:[NSArray class]]){
        for (id tempIntegerRange in pageRanges){
            [pageRangesResult addObject:tempIntegerRange];
        }
    }

    _pageRanges = pageRangesResult;
        
    }
    return _pageRanges;
}

- (void) setPageRanges: (NSArray*) val
{
    _pageRanges = val;
    self.dictionary[@"pageRanges"] = val;
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
