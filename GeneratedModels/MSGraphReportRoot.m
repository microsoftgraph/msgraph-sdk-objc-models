// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphReportRoot()
{
    NSArray* _dailyPrintUsageByPrinter;
    NSArray* _dailyPrintUsageByUser;
    NSArray* _monthlyPrintUsageByPrinter;
    NSArray* _monthlyPrintUsageByUser;
}
@end

@implementation MSGraphReportRoot

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.reportRoot";
    }
    return self;
}
- (NSArray*) dailyPrintUsageByPrinter
{
    if(!_dailyPrintUsageByPrinter){
        
    NSMutableArray *dailyPrintUsageByPrinterResult = [NSMutableArray array];
    NSArray *dailyPrintUsageByPrinter = self.dictionary[@"dailyPrintUsageByPrinter"];

    if ([dailyPrintUsageByPrinter isKindOfClass:[NSArray class]]){
        for (id tempPrintUsageByPrinter in dailyPrintUsageByPrinter){
            [dailyPrintUsageByPrinterResult addObject:tempPrintUsageByPrinter];
        }
    }

    _dailyPrintUsageByPrinter = dailyPrintUsageByPrinterResult;
        
    }
    return _dailyPrintUsageByPrinter;
}

- (void) setDailyPrintUsageByPrinter: (NSArray*) val
{
    _dailyPrintUsageByPrinter = val;
    self.dictionary[@"dailyPrintUsageByPrinter"] = val;
}

- (NSArray*) dailyPrintUsageByUser
{
    if(!_dailyPrintUsageByUser){
        
    NSMutableArray *dailyPrintUsageByUserResult = [NSMutableArray array];
    NSArray *dailyPrintUsageByUser = self.dictionary[@"dailyPrintUsageByUser"];

    if ([dailyPrintUsageByUser isKindOfClass:[NSArray class]]){
        for (id tempPrintUsageByUser in dailyPrintUsageByUser){
            [dailyPrintUsageByUserResult addObject:tempPrintUsageByUser];
        }
    }

    _dailyPrintUsageByUser = dailyPrintUsageByUserResult;
        
    }
    return _dailyPrintUsageByUser;
}

- (void) setDailyPrintUsageByUser: (NSArray*) val
{
    _dailyPrintUsageByUser = val;
    self.dictionary[@"dailyPrintUsageByUser"] = val;
}

- (NSArray*) monthlyPrintUsageByPrinter
{
    if(!_monthlyPrintUsageByPrinter){
        
    NSMutableArray *monthlyPrintUsageByPrinterResult = [NSMutableArray array];
    NSArray *monthlyPrintUsageByPrinter = self.dictionary[@"monthlyPrintUsageByPrinter"];

    if ([monthlyPrintUsageByPrinter isKindOfClass:[NSArray class]]){
        for (id tempPrintUsageByPrinter in monthlyPrintUsageByPrinter){
            [monthlyPrintUsageByPrinterResult addObject:tempPrintUsageByPrinter];
        }
    }

    _monthlyPrintUsageByPrinter = monthlyPrintUsageByPrinterResult;
        
    }
    return _monthlyPrintUsageByPrinter;
}

- (void) setMonthlyPrintUsageByPrinter: (NSArray*) val
{
    _monthlyPrintUsageByPrinter = val;
    self.dictionary[@"monthlyPrintUsageByPrinter"] = val;
}

- (NSArray*) monthlyPrintUsageByUser
{
    if(!_monthlyPrintUsageByUser){
        
    NSMutableArray *monthlyPrintUsageByUserResult = [NSMutableArray array];
    NSArray *monthlyPrintUsageByUser = self.dictionary[@"monthlyPrintUsageByUser"];

    if ([monthlyPrintUsageByUser isKindOfClass:[NSArray class]]){
        for (id tempPrintUsageByUser in monthlyPrintUsageByUser){
            [monthlyPrintUsageByUserResult addObject:tempPrintUsageByUser];
        }
    }

    _monthlyPrintUsageByUser = monthlyPrintUsageByUserResult;
        
    }
    return _monthlyPrintUsageByUser;
}

- (void) setMonthlyPrintUsageByUser: (NSArray*) val
{
    _monthlyPrintUsageByUser = val;
    self.dictionary[@"monthlyPrintUsageByUser"] = val;
}


@end
