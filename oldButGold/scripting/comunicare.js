
function scrollIt() {
    var box = document.getElementById("scroly");
      box.scrollTop = box.scrollHeight;
}

function appendMessage()
   {

            var chat = document.getElementById("scroly");
            var continutTextarea = document.getElementById("textToAppend").value;

            if (continutTextarea.length==0) {
               return;
            };

            if (continutTextarea !='\n')
            {
               var paragraf = document.createElement("pre");
   				var node = document.createTextNode(continutTextarea);
   				paragraf.appendChild(node);

               chat.insertBefore(paragraf, chat.firstChild);
   		   	/*var element = document.getElementById("scroly");
               alert("Hello World " + continutTextarea);
   				element.appendChild(paragraf);*/
   				document.getElementById("textToAppend").value="";
            }
            else
            {
               document.getElementById("textToAppend").value="";
            }
   }
   function enterPressed(eventEnter) {
               if (event.keyCode === 13 || event.keyCode===10)
               {
                 if (event.shiftKey === false)
                 {
                     appendMessage();
                     eventEnter.preventDefault;
                 }
              }
              return false;
            }
 function apeendAlert()
 {
   alert('You pressed the button');
 }

 function generateElementList()
 {
   var buttonMore = document.getElementById('btnNextHobby');
   var container = document.getElementById('hobbies');
   while (container.hasChildNodes()) {
                container.removeChild(container.lastChild);
            }
   for(i=0;i<3;i++)
      {
         var elChild = document.createElement('LI');
         var image = document.createElement('img');
         image.src = "http://static.ziarelive.ro/images/thumbs/2016-04/234/nationala-romaniei-a-coborat-3-trei-pozitii-in-clasamentul-fifa-topul-are-un-nou-lider-dupa-ce-belgia-a-cazut-pe-locul-doi.jpg";
         var header3 = document.createElement('h3');
         var text = document.createTextNode('Smoke On The Water');
         header3.appendChild(text);

         var p1 = document.createElement('p');
         var text = document.createTextNode('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent euismod ultrices ante, ac laoreet nulla vestibulum adipiscing. Nam quis justo in augue auctor imperdiet.');
         p1.appendChild(text);
   
         elChild.appendChild(image);
         elChild.appendChild(header3);
         elChild.appendChild(p1);

   container.appendChild(elChild);
      }
   container.appendChild(elChild);
   container.appendChild(buttonMore);
 }
    function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      document.getElementById("hobbies").innerHTML = xhttp.responseText;
    }
  };
  xhttp.open("GET", "ajax_info.html", true);
  xhttp.send();
 }