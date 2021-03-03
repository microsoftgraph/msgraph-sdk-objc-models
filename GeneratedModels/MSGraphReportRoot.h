// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphPrintUsageByPrinter, MSGraphPrintUsageByUser; 


#import "MSGraphEntity.h"

@interface MSGraphReportRoot : MSGraphEntity

  @property (nullable, nonatomic, setter=setDailyPrintUsageByPrinter:, getter=dailyPrintUsageByPrinter) NSArray* dailyPrintUsageByPrinter;
    @property (nullable, nonatomic, setter=setDailyPrintUsageByUser:, getter=dailyPrintUsageByUser) NSArray* dailyPrintUsageByUser;
    @property (nullable, nonatomic, setter=setMonthlyPrintUsageByPrinter:, getter=monthlyPrintUsageByPrinter) NSArray* monthlyPrintUsageByPrinter;
    @property (nullable, nonatomic, setter=setMonthlyPrintUsageByUser:, getter=monthlyPrintUsageByUser) NSArray* monthlyPrintUsageByUser;
  
@end
