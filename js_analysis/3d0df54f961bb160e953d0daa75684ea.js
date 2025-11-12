require([
    'jquery', 'mage/url'
], function ($, urlBuilder) {

    function getUrlParamVal(param) {
        var vars = {};
        window.location.href.replace(location.hash, '').replace(
            /[?&]+([^=&]+)=?([^&]*)?/gi, // regexp
            function (m, key, value) { // callback
                vars[key] = value !== undefined ? value : '';
            }
        );

        if (param) {
            return vars[param] ? vars[param] : null;
        }
        return vars;
    }

    $(document).ready(function () {
        var affiliateVal = getUrlParamVal('aw_affiliate');
        if (affiliateVal) {
            urlBuilder.setBaseUrl(BASE_URL);
            var requestUrl = urlBuilder.build('aw_affiliate/promo/checkLink');
            $.ajax({
                url: requestUrl,
                type: "POST",
                data: {aw_affiliate: affiliateVal},
                cache: false
            });
        }
    });
});
