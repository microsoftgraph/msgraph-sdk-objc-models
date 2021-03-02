// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrinterStatus()
{
    NSString* _printerStatusDescription;
    NSArray* _details;
    MSGraphPrinterProcessingState* _state;
}
@end

@implementation MSGraphPrinterStatus

- (NSString*) printerStatusDescription
{
    if([[NSNull null] isEqual:self.dictionary[@"description"]])
    {
        return nil;
    }   
    return self.dictionary[@"description"];
}

- (void) setPrinterStatusDescription: (NSString*) val
{
    self.dictionary[@"description"] = val;
}

- (NSArray*) details
{
    if(!_details){
        
    NSMutableArray *detailsResult = [NSMutableArray array];
    NSArray *details = self.dictionary[@"details"];

    if ([details isKindOfClass:[NSArray class]]){
        for (id tempPrinterProcessingStateDetail in details){
            [detailsResult addObject:tempPrinterProcessingStateDetail];
        }
    }

    _details = detailsResult;
        
    }
    return _details;
}

- (void) setDetails: (NSArray*) val
{
    _details = val;
    self.dictionary[@"details"] = val;
}

- (MSGraphPrinterProcessingState*) state
{
    if(!_state){
        _state = [self.dictionary[@"state"] toMSGraphPrinterProcessingState];
    }
    return _state;
}

- (void) setState: (MSGraphPrinterProcessingState*) val
{
    _state = val;
    self.dictionary[@"state"] = val;
}

@end
