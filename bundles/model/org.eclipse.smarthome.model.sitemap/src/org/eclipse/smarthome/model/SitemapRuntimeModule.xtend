/** 
 * Copyright (c) 2014-2017 by the respective copyright holders.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */
package
/*
 * generated by Xtext
 */
org.eclipse.smarthome.model

import org.eclipse.smarthome.model.valueconverter.SitemapConverters
import org.eclipse.xtext.conversion.IValueConverterService
import org.eclipse.xtext.linking.lazy.LazyURIEncoder
import com.google.inject.Binder
import com.google.inject.name.Names

/** 
 * Use this class to register components to be used at runtime / without the Equinox extension registry.
 */
class SitemapRuntimeModule extends org.eclipse.smarthome.model.AbstractSitemapRuntimeModule {
    override Class<? extends IValueConverterService> bindIValueConverterService() {
        return SitemapConverters
    }

    override void configureUseIndexFragmentsForLazyLinking(Binder binder) {
        binder.bind(Boolean.TYPE).annotatedWith(Names.named(LazyURIEncoder.USE_INDEXED_FRAGMENTS_BINDING)).toInstance(
            Boolean.FALSE)
    }
}