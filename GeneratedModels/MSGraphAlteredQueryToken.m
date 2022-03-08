// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAlteredQueryToken()
{
    int32_t _length;
    int32_t _offset;
    NSString* _suggestion;
}
@end

@implementation MSGraphAlteredQueryToken

- (int32_t) length
{
    _length = [self.dictionary[@"length"] intValue];
    return _length;
}

- (void) setLength: (int32_t) val
{
    _length = val;
    self.dictionary[@"length"] = @(val);
}

- (int32_t) offset
{
    _offset = [self.dictionary[@"offset"] intValue];
    return _offset;
}

- (void) setOffset: (int32_t) val
{
    _offset = val;
    self.dictionary[@"offset"] = @(val);
}

- (NSString*) suggestion
{
    if([[NSNull null] isEqual:self.dictionary[@"suggestion"]])
    {
        return nil;
    }   
    return self.dictionary[@"suggestion"];
}

- (void) setSuggestion: (NSString*) val
{
    self.dictionary[@"suggestion"] = val;
}

@end
