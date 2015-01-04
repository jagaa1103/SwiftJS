
function hello(){
    try {
        var message = {"count":"Hello Jagaa"}
        window.webkit.messageHandlers.toSwift.postMessage(message)
    } catch(err) {
        console.log('The native context does not exist yet');
    }
}

//setTimeout(function () {
//    toSwift();
//}, 5000);

function redHeader(){
    document.querySelector('h1').style.color = "red";
}