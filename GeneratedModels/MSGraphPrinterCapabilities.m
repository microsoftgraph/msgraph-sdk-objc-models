// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrinterCapabilities()
{
    NSArray* _bottomMargins;
    BOOL _collation;
    NSArray* _colorModes;
    NSArray* _contentTypes;
    MSGraphIntegerRange* _copiesPerJob;
    NSArray* _dpis;
    NSArray* _duplexModes;
    NSArray* _feedOrientations;
    NSArray* _finishings;
    NSArray* _inputBins;
    BOOL _isColorPrintingSupported;
    BOOL _isPageRangeSupported;
    NSArray* _leftMargins;
    NSArray* _mediaColors;
    NSArray* _mediaSizes;
    NSArray* _mediaTypes;
    NSArray* _multipageLayouts;
    NSArray* _orientations;
    NSArray* _outputBins;
    NSArray* _pagesPerSheet;
    NSArray* _qualities;
    NSArray* _rightMargins;
    NSArray* _scalings;
    BOOL _supportsFitPdfToPage;
    NSArray* _topMargins;
}
@end

@implementation MSGraphPrinterCapabilities

- (NSArray*) bottomMargins
{
    
    NSMutableArray *bottomMarginsResult = [NSMutableArray array];
    NSArray *bottomMargins = self.dictionary[@"bottomMargins"];

    if ([bottomMargins isKindOfClass:[NSArray class]]){
        for (id tempInt32 in bottomMargins){
            [bottomMarginsResult addObject:tempInt32];
        }
    }

    _bottomMargins = bottomMarginsResult;
        
    return _bottomMargins;
}

- (void) setBottomMargins: (NSArray*) val
{
    _bottomMargins = val;
    self.dictionary[@"bottomMargins"] = val;
}

- (BOOL) collation
{
    _collation = [self.dictionary[@"collation"] boolValue];
    return _collation;
}

- (void) setCollation: (BOOL) val
{
    _collation = val;
    self.dictionary[@"collation"] = @(val);
}

- (NSArray*) colorModes
{
    if(!_colorModes){
        
    NSMutableArray *colorModesResult = [NSMutableArray array];
    NSArray *colorModes = self.dictionary[@"colorModes"];

    if ([colorModes isKindOfClass:[NSArray class]]){
        for (id tempPrintColorMode in colorModes){
            [colorModesResult addObject:tempPrintColorMode];
        }
    }

    _colorModes = colorModesResult;
        
    }
    return _colorModes;
}

- (void) setColorModes: (NSArray*) val
{
    _colorModes = val;
    self.dictionary[@"colorModes"] = val;
}

- (NSArray*) contentTypes
{
    if([[NSNull null] isEqual:self.dictionary[@"contentTypes"]])
    {
        return nil;
    }   
    return self.dictionary[@"contentTypes"];
}

- (void) setContentTypes: (NSArray*) val
{
    self.dictionary[@"contentTypes"] = val;
}

- (MSGraphIntegerRange*) copiesPerJob
{
    if(!_copiesPerJob){
        _copiesPerJob = [[MSGraphIntegerRange alloc] initWithDictionary: self.dictionary[@"copiesPerJob"]];
    }
    return _copiesPerJob;
}

- (void) setCopiesPerJob: (MSGraphIntegerRange*) val
{
    _copiesPerJob = val;
    self.dictionary[@"copiesPerJob"] = val;
}

- (NSArray*) dpis
{
    
    NSMutableArray *dpisResult = [NSMutableArray array];
    NSArray *dpis = self.dictionary[@"dpis"];

    if ([dpis isKindOfClass:[NSArray class]]){
        for (id tempInt32 in dpis){
            [dpisResult addObject:tempInt32];
        }
    }

    _dpis = dpisResult;
        
    return _dpis;
}

- (void) setDpis: (NSArray*) val
{
    _dpis = val;
    self.dictionary[@"dpis"] = val;
}

- (NSArray*) duplexModes
{
    if(!_duplexModes){
        
    NSMutableArray *duplexModesResult = [NSMutableArray array];
    NSArray *duplexModes = self.dictionary[@"duplexModes"];

    if ([duplexModes isKindOfClass:[NSArray class]]){
        for (id tempPrintDuplexMode in duplexModes){
            [duplexModesResult addObject:tempPrintDuplexMode];
        }
    }

    _duplexModes = duplexModesResult;
        
    }
    return _duplexModes;
}

- (void) setDuplexModes: (NSArray*) val
{
    _duplexModes = val;
    self.dictionary[@"duplexModes"] = val;
}

- (NSArray*) feedOrientations
{
    if(!_feedOrientations){
        
    NSMutableArray *feedOrientationsResult = [NSMutableArray array];
    NSArray *feedOrientations = self.dictionary[@"feedOrientations"];

    if ([feedOrientations isKindOfClass:[NSArray class]]){
        for (id tempPrinterFeedOrientation in feedOrientations){
            [feedOrientationsResult addObject:tempPrinterFeedOrientation];
        }
    }

    _feedOrientations = feedOrientationsResult;
        
    }
    return _feedOrientations;
}

- (void) setFeedOrientations: (NSArray*) val
{
    _feedOrientations = val;
    self.dictionary[@"feedOrientations"] = val;
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

- (NSArray*) inputBins
{
    if([[NSNull null] isEqual:self.dictionary[@"inputBins"]])
    {
        return nil;
    }   
    return self.dictionary[@"inputBins"];
}

- (void) setInputBins: (NSArray*) val
{
    self.dictionary[@"inputBins"] = val;
}

- (BOOL) isColorPrintingSupported
{
    _isColorPrintingSupported = [self.dictionary[@"isColorPrintingSupported"] boolValue];
    return _isColorPrintingSupported;
}

- (void) setIsColorPrintingSupported: (BOOL) val
{
    _isColorPrintingSupported = val;
    self.dictionary[@"isColorPrintingSupported"] = @(val);
}

- (BOOL) isPageRangeSupported
{
    _isPageRangeSupported = [self.dictionary[@"isPageRangeSupported"] boolValue];
    return _isPageRangeSupported;
}

- (void) setIsPageRangeSupported: (BOOL) val
{
    _isPageRangeSupported = val;
    self.dictionary[@"isPageRangeSupported"] = @(val);
}

- (NSArray*) leftMargins
{
    
    NSMutableArray *leftMarginsResult = [NSMutableArray array];
    NSArray *leftMargins = self.dictionary[@"leftMargins"];

    if ([leftMargins isKindOfClass:[NSArray class]]){
        for (id tempInt32 in leftMargins){
            [leftMarginsResult addObject:tempInt32];
        }
    }

    _leftMargins = leftMarginsResult;
        
    return _leftMargins;
}

- (void) setLeftMargins: (NSArray*) val
{
    _leftMargins = val;
    self.dictionary[@"leftMargins"] = val;
}

- (NSArray*) mediaColors
{
    if([[NSNull null] isEqual:self.dictionary[@"mediaColors"]])
    {
        return nil;
    }   
    return self.dictionary[@"mediaColors"];
}

- (void) setMediaColors: (NSArray*) val
{
    self.dictionary[@"mediaColors"] = val;
}

- (NSArray*) mediaSizes
{
    if([[NSNull null] isEqual:self.dictionary[@"mediaSizes"]])
    {
        return nil;
    }   
    return self.dictionary[@"mediaSizes"];
}

- (void) setMediaSizes: (NSArray*) val
{
    self.dictionary[@"mediaSizes"] = val;
}

- (NSArray*) mediaTypes
{
    if([[NSNull null] isEqual:self.dictionary[@"mediaTypes"]])
    {
        return nil;
    }   
    return self.dictionary[@"mediaTypes"];
}

- (void) setMediaTypes: (NSArray*) val
{
    self.dictionary[@"mediaTypes"] = val;
}

- (NSArray*) multipageLayouts
{
    if(!_multipageLayouts){
        
    NSMutableArray *multipageLayoutsResult = [NSMutableArray array];
    NSArray *multipageLayouts = self.dictionary[@"multipageLayouts"];

    if ([multipageLayouts isKindOfClass:[NSArray class]]){
        for (id tempPrintMultipageLayout in multipageLayouts){
            [multipageLayoutsResult addObject:tempPrintMultipageLayout];
        }
    }

    _multipageLayouts = multipageLayoutsResult;
        
    }
    return _multipageLayouts;
}

- (void) setMultipageLayouts: (NSArray*) val
{
    _multipageLayouts = val;
    self.dictionary[@"multipageLayouts"] = val;
}

- (NSArray*) orientations
{
    if(!_orientations){
        
    NSMutableArray *orientationsResult = [NSMutableArray array];
    NSArray *orientations = self.dictionary[@"orientations"];

    if ([orientations isKindOfClass:[NSArray class]]){
        for (id tempPrintOrientation in orientations){
            [orientationsResult addObject:tempPrintOrientation];
        }
    }

    _orientations = orientationsResult;
        
    }
    return _orientations;
}

- (void) setOrientations: (NSArray*) val
{
    _orientations = val;
    self.dictionary[@"orientations"] = val;
}

- (NSArray*) outputBins
{
    if([[NSNull null] isEqual:self.dictionary[@"outputBins"]])
    {
        return nil;
    }   
    return self.dictionary[@"outputBins"];
}

- (void) setOutputBins: (NSArray*) val
{
    self.dictionary[@"outputBins"] = val;
}

- (NSArray*) pagesPerSheet
{
    
    NSMutableArray *pagesPerSheetResult = [NSMutableArray array];
    NSArray *pagesPerSheet = self.dictionary[@"pagesPerSheet"];

    if ([pagesPerSheet isKindOfClass:[NSArray class]]){
        for (id tempInt32 in pagesPerSheet){
            [pagesPerSheetResult addObject:tempInt32];
        }
    }

    _pagesPerSheet = pagesPerSheetResult;
        
    return _pagesPerSheet;
}

- (void) setPagesPerSheet: (NSArray*) val
{
    _pagesPerSheet = val;
    self.dictionary[@"pagesPerSheet"] = val;
}

- (NSArray*) qualities
{
    if(!_qualities){
        
    NSMutableArray *qualitiesResult = [NSMutableArray array];
    NSArray *qualities = self.dictionary[@"qualities"];

    if ([qualities isKindOfClass:[NSArray class]]){
        for (id tempPrintQuality in qualities){
            [qualitiesResult addObject:tempPrintQuality];
        }
    }

    _qualities = qualitiesResult;
        
    }
    return _qualities;
}

- (void) setQualities: (NSArray*) val
{
    _qualities = val;
    self.dictionary[@"qualities"] = val;
}

- (NSArray*) rightMargins
{
    
    NSMutableArray *rightMarginsResult = [NSMutableArray array];
    NSArray *rightMargins = self.dictionary[@"rightMargins"];

    if ([rightMargins isKindOfClass:[NSArray class]]){
        for (id tempInt32 in rightMargins){
            [rightMarginsResult addObject:tempInt32];
        }
    }

    _rightMargins = rightMarginsResult;
        
    return _rightMargins;
}

- (void) setRightMargins: (NSArray*) val
{
    _rightMargins = val;
    self.dictionary[@"rightMargins"] = val;
}

- (NSArray*) scalings
{
    if(!_scalings){
        
    NSMutableArray *scalingsResult = [NSMutableArray array];
    NSArray *scalings = self.dictionary[@"scalings"];

    if ([scalings isKindOfClass:[NSArray class]]){
        for (id tempPrintScaling in scalings){
            [scalingsResult addObject:tempPrintScaling];
        }
    }

    _scalings = scalingsResult;
        
    }
    return _scalings;
}

- (void) setScalings: (NSArray*) val
{
    _scalings = val;
    self.dictionary[@"scalings"] = val;
}

- (BOOL) supportsFitPdfToPage
{
    _supportsFitPdfToPage = [self.dictionary[@"supportsFitPdfToPage"] boolValue];
    return _supportsFitPdfToPage;
}

- (void) setSupportsFitPdfToPage: (BOOL) val
{
    _supportsFitPdfToPage = val;
    self.dictionary[@"supportsFitPdfToPage"] = @(val);
}

- (NSArray*) topMargins
{
    
    NSMutableArray *topMarginsResult = [NSMutableArray array];
    NSArray *topMargins = self.dictionary[@"topMargins"];

    if ([topMargins isKindOfClass:[NSArray class]]){
        for (id tempInt32 in topMargins){
            [topMarginsResult addObject:tempInt32];
        }
    }

    _topMargins = topMarginsResult;
        
    return _topMargins;
}

- (void) setTopMargins: (NSArray*) val
{
    _topMargins = val;
    self.dictionary[@"topMargins"] = val;
}

@end
