'use strict';

var React = require('react');
//var ReactNative = require('react-native');

exports.createElementOneChild = function (class_) {
    return function(props) {
        return function(child){
            return React.createElement(class_, props, child);
        };
    };
};
