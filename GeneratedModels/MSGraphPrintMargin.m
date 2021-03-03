// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphPrintMargin()
{
    int32_t _bottom;
    int32_t _left;
    int32_t _right;
    int32_t _top;
}
@end

@implementation MSGraphPrintMargin

- (int32_t) bottom
{
    _bottom = [self.dictionary[@"bottom"] intValue];
    return _bottom;
}

- (void) setBottom: (int32_t) val
{
    _bottom = val;
    self.dictionary[@"bottom"] = @(val);
}

- (int32_t) left
{
    _left = [self.dictionary[@"left"] intValue];
    return _left;
}

- (void) setLeft: (int32_t) val
{
    _left = val;
    self.dictionary[@"left"] = @(val);
}

- (int32_t) right
{
    _right = [self.dictionary[@"right"] intValue];
    return _right;
}

- (void) setRight: (int32_t) val
{
    _right = val;
    self.dictionary[@"right"] = @(val);
}

- (int32_t) top
{
    _top = [self.dictionary[@"top"] intValue];
    return _top;
}

- (void) setTop: (int32_t) val
{
    _top = val;
    self.dictionary[@"top"] = @(val);
}

@end
