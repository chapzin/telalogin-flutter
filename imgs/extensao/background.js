chrome.runtime.onInstalled.addListener(function (object) {
    if (object.reason === 'install') {
        chrome.tabs.create({ url: "https://www.fsist.com.br/" }, function (tab) {

        });
    }
});