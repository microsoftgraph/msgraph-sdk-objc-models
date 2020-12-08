// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphMessageSecurityState : MSObject

@property (nullable, nonatomic, setter=setConnectingIP:, getter=connectingIP) NSString* connectingIP;
@property (nullable, nonatomic, setter=setDeliveryAction:, getter=deliveryAction) NSString* deliveryAction;
@property (nullable, nonatomic, setter=setDeliveryLocation:, getter=deliveryLocation) NSString* deliveryLocation;
@property (nullable, nonatomic, setter=setDirectionality:, getter=directionality) NSString* directionality;
@property (nullable, nonatomic, setter=setInternetMessageId:, getter=internetMessageId) NSString* internetMessageId;
@property (nullable, nonatomic, setter=setMessageFingerprint:, getter=messageFingerprint) NSString* messageFingerprint;
@property (nullable, nonatomic, setter=setMessageReceivedDateTime:, getter=messageReceivedDateTime) NSDate* messageReceivedDateTime;
@property (nullable, nonatomic, setter=setMessageSubject:, getter=messageSubject) NSString* messageSubject;
@property (nullable, nonatomic, setter=setNetworkMessageId:, getter=networkMessageId) NSString* networkMessageId;

@end
