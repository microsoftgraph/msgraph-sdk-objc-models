// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphBundle()
{
    MSGraphAlbum* _album;
    int32_t _childCount;
}
@end

@implementation MSGraphBundle

- (MSGraphAlbum*) album
{
    if(!_album){
        _album = [[MSGraphAlbum alloc] initWithDictionary: self.dictionary[@"album"]];
    }
    return _album;
}

- (void) setAlbum: (MSGraphAlbum*) val
{
    _album = val;
    self.dictionary[@"album"] = val;
}

- (int32_t) childCount
{
    _childCount = [self.dictionary[@"childCount"] intValue];
    return _childCount;
}

- (void) setChildCount: (int32_t) val
{
    _childCount = val;
    self.dictionary[@"childCount"] = @(val);
}

@end
