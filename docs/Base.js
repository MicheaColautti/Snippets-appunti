window.addEventListener("devicemotion", getZ, true);



function getZ() {

    alert("MAIUSC: " + Event)
    alert("tre: " + event.acceleration);
    alert("quattro: " + event.acceleration.z);
    //alert(event.acceleration.z);
}

function requestPermission() {
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