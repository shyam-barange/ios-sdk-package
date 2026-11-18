/*
Copyright (c) 2026 MultiSet AI. All rights reserved.
Licensed under the MultiSet License. You may not use this file except in compliance with the License. and you can't re-distribute this file without a prior notice
For license details, visit www.multiset.ai.
Redistribution in source or binary forms must retain this notice.
*/

import Foundation

/// The bundle whose `default.metallib` holds the adapter's shaders.
enum ShaderBundle {
    #if SWIFT_PACKAGE
    // A package target is linked statically, so its shaders sit in its resource bundle
    static let current = Bundle.module
    #else
    static let current = Bundle(for: BundleToken.self)
    private final class BundleToken {}
    #endif
}
