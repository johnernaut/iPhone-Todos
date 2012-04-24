//
//  Todo.m
//  TekpubTodo
//
//  Created by John Johnson III on 4/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Todo.h"

@implementation Todo

@synthesize text = _text;
@synthesize completed = _completed;

-(id)initWithText:(NSString *)txt {
    if(self = [super init]) {
        _text = txt;
    }
    
    return self;
}

@end
