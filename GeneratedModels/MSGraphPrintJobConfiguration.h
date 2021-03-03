// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphPrintMargin, MSGraphIntegerRange; 
#import "MSGraphPrintColorMode.h"
#import "MSGraphPrintDuplexMode.h"
#import "MSGraphPrinterFeedOrientation.h"
#import "MSGraphPrintFinishing.h"
#import "MSGraphPrintMultipageLayout.h"
#import "MSGraphPrintOrientation.h"
#import "MSGraphPrintQuality.h"
#import "MSGraphPrintScaling.h"


#import "MSObject.h"

@interface MSGraphPrintJobConfiguration : MSObject

@property (nonatomic, setter=setCollate:, getter=collate) BOOL collate;
@property (nullable, nonatomic, setter=setColorMode:, getter=colorMode) MSGraphPrintColorMode* colorMode;
@property (nonatomic, setter=setCopies:, getter=copies) int32_t copies;
@property (nonatomic, setter=setDpi:, getter=dpi) int32_t dpi;
@property (nullable, nonatomic, setter=setDuplexMode:, getter=duplexMode) MSGraphPrintDuplexMode* duplexMode;
@property (nullable, nonatomic, setter=setFeedOrientation:, getter=feedOrientation) MSGraphPrinterFeedOrientation* feedOrientation;
@property (nullable, nonatomic, setter=setFinishings:, getter=finishings) NSArray* finishings;
@property (nonatomic, setter=setFitPdfToPage:, getter=fitPdfToPage) BOOL fitPdfToPage;
@property (nullable, nonatomic, setter=setInputBin:, getter=inputBin) NSString* inputBin;
@property (nullable, nonatomic, setter=setMargin:, getter=margin) MSGraphPrintMargin* margin;
@property (nullable, nonatomic, setter=setMediaSize:, getter=mediaSize) NSString* mediaSize;
@property (nullable, nonatomic, setter=setMediaType:, getter=mediaType) NSString* mediaType;
@property (nullable, nonatomic, setter=setMultipageLayout:, getter=multipageLayout) MSGraphPrintMultipageLayout* multipageLayout;
@property (nullable, nonatomic, setter=setOrientation:, getter=orientation) MSGraphPrintOrientation* orientation;
@property (nullable, nonatomic, setter=setOutputBin:, getter=outputBin) NSString* outputBin;
@property (nullable, nonatomic, setter=setPageRanges:, getter=pageRanges) NSArray* pageRanges;
@property (nonatomic, setter=setPagesPerSheet:, getter=pagesPerSheet) int32_t pagesPerSheet;
@property (nullable, nonatomic, setter=setQuality:, getter=quality) MSGraphPrintQuality* quality;
@property (nullable, nonatomic, setter=setScaling:, getter=scaling) MSGraphPrintScaling* scaling;

@end
