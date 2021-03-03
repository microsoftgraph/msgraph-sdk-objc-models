// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrint()
{
    MSGraphPrintSettings* _settings;
    NSArray* _connectors;
    NSArray* _printOperations;
    NSArray* _printers;
    NSArray* _services;
    NSArray* _shares;
    NSArray* _taskDefinitions;
}
@end

@implementation MSGraphPrint

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.print";
    }
    return self;
}
- (NSString*) oDataType
{
    return self.dictionary[@"@odata.type"];
}
- (void) setODataType: (NSString*) val
{
    self.dictionary[@"@odata.type"] = val;
}
- (NSString*) oDataEtag
{
    return self.dictionary[@"@odata.etag"];
}
- (void) setODataEtag: (NSString*) val
{
    self.dictionary[@"@odata.etag"] = val;
}
- (MSGraphPrintSettings*) settings
{
    if(!_settings){
        _settings = [[MSGraphPrintSettings alloc] initWithDictionary: self.dictionary[@"settings"]];
    }
    return _settings;
}

- (void) setSettings: (MSGraphPrintSettings*) val
{
    _settings = val;
    self.dictionary[@"settings"] = val;
}

- (NSArray*) connectors
{
    if(!_connectors){
        
    NSMutableArray *connectorsResult = [NSMutableArray array];
    NSArray *connectors = self.dictionary[@"connectors"];

    if ([connectors isKindOfClass:[NSArray class]]){
        for (id tempPrintConnector in connectors){
            [connectorsResult addObject:tempPrintConnector];
        }
    }

    _connectors = connectorsResult;
        
    }
    return _connectors;
}

- (void) setConnectors: (NSArray*) val
{
    _connectors = val;
    self.dictionary[@"connectors"] = val;
}

- (NSArray*) printOperations
{
    if(!_printOperations){
        
    NSMutableArray *printOperationsResult = [NSMutableArray array];
    NSArray *printOperations = self.dictionary[@"operations"];

    if ([printOperations isKindOfClass:[NSArray class]]){
        for (id tempPrintOperation in printOperations){
            [printOperationsResult addObject:tempPrintOperation];
        }
    }

    _printOperations = printOperationsResult;
        
    }
    return _printOperations;
}

- (void) setPrintOperations: (NSArray*) val
{
    _printOperations = val;
    self.dictionary[@"operations"] = val;
}

- (NSArray*) printers
{
    if(!_printers){
        
    NSMutableArray *printersResult = [NSMutableArray array];
    NSArray *printers = self.dictionary[@"printers"];

    if ([printers isKindOfClass:[NSArray class]]){
        for (id tempPrinter in printers){
            [printersResult addObject:tempPrinter];
        }
    }

    _printers = printersResult;
        
    }
    return _printers;
}

- (void) setPrinters: (NSArray*) val
{
    _printers = val;
    self.dictionary[@"printers"] = val;
}

- (NSArray*) services
{
    if(!_services){
        
    NSMutableArray *servicesResult = [NSMutableArray array];
    NSArray *services = self.dictionary[@"services"];

    if ([services isKindOfClass:[NSArray class]]){
        for (id tempPrintService in services){
            [servicesResult addObject:tempPrintService];
        }
    }

    _services = servicesResult;
        
    }
    return _services;
}

- (void) setServices: (NSArray*) val
{
    _services = val;
    self.dictionary[@"services"] = val;
}

- (NSArray*) shares
{
    if(!_shares){
        
    NSMutableArray *sharesResult = [NSMutableArray array];
    NSArray *shares = self.dictionary[@"shares"];

    if ([shares isKindOfClass:[NSArray class]]){
        for (id tempPrinterShare in shares){
            [sharesResult addObject:tempPrinterShare];
        }
    }

    _shares = sharesResult;
        
    }
    return _shares;
}

- (void) setShares: (NSArray*) val
{
    _shares = val;
    self.dictionary[@"shares"] = val;
}

- (NSArray*) taskDefinitions
{
    if(!_taskDefinitions){
        
    NSMutableArray *taskDefinitionsResult = [NSMutableArray array];
    NSArray *taskDefinitions = self.dictionary[@"taskDefinitions"];

    if ([taskDefinitions isKindOfClass:[NSArray class]]){
        for (id tempPrintTaskDefinition in taskDefinitions){
            [taskDefinitionsResult addObject:tempPrintTaskDefinition];
        }
    }

    _taskDefinitions = taskDefinitionsResult;
        
    }
    return _taskDefinitions;
}

- (void) setTaskDefinitions: (NSArray*) val
{
    _taskDefinitions = val;
    self.dictionary[@"taskDefinitions"] = val;
}


@end
