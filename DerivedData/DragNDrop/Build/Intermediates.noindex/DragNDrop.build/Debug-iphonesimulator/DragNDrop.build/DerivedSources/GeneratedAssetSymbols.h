#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "fruitBowl" asset catalog image resource.
static NSString * const ACImageNameFruitBowl AC_SWIFT_PRIVATE = @"fruitBowl";

/// The "fruitBowl-all" asset catalog image resource.
static NSString * const ACImageNameFruitBowlAll AC_SWIFT_PRIVATE = @"fruitBowl-all";

/// The "fruitBowl-grape" asset catalog image resource.
static NSString * const ACImageNameFruitBowlGrape AC_SWIFT_PRIVATE = @"fruitBowl-grape";

/// The "fruitBowl-grape-pear" asset catalog image resource.
static NSString * const ACImageNameFruitBowlGrapePear AC_SWIFT_PRIVATE = @"fruitBowl-grape-pear";

/// The "fruitBowl-orange" asset catalog image resource.
static NSString * const ACImageNameFruitBowlOrange AC_SWIFT_PRIVATE = @"fruitBowl-orange";

/// The "fruitBowl-orange-grape" asset catalog image resource.
static NSString * const ACImageNameFruitBowlOrangeGrape AC_SWIFT_PRIVATE = @"fruitBowl-orange-grape";

/// The "fruitBowl-orange-pear" asset catalog image resource.
static NSString * const ACImageNameFruitBowlOrangePear AC_SWIFT_PRIVATE = @"fruitBowl-orange-pear";

/// The "fruitBowl-pear" asset catalog image resource.
static NSString * const ACImageNameFruitBowlPear AC_SWIFT_PRIVATE = @"fruitBowl-pear";

/// The "grape" asset catalog image resource.
static NSString * const ACImageNameGrape AC_SWIFT_PRIVATE = @"grape";

/// The "orange" asset catalog image resource.
static NSString * const ACImageNameOrange AC_SWIFT_PRIVATE = @"orange";

/// The "pear" asset catalog image resource.
static NSString * const ACImageNamePear AC_SWIFT_PRIVATE = @"pear";

#undef AC_SWIFT_PRIVATE