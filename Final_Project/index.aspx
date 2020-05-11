<%@ Page Title="" Language="C#" MasterPageFile="~/bookStore.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
} 
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div class="container">
                <div class="mySlides">
                    <div class="numbertext">1 / 6</div>
                    <img src="images/picture1.jpg" style="width:100%"/>
                </div>
                <div class="mySlides">
                    <div class="numbertext">2 / 6</div>
                    <img src="images/picture2.jpg" style="width:100%"/>
                </div>
                <div class="mySlides">
                    <div class="numbertext">3 / 6</div>
                    <img src="images/picture3.jpg" style="width:100%"/>
                </div>
                <div class="mySlides">
                    <div class="numbertext">4 / 6</div>
                    <img src="images/picture4.jpg" style="width:100%"/>
                </div>
                <div class="mySlides">
                    <div class="numbertext">5 / 6</div>
                    <img src="images/picture5.jpg" style="width:100%"/>
                </div>
                <div class="mySlides">
                    <div class="numbertext">6 / 6</div>
                    <img src="images/picture6.jpg" style="width:100%"/>
                </div>
                <!-- Next and previous buttons -->
                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
                <!-- Image text -->
                <div class="caption-container">
                    <p id="caption"></p>
                </div>
                <!-- Thumbnail images -->
                <div class="row">
                    <div class="column">
                        <img class="demo cursor" src="images/picture1.jpg" style="width:100%; height:100px" onclick="currentSlide(1)" alt="The Library"/>
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="images/picture2.jpg" style="width:100%; height:100px" onclick="currentSlide(2)" alt="Reading"/>
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="images/picture3.jpg" style="width:100%;height:100px" onclick="currentSlide(3)" alt="More Reading"/>
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="images/picture4.jpg" style="width:100%;height:100px" onclick="currentSlide(4)" alt="Studying in the library"/>
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="images/picture5.jpg" style="width:100%;height:100px" onclick="currentSlide(5)" alt="Gotta love pictures of children reading"/>
                    </div>
                    <div class="column">
                        <img class="demo cursor" src="images/picture6.jpg" style="width:100%;height:100px" onclick="currentSlide(6)" alt="It's a library, any related images are basically the same, okay?"/>
                    </div>
                </div>

            </div>
    <h2 class="centered">Book of the Month</h2>
    <img src="images/book1.jpg" class="centered" style="width:200px; height:300px"/>

    <br />
    <br />
    <br />
    <br />
    <a href="editXml.aspx">Edit XML</a>

</asp:Content>

