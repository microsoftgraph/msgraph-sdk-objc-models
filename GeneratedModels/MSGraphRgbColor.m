// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRgbColor()
{
    Byte _b;
    Byte _g;
    Byte _r;
}
@end

@implementation MSGraphRgbColor

- (Byte) b
{
    _b = self.dictionary[@"b"];
    return _b;
}

- (void) setB: (Byte) val
{
    _b = val;
    self.dictionary[@"b"] = @(val);
}

- (Byte) g
{
    _g = self.dictionary[@"g"];
    return _g;
}

- (void) setG: (Byte) val
{
    _g = val;
    self.dictionary[@"g"] = @(val);
}

- (Byte) r
{
    _r = self.dictionary[@"r"];
    return _r;
}

- (void) setR: (Byte) val
{
    _r = val;
    self.dictionary[@"r"] = @(val);
}

@end
