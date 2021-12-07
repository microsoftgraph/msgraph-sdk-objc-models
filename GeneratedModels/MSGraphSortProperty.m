// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSortProperty()
{
    BOOL _isDescending;
    NSString* _name;
}
@end

@implementation MSGraphSortProperty

- (BOOL) isDescending
{
    _isDescending = [self.dictionary[@"isDescending"] boolValue];
    return _isDescending;
}

- (void) setIsDescending: (BOOL) val
{
    _isDescending = val;
    self.dictionary[@"isDescending"] = @(val);
}

- (NSString*) name
{
    return self.dictionary[@"name"];
}

- (void) setName: (NSString*) val
{
    self.dictionary[@"name"] = val;
}

@end
