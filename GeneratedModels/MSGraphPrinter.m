// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrinter()
{
    BOOL _hasPhysicalDevice;
    BOOL _isShared;
    NSDate* _lastSeenDateTime;
    NSDate* _registeredDateTime;
    NSArray* _connectors;
    NSArray* _shares;
    NSArray* _taskTriggers;
}
@end

@implementation MSGraphPrinter

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.printer";
    }
    return self;
}
- (BOOL) hasPhysicalDevice
{
    _hasPhysicalDevice = [self.dictionary[@"hasPhysicalDevice"] boolValue];
    return _hasPhysicalDevice;
}

- (void) setHasPhysicalDevice: (BOOL) val
{
    _hasPhysicalDevice = val;
    self.dictionary[@"hasPhysicalDevice"] = @(val);
}

- (BOOL) isShared
{
    _isShared = [self.dictionary[@"isShared"] boolValue];
    return _isShared;
}

- (void) setIsShared: (BOOL) val
{
    _isShared = val;
    self.dictionary[@"isShared"] = @(val);
}

- (NSDate*) lastSeenDateTime
{
    if(!_lastSeenDateTime){
        _lastSeenDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastSeenDateTime"]];
    }
    return _lastSeenDateTime;
}

- (void) setLastSeenDateTime: (NSDate*) val
{
    _lastSeenDateTime = val;
    self.dictionary[@"lastSeenDateTime"] = [val ms_toString];
}

- (NSDate*) registeredDateTime
{
    if(!_registeredDateTime){
        _registeredDateTime = [NSDate ms_dateFromString: self.dictionary[@"registeredDateTime"]];
    }
    return _registeredDateTime;
}

- (void) setRegisteredDateTime: (NSDate*) val
{
    _registeredDateTime = val;
    self.dictionary[@"registeredDateTime"] = [val ms_toString];
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

- (NSArray*) taskTriggers
{
    if(!_taskTriggers){
        
    NSMutableArray *taskTriggersResult = [NSMutableArray array];
    NSArray *taskTriggers = self.dictionary[@"taskTriggers"];

    if ([taskTriggers isKindOfClass:[NSArray class]]){
        for (id tempPrintTaskTrigger in taskTriggers){
            [taskTriggersResult addObject:tempPrintTaskTrigger];
        }
    }

    _taskTriggers = taskTriggersResult;
        
    }
    return _taskTriggers;
}

- (void) setTaskTriggers: (NSArray*) val
{
    _taskTriggers = val;
    self.dictionary[@"taskTriggers"] = val;
}


@end
