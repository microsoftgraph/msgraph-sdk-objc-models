// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAuthoredNote()
{
    MSGraphIdentity* _author;
    MSGraphItemBody* _content;
    NSDate* _createdDateTime;
}
@end

@implementation MSGraphAuthoredNote

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.authoredNote";
    }
    return self;
}
- (MSGraphIdentity*) author
{
    if(!_author){
        _author = [[MSGraphIdentity alloc] initWithDictionary: self.dictionary[@"author"]];
    }
    return _author;
}

- (void) setAuthor: (MSGraphIdentity*) val
{
    _author = val;
    self.dictionary[@"author"] = val;
}

- (MSGraphItemBody*) content
{
    if(!_content){
        _content = [[MSGraphItemBody alloc] initWithDictionary: self.dictionary[@"content"]];
    }
    return _content;
}

- (void) setContent: (MSGraphItemBody*) val
{
    _content = val;
    self.dictionary[@"content"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}


@end
