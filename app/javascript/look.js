document.addEventListener('DOMContentLoaded', function() {
    if (document.getElementById("error_explanation")) {
        document.getElementById("add-look-modal").style.display = "block";
    }

    document.getElementById('add-look-open-modal-button').addEventListener('click', function() {
      document.getElementById('add-look-modal').style.display = 'block';
    });
  
    document.getElementById('add-look-close-modal-button').addEventListener('click', function() {
      document.getElementById('add-look-modal').style.display = 'none';
    });
});