// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintUsageByPrinter()
{
    NSString* _printerId;
}
@end

@implementation MSGraphPrintUsageByPrinter

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.printUsageByPrinter";
    }
    return self;
}
- (NSString*) printerId
{
    return self.dictionary[@"printerId"];
}

- (void) setPrinterId: (NSString*) val
{
    self.dictionary[@"printerId"] = val;
}


@end
