//  FSImageViewer
//
//  Created by Felix Schulze on 9/04/2013.
//  Copyright 2013 Felix Schulze. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "FSBasicImage.h"

@implementation FSBasicImage

@synthesize URL = _URL;
@synthesize title = _title;
@synthesize size = _size;
@synthesize image = _image;
@synthesize failed = _failed;
@synthesize shouldBeCached = _shouldBeCached;

- (id)initWithImageURL:(NSURL *)aURL name:(NSString *)aName image:(UIImage *)aImage shouldBeCached:(BOOL)shouldBeCached {
    self = [super init];
    if (self) {
        _URL = aURL;
        _title = aName;
        _shouldBeCached = shouldBeCached;
        self.image = aImage;
    }
    return self;
}

- (id)initWithImageURL:(NSURL *)aURL name:(NSString *)aName {
    return [self initWithImageURL:aURL name:aName image:nil shouldBeCached:true];
}

- (id)initWithImageURL:(NSURL *)aURL {
    return [self initWithImageURL:aURL name:nil image:nil shouldBeCached:true];
}

- (id)initWithImageURL:(NSURL *)aURL name:(NSString *)aName shouldBeCached:(BOOL)shouldBeCached {
    return [self initWithImageURL:aURL name:aName image:nil shouldBeCached:shouldBeCached];
}

- (id)initWithImageURL:(NSURL *)aURL shouldBeCached:(BOOL)shouldBeCached {
    return [self initWithImageURL:aURL name:nil image:nil shouldBeCached:shouldBeCached];
}

- (id)initWithImage:(UIImage *)aImage {
    return [self initWithImageURL:nil name:nil image:aImage shouldBeCached:true];
}

- (id)initWithImage:(UIImage *)aImage name:(NSString *)aName {
    return [self initWithImageURL:nil name:aName image:aImage shouldBeCached:true];
}

- (id)initWithImage:(UIImage *)aImage shouldBeCached:(BOOL)shouldBeCached {
    return [self initWithImageURL:nil name:nil image:aImage shouldBeCached:shouldBeCached];
}

- (id)initWithImage:(UIImage *)aImage name:(NSString *)aName shouldBeCached:(BOOL)shouldBeCached {
    return [self initWithImageURL:nil name:aName image:aImage shouldBeCached:shouldBeCached];
}

@end
