// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationLinkResource()
{
    NSString* _link;
}
@end

@implementation MSGraphEducationLinkResource

- (NSString*) link
{
    if([[NSNull null] isEqual:self.dictionary[@"link"]])
    {
        return nil;
    }   
    return self.dictionary[@"link"];
}

- (void) setLink: (NSString*) val
{
    self.dictionary[@"link"] = val;
}

@end
