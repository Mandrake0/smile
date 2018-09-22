<view-capture>
<div>Capture</div>

<video id="player" controls autoplay></video>

<button onclick={ captureImage } id="capture">Capture</button>

<script>
// local 
var self = this

// Mixin
this.mixin(SharedMixin)

// local Variable


let player = ""
let canvas = ""
let captureButton = ""

const constraints = {
    video: true,
}

captureImage() {
// Draw the video frame to the canvas.
context.drawImage(player, 0, 0, 320, 240)
}


this.on('mount', function(){
    // Attach the video stream to the video element and autoplay.
    player = document.getElementById('player')
    canvas = document.getElementById('canvas')
    captureButton = document.getElementById('capture')
    console.log(player)
    navigator.mediaDevices.getUserMedia(constraints)
        .then((stream) => {
        self.player.srcObject = stream;
    })
})

</script>

</view-capture>