/**
 * Array.forEach implementation for IE support..
 * https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Array/forEach
 */
(function () {
    if (!Array.prototype.forEach) {
        Array.prototype.forEach = function (callback, thisArg) {
            var T, k;
            if (this == null) {
                throw new TypeError("This is null or not defined");
            }
            var obj = Object(this);
            /* Hack to convert O.length to a UInt32 */
            var len = obj.length >>> 0;
            if ({}.toString.call(callback) != "[object Function]") {
                throw new TypeError(callback + " is not a function");
            }
            if (thisArg) {
                T = thisArg;
            }
            k = 0;
            while (k < len) {
                var kValue;
                if (k in obj) {
                    kValue = obj[k];
                    callback.call(T, kValue, k, obj);
                }
                k++;
            }
        };
    }
})();
