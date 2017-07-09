document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      message: 'Hello Vue!',
      currentMouth: '',
      currentFace: '',
      currentLeftEye: '',
      currentRightEye: ''

    },
    methods: {
      changeMouth: function(mouth) {
        this.currentMouth = mouth;
      },

      changeFace: function(face) {
        this.currentFace = face;
      },

      changeLeftEye: function(leftEye) {
        this.currentLeftEye = leftEye;
      },

      changeRightEye: function(rightEye) {
        this.currentRightEye = rightEye;
      }
     
      
      
    }
    
  });
});