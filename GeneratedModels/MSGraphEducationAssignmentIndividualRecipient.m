// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationAssignmentIndividualRecipient()
{
    NSArray* _recipients;
}
@end

@implementation MSGraphEducationAssignmentIndividualRecipient

- (NSArray*) recipients
{
    if([[NSNull null] isEqual:self.dictionary[@"recipients"]])
    {
        return nil;
    }   
    return self.dictionary[@"recipients"];
}

- (void) setRecipients: (NSArray*) val
{
    self.dictionary[@"recipients"] = val;
}

@end
