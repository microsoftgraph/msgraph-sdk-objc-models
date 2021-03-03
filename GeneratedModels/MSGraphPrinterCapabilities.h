// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphIntegerRange; 
#import "MSGraphPrintColorMode.h"
#import "MSGraphPrintDuplexMode.h"
#import "MSGraphPrinterFeedOrientation.h"
#import "MSGraphPrintFinishing.h"
#import "MSGraphPrintMultipageLayout.h"
#import "MSGraphPrintOrientation.h"
#import "MSGraphPrintQuality.h"
#import "MSGraphPrintScaling.h"


#import "MSObject.h"

@interface MSGraphPrinterCapabilities : MSObject

@property (nullable, nonatomic, setter=setBottomMargins:, getter=bottomMargins) NSArray* bottomMargins;
@property (nonatomic, setter=setCollation:, getter=collation) BOOL collation;
@property (nullable, nonatomic, setter=setColorModes:, getter=colorModes) NSArray* colorModes;
@property (nullable, nonatomic, setter=setContentTypes:, getter=contentTypes) NSArray* contentTypes;
@property (nullable, nonatomic, setter=setCopiesPerJob:, getter=copiesPerJob) MSGraphIntegerRange* copiesPerJob;
@property (nullable, nonatomic, setter=setDpis:, getter=dpis) NSArray* dpis;
@property (nullable, nonatomic, setter=setDuplexModes:, getter=duplexModes) NSArray* duplexModes;
@property (nullable, nonatomic, setter=setFeedOrientations:, getter=feedOrientations) NSArray* feedOrientations;
@property (nullable, nonatomic, setter=setFinishings:, getter=finishings) NSArray* finishings;
@property (nullable, nonatomic, setter=setInputBins:, getter=inputBins) NSArray* inputBins;
@property (nonatomic, setter=setIsColorPrintingSupported:, getter=isColorPrintingSupported) BOOL isColorPrintingSupported;
@property (nonatomic, setter=setIsPageRangeSupported:, getter=isPageRangeSupported) BOOL isPageRangeSupported;
@property (nullable, nonatomic, setter=setLeftMargins:, getter=leftMargins) NSArray* leftMargins;
@property (nullable, nonatomic, setter=setMediaColors:, getter=mediaColors) NSArray* mediaColors;
@property (nullable, nonatomic, setter=setMediaSizes:, getter=mediaSizes) NSArray* mediaSizes;
@property (nullable, nonatomic, setter=setMediaTypes:, getter=mediaTypes) NSArray* mediaTypes;
@property (nullable, nonatomic, setter=setMultipageLayouts:, getter=multipageLayouts) NSArray* multipageLayouts;
@property (nullable, nonatomic, setter=setOrientations:, getter=orientations) NSArray* orientations;
@property (nullable, nonatomic, setter=setOutputBins:, getter=outputBins) NSArray* outputBins;
@property (nullable, nonatomic, setter=setPagesPerSheet:, getter=pagesPerSheet) NSArray* pagesPerSheet;
@property (nullable, nonatomic, setter=setQualities:, getter=qualities) NSArray* qualities;
@property (nullable, nonatomic, setter=setRightMargins:, getter=rightMargins) NSArray* rightMargins;
@property (nullable, nonatomic, setter=setScalings:, getter=scalings) NSArray* scalings;
@property (nonatomic, setter=setSupportsFitPdfToPage:, getter=supportsFitPdfToPage) BOOL supportsFitPdfToPage;
@property (nullable, nonatomic, setter=setTopMargins:, getter=topMargins) NSArray* topMargins;

@end
