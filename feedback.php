<?php  
	include_once 'assets/php/header.php';
?>
<div class="container">
  <div class="row justify-content-center text-center color-danger">
    <div class="col-lg-8 mt-3">
      <?php if ($verified == 'Verified!'): ?>
        <h2>We want to hear from you!</h2>
          <h3>Please provide us with your Feedback.</h3>
  

      <div class="card border-danger">
        <div class="card-header lead text-center bg-danger text-white">Send Feedback to admin.</div>
        <div class="card-body">
          <form action="#" method="post" class="px-4" id="feedback-form">
            <div class="form-group">
              <input type="text" name="subject" class="form-control-lg form-control rounded-0" placeholder="Please enter the Class Name here. (15 Words Max.)" required>
            </div>
            <div class="form-group">
              <textarea name="feedback" class="form-control-lg form-control rounded-0" rows="8" placeholder="Write your feedback here... (50 Words Maximum)" required></textarea>
            </div>
            <div class="form-group">
              <input type="submit" name="feedbackBtn" id="feedbackBtn" value="Send Feedback" class="btn btn-danger btn-block btn-lg rounded-0">
            </div>
          </form>
        </div>
      </div>
      <?php else: ?>
      <h1 class="text-center text-dark mt-5">To send feedback to Admin, verify your email please.</h1>
      <?php endif; ?>
    </div>
  </div>
</div>

<?php require_once 'assets/php/footer.php'; ?>
<script type="text/javascript">
$(document).ready(function() {

  // Checking user is logedin or not
  $.ajax({
    url: 'assets/php/action.php',
    method: 'post',
    data: {
      action: 'checkUser'
    },
    success: function(response) {
      if (response === 'bye') {
        window.location = 'index.php';
      }
    }
  });

  $("#feedbackBtn").click(function(e) {
    if ($("#feedback-form")[0].checkValidity()) {
      e.preventDefault();
      $("#feedbackBtn").val('Please Wait...');

      $.ajax({
        url: 'assets/php/process.php',
        method: 'post',
        data: $("#feedback-form").serialize() + '&action=feedback',
        success: function(response) {
          $("#feedback-form")[0].reset();
          $("#feedbackBtn").val('Send Feedback');
          Swal.fire({
            title: 'Feedback successfully sent to the admin!',
            type: 'success'
          });
        }
      });
    }
  });

  checkNotification();

  function checkNotification() {
    $.ajax({
      url: 'assets/php/process.php',
      method: 'post',
      data: {
        action: 'notificationCheck'
      },
      success: function(response) {
        $("#showNotificationCheck").html(response);
      }
    });
  }
});

</script>
<html>
  <head>
    <title>Title of the document</title>
    <style>
      .button {
        background-color: darkred;
        border: none;
        color: white;
        padding: 15px 25px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 12px;
        margin: 4px 2px;
        cursor: pointer;
        position: fixed;
    bottom: 10px;
    left: 50%;
    margin-left: -104.5px; /*104.5px is half of the button's width*/
      }
    </style>
  </head>
  <body>
    <a href="https://docs.google.com/document/d/1aaWDsmpl2Oi2U7GuGyhtiQ7WQYhG0hloqyk8lmdEEfs/edit?usp=sharing" class="button">Need Help?</a>
  </body>
</html>
