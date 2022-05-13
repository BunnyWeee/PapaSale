document.addEventListener('DOMContentLoaded', function(){
  var btnClick = document.querySelector('.google-out')

  function callTableOut() {
    var table = document.querySelector('.welcome-table')

    table.style.display = 'block'
  }

  btnClick.addEventListener('click', callTableOut)
})