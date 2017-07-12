document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      message: 'Hello Vue!',
      currentMouth: '',
      currentFace: '',
      currentEye: ''

    },
    methods: {
      changeMouth: function(mouth) {
        this.currentMouth = mouth;
      },

      changeFace: function(face) {
        this.currentFace = face;
      },

      changeEye: function(eye) {
        this.currentEye = eye;
      },
      

      saveFace: function() {
        var params = {
                      face: this.currentFace,
                      mouth: this.currentMouth,
                      eye: this.currentEye

                      }

                      
      }
    }
    
  });
});