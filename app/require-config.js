/*global requirejs*/

requirejs.config({

    paths: {
        
        // resources
        'requirelib': '../../bower_components/requirejs/require',
        'zepto': '../../bower_components/zepto/zepto'

    },

    shim: {
        'zepto':{
            exports : '$'
        }
        
        
    },

    modules: [
        {
            namespace: 'require',
            name: 'require',
            create: true,
            include: [
                'requirelib',
                'zepto'
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