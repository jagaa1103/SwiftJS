
function toSwift(){
    var message;
    try {
        message = "JS sent Hello Jagaa!";
        window.webkit.messageHandlers.toSwift.postMessage(message)
    } catch(err) {
        console.log("Native is not found!!!");
    }
}

function fromSwift(count){
    
    document.querySelector('h1').style.color = "blue";
    console.log("Swift sent count:" + count);

}