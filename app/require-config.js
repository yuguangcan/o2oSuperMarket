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
                'zepto'
            ]
        },
        {
            name: 'page/plist',
            exclude: [
                'requirelib',
                'zepto'
            ]
        }
    ]

});