document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      message: 'Hello Vue!',
      currentMouth: ''
    },
    methods: {
      changeMouth: function(mouth) {
        this.currentMouth = mouth;
      }
    }
  });
});