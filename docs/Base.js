window.addEventListener("devicemotion", handleMotion, true);

function handleMotion(event) {
    var acc = event.acceleration.z;
    document.getElementById("test").innerHTML = acc;
    alert(acc);

}

function getZ() {


    alert(event.acceleration.z);
}