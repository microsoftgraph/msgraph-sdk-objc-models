// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAlbum()
{
    NSString* _coverImageItemId;
}
@end

@implementation MSGraphAlbum

- (NSString*) coverImageItemId
{
    if([[NSNull null] isEqual:self.dictionary[@"coverImageItemId"]])
    {
        return nil;
    }   
    return self.dictionary[@"coverImageItemId"];
}

- (void) setCoverImageItemId: (NSString*) val
{
    self.dictionary[@"coverImageItemId"] = val;
}

@end
