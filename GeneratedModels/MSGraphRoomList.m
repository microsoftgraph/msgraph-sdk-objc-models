// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphRoomList()
{
    NSString* _emailAddress;
    NSArray* _rooms;
}
@end

@implementation MSGraphRoomList

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.roomList";
    }
    return self;
}
- (NSString*) emailAddress
{
    if([[NSNull null] isEqual:self.dictionary[@"emailAddress"]])
    {
        return nil;
    }   
    return self.dictionary[@"emailAddress"];
}

- (void) setEmailAddress: (NSString*) val
{
    self.dictionary[@"emailAddress"] = val;
}

- (NSArray*) rooms
{
    if(!_rooms){
        
    NSMutableArray *roomsResult = [NSMutableArray array];
    NSArray *rooms = self.dictionary[@"rooms"];

    if ([rooms isKindOfClass:[NSArray class]]){
        for (id tempRoom in rooms){
            [roomsResult addObject:tempRoom];
        }
    }

    _rooms = roomsResult;
        
    }
    return _rooms;
}

- (void) setRooms: (NSArray*) val
{
    _rooms = val;
    self.dictionary[@"rooms"] = val;
}


@end
