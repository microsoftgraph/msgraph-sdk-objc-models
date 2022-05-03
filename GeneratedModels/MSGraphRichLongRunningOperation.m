// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRichLongRunningOperation()
{
    MSGraphPublicError* _error;
    int32_t _percentageComplete;
    NSString* _resourceId;
    NSString* _type;
}
@end

@implementation MSGraphRichLongRunningOperation

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.richLongRunningOperation";
    }
    return self;
}
- (MSGraphPublicError*) error
{
    if(!_error){
        _error = [[MSGraphPublicError alloc] initWithDictionary: self.dictionary[@"error"]];
    }
    return _error;
}

- (void) setError: (MSGraphPublicError*) val
{
    _error = val;
    self.dictionary[@"error"] = val;
}

- (int32_t) percentageComplete
{
    _percentageComplete = [self.dictionary[@"percentageComplete"] intValue];
    return _percentageComplete;
}

- (void) setPercentageComplete: (int32_t) val
{
    _percentageComplete = val;
    self.dictionary[@"percentageComplete"] = @(val);
}

- (NSString*) resourceId
{
    if([[NSNull null] isEqual:self.dictionary[@"resourceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"resourceId"];
}

- (void) setResourceId: (NSString*) val
{
    self.dictionary[@"resourceId"] = val;
}

- (NSString*) type
{
    if([[NSNull null] isEqual:self.dictionary[@"type"]])
    {
        return nil;
    }   
    return self.dictionary[@"type"];
}

- (void) setType: (NSString*) val
{
    self.dictionary[@"type"] = val;
}


@end
