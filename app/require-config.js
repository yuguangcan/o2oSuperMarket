/*global requirejs*/

requirejs.config({

    paths: {
        
        // resources
        'requirelib': '../../bower_components/requirejs/require',
        'zepto': '../../bower_components/zepto/zepto',
        'swipe': '../../bower_components/swipe/swipe',
        'common': 'base/common'
    },

    shim: {
        'zepto':{
            exports : '$'
        },
        'swipe':{
            exports: 'Swipe'
        }
        
        
    },

    modules: [
        {
            namespace: 'require',
            name: 'require',
            create: true,
            include: [
                'requirelib',
                'zepto',
                'common'
            ]
        },
        {
            name: 'page/index',
            exclude: [
                'requirelib',
                'zepto',
                'common'
            ]
        },
        {
            name: 'page/plist',
            exclude: [
                'requirelib',
                'zepto',
                'common'
            ]
        },
        {
            name: 'page/product',
            exclude: [
                'requirelib',
                'zepto',
                'common'
            ]
        },
        {
            name: 'page/cart',
            exclude: [
                'requirelib',
                'zepto',
                'common'
            ]
        },
        {
            name: 'page/neworder',
            exclude: [
                'requirelib',
                'zepto',
                'common'
            ]
        },
        {
            name: 'page/address',
            exclude: [
                'requirelib',
                'zepto',
                'common'
            ]
        },
        {
            name: 'page/addresslist',
            exclude: [
                'requirelib',
                'zepto',
                'common'
            ]
        },
        {
            name: 'page/order-processing',
            exclude: [
                'requirelib',
                'zepto',
                'common'
            ]
        },
        {
            name: 'page/order-cancel',
            exclude: [
                'requirelib',
                'zepto',
                'common'
            ]
        },
        {
            name: 'page/order-done',
            exclude: [
                'requirelib',
                'zepto',
                'common'
            ]
        },
        {
            name: 'page/feedback',
            exclude: [
                'requirelib',
                'zepto',
                'common'
            ]
        },
        {
            name: 'page/sender',
            exclude: [
                'requirelib',
                'zepto',
                'common'
            ]
        }



    ]

});