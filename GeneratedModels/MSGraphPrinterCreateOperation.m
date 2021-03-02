// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrinterCreateOperation()
{
    NSString* _certificate;
    MSGraphPrinter* _printer;
}
@end

@implementation MSGraphPrinterCreateOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.printerCreateOperation";
    }
    return self;
}
- (NSString*) certificate
{
    if([[NSNull null] isEqual:self.dictionary[@"certificate"]])
    {
        return nil;
    }   
    return self.dictionary[@"certificate"];
}

- (void) setCertificate: (NSString*) val
{
    self.dictionary[@"certificate"] = val;
}

- (MSGraphPrinter*) printer
{
    if(!_printer){
        _printer = [[MSGraphPrinter alloc] initWithDictionary: self.dictionary[@"printer"]];
    }
    return _printer;
}

- (void) setPrinter: (MSGraphPrinter*) val
{
    _printer = val;
    self.dictionary[@"printer"] = val;
}


@end
