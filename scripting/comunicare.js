
function scrollIt() {
    var box = document.getElementById("scroly");
      box.scrollTop = box.scrollHeight;
}

function appendMessage()
   {

            var chat = document.getElementById("scroly");
            var continutTextarea = document.getElementById("textToAppend").value;
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
               if (event.keyCode == 13)
               {
                 if (event.shiftKey === false)
                 {
                     appendMessage();
                     eventEnter.preventDefault();
                 }
              }
              return false;
            }
