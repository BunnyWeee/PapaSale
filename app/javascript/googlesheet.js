document.addEventListener('DOMContentLoaded', function() {
  var sendBtn = document.querySelector('.google-in')
  console.log('yooooooo')

  function sendDataToGoogleSheet() {
    var input = document.querySelector('.google-val').value
    $.ajax({
      type: 'GET',
      url: 'https://script.google.com/macros/s/AKfycby5NeskLp1BNLVqnoZSiL3kuEl_NlFwTfjFeN_v6M8Zc-aiTjtBOqY84QLS3qLZKDLNBw/exec',
      data: {
        "email": input
      },
      success: function(response) {
        console.log('data send success')
      }
    })
  }

  sendBtn.addEventListener('click', sendDataToGoogleSheet);
})
