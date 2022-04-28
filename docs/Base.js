window.addEventListener("devicemotion", getZ, true);



function getZ() {

    var x = event.acceleration.x;
    var y = event.acceleration.y;
    var z = event.acceleration.z;

    console.log("X:" + x);
    console.log("Y:" + y);
    console.log("Z:" + z);
    //alert(event.acceleration.z);
}

function requestPermission() {
    if (typeof(DeviceMotionEvent) !== "undefined" && typeof(DeviceMotionEvent.requestPermission) === "function") {
        DeviceMotionEvent.requestPermission()
            .then(response => {
                if (response == "granted") {
                    window.addEventListener("devicemotion", (e) => {
                        console.log("ZZZZZZZ:" + e.acceleration.z)
                    })
                }
            })
            .catch(console.error)
    } else {
        alert("DeviceMotionEvent is not defined");
    }
}