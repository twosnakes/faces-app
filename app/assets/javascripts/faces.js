





document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      message: 'Hello Vue!',
      


      currentMouth: '',
      currentFace: '',
      currentEye: '',
      faceId: 0

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
                      eyes: this.currentEye

                      }

          var idOfFace = this.faceId

          $.ajax({
            url: '/api/v1/projects/' + idOfFace + '.json', 
            type: 'PATCH', 
            dataType: 'json', 
            data: params, 
            success: function(data) {
                                    console.log("FACE SAVED!");
                                    },
            error: function(e) {
                                console.log("ERROR");
                                }
          });            
      }
    },

    mounted: function(){
      var face = $(location).attr('href').split('/').splice(5,2);
      this.faceId = face[1];

      
      $.get('/api/v1/projects/' + this.faceId + '.json', function(data){
        console.log(data);
        this.currentMouth = data["mouth"];
        this.currentEye = data["eyes"];
        this.currentFace = data["face"];
      }.bind(this));

    },


   
  });
});


