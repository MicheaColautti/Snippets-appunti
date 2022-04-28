window.addEventListener("devicemotion", handleMotion, true);

function handleMotion(event) {
    var acc = event.acceleration.z;
    document.getElementById("test").innerHTML = acc;
    alert(acc);

}

function getZ() {
    alert("cazzinculo");
    alert("succhiamelo: " + event);
    alert("succhiamelo: " + event.acceleration);
    alert("succhiamelo: " + event.acceleration.z);
    //alert(event.acceleration.z);
}

function permission() {
    if (typeof(DeviceMotionEvent) !== "undefined" && typeof(DeviceMotionEvent.requestPermission) === "function") {
        // (optional) Do something before API request prompt.
        DeviceMotionEvent.requestPermission()
            .then(response => {
                // (optional) Do something after API prompt dismissed.
                if (response == "granted") {
                    window.addEventListener("devicemotion", (e) => {
                        // do something for 'e' here.
                    })
                }
            })
            .catch(console.error)
    } else {
        alert("DeviceMotionEvent is not defined");
    }
}
const btn = document.getElementById("request");
btn.addEventListener("click", permission);