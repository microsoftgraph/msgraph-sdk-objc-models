// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphHyperlinkOrPictureColumn()
{
    BOOL _isPicture;
}
@end

@implementation MSGraphHyperlinkOrPictureColumn

- (BOOL) isPicture
{
    _isPicture = [self.dictionary[@"isPicture"] boolValue];
    return _isPicture;
}

- (void) setIsPicture: (BOOL) val
{
    _isPicture = val;
    self.dictionary[@"isPicture"] = @(val);
}

@end
