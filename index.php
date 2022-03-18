<!DOCTYPE html>
<html>
<head>
	<title>maurice-Dependent-Drop-List</title>
  <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="icon" href="img/fav-icon.png" type="image/x-icon"/>
</head>
<body>
  <script src="jquery.main.js" type="text/javascript"></script>


  <!-----------Loader-------------->
     <div class="loader hidden">
    <img src="img/loader/loader.gif" alt="Loading...">
    <script type="text/javascript">
      window.addEventListener("load", function(){

        const loader = document.querySelector(".loader")
        loader.className +=" hidden"; //class "loader.hidden"
      })

    </script>
  </div>
  <!-----------Loader Ends Here---->



<div class="form">
    <h2>Dependent Drop-List
      <p>
      Sample_For_Project_Use(Kenyan Counties, Constituencies & Wards)
    </p>
    </h2>
    <div class="row">
      <label>County:</label><br>
      <select class="InputBox counties">
        <option value="">Select County</option>       
      </select>
    </div>
    <div class="row">
      <label>Constituency:</label><br>
      <select class="InputBox constituencies">
        <option value="">Select Constituency</option>
      </select>
    </div>
    <div class="row">
      <label>Ward:</label><br>
      <select class="InputBox wards">
        <option value="">Select Ward</option>
      </select>
    </div>
  </div>
</body>
</html>

<div class="div">
  
</div>

<script type="text/javascript">
	
  $(document).ready(function(){


    /*Get the county list */

      $.ajax({
        type: "GET",
        url: "get_counties.php",
        data:{id:$(this).val()}, 
        beforeSend :function(){
      $('.counties').find("option:eq(0)").html("Please wait..");
        },                         
        success: function (data) {
          /*get response as json */
           $('.counties').find("option:eq(0)").html("Select County");
          var obj=jQuery.parseJSON(data);
          $(obj).each(function()
          {
           var option = $('<option />');
           option.attr('value', this.value).text(this.label);           
           $('.counties').append(option);
         });  

          /*ends */
          
        }
      });



    /*Get the Constituency list */


    $('.counties').change(function(){
      $.ajax({
        type: "POST",
        url: "get_constituencies.php",
        data:{id:$(this).val()}, 
        beforeSend :function(){
      $(".constituencies option:gt(0)").remove(); 
      $(".wards option:gt(0)").remove(); 
      $('.constituencies').find("option:eq(0)").html("Please wait..");

        },                         
        success: function (data) {
          /*get response as json */
           $('.constituencies').find("option:eq(0)").html("Select Constituency");
          var obj=jQuery.parseJSON(data);
          $(obj).each(function()
          {
           var option = $('<option />');
           option.attr('value', this.value).text(this.label);           
           $('.constituencies').append(option);
         });  

          /*ends */
          
        }
      });
    });




    /*Get the Wards list */


    $('.constituencies').change(function(){
      $.ajax({
        type: "POST",
        url: "get_wards.php",
        data:{id:$(this).val()}, 
          beforeSend :function(){
   
      $(".wards option:gt(0)").remove(); 
      $('.wards').find("option:eq(0)").html("Please wait..");

        },  

        success: function (data) {
          /*get response as json */
            $('.wards').find("option:eq(0)").html("Select Ward");

          var obj=jQuery.parseJSON(data);
          $(obj).each(function()
          {
           var option = $('<option />');
           option.attr('value', this.value).text(this.label);
           $('.wards').append(option);
         });  
          
          /*ends */
          
        }
      });
    });




  });

</script>

