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