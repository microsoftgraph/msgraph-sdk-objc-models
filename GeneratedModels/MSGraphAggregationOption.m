// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAggregationOption()
{
    MSGraphBucketAggregationDefinition* _bucketDefinition;
    NSString* _field;
    int32_t _size;
}
@end

@implementation MSGraphAggregationOption

- (MSGraphBucketAggregationDefinition*) bucketDefinition
{
    if(!_bucketDefinition){
        _bucketDefinition = [[MSGraphBucketAggregationDefinition alloc] initWithDictionary: self.dictionary[@"bucketDefinition"]];
    }
    return _bucketDefinition;
}

- (void) setBucketDefinition: (MSGraphBucketAggregationDefinition*) val
{
    _bucketDefinition = val;
    self.dictionary[@"bucketDefinition"] = val;
}

- (NSString*) field
{
    return self.dictionary[@"field"];
}

- (void) setField: (NSString*) val
{
    self.dictionary[@"field"] = val;
}

- (int32_t) size
{
    _size = [self.dictionary[@"size"] intValue];
    return _size;
}

- (void) setSize: (int32_t) val
{
    _size = val;
    self.dictionary[@"size"] = @(val);
}

@end
