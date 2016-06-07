var pagenr = 0;
function start() {
	loadDoc();
	loadMembers();
	loadPosts();
	loadMyHObbies();
	loadAllHObbies();
	postHobby();
	addNewHobby();
	share();
	approveHobby();
	deleteHobby();
}

document.getElementById("textSize").onchange = function() {
	changeTextSize();
};

function addUserToHobby() {
	var xhr = new XMLHttpRequest();
	var url = 'http://localhost:8017/onlinehobby/AddUser?hobby=';
	url += window.location.pathname;
	xhr.open('GET', url);
	xhr.onload = function() {
		if (xhr.status == 200) {
			if (xhr.responseText.substring(0, 4).localeCompare("true") == 0) {
				window.location = window.location.pathname;
			} else {
				document.getElementById("addButton").innerHTML = "Error,retry";
			}
		} else {// eroare
			document.getElementById("addButton").innerHTML = "Error,retry";
		}
	};
	xhr.send();
}

function changeTextSize() {
	var myElements = document.querySelectorAll(".styleText");

	for (var i = 0; i < myElements.length; i++) {
		myElements[i].style.fontSize = document.getElementById('textSize').value
				+ "px";
	}
	document.getElementById('textToAppend').style.fontSize = document
			.getElementById('textSize').value
			+ "px";
}

function appendMessage() {

	var chat = document.getElementById("scroly");
	var continutTextarea = document.getElementById("textToAppend").value;

	if (continutTextarea.length == 0) {
		return;
	}
	;

	if (continutTextarea != '\n') {
		var paragraf = document.createElement("pre");
		var node = document.createTextNode(continutTextarea);
		paragraf.appendChild(node);

		chat.insertBefore(paragraf, chat.firstChild);
		document.getElementById("textToAppend").value = "";
	} else {
		document.getElementById("textToAppend").value = "";
	}
}

function enterPressed(eventEnter) {
	if (event.keyCode === 13) {
		if (event.shiftKey === false) {
			postMessage();
			event.preventDefault;
		}
		document.getElementById("textToAppend").value = "";
		event.preventDefault;
	}
	return false;
}

function enterPressedGroup(eventEnter) {
	if (event.keyCode === 13) {
		if (event.shiftKey === false) {
			postMessageGroup();
			event.preventDefault;
		}
		document.getElementById("textToAppend").value = "";
		event.preventDefault;
	}
	return false;
}

function lessFunctionOLDY() {
	var buttonLess = document.getElementById("buttonLess");
	var buttonMore = document.getElementById('btnNextHobby');
	var container = document.getElementById('hobbies');
	while (container.hasChildNodes()) {
		container.removeChild(container.lastChild);
	}
	container.appendChild(buttonLess);

	container.appendChild(buttonMore);
}

function lessFunction() {
	if (pagenr === 0)
		return;
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("hobbies").innerHTML = xhttp.responseText;
		}
	};
	pagenr = parseInt(pagenr) - 1;
	if (pagenr === -1)
		pagenr = 0;
	if (pagenr === -2)
		pagenr = 0;
	var url = "http://localhost:8017/onlinehobby/RecomandedHobby?page="
			+ pagenr;
	xhttp.open("GET", url, true);
	xhttp.send();
}

function moreFunction() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			if (parseInt(xhttp.responseText.length) == 202) {
				pagenr = parseInt(pagenr) - 1;
				return false;
			} else {
				document.getElementById("hobbies").innerHTML = xhttp.responseText;
			}
		}
	};
	pagenr = parseInt(pagenr) + 1;
	var url = "http://localhost:8017/onlinehobby/RecomandedHobby?page="
			+ pagenr;
	url = url + "&hobby=" + window.location.pathname;
	xhttp.open("GET", url, true);
	xhttp.send();
}

function loadDoc() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			{
				document.getElementById("hobbies").innerHTML = xhttp.responseText;
			}
		}
	};
	var url = "http://localhost:8017/onlinehobby/RecomandedHobby?page=0&hobby=";
	url = url + window.location.pathname;
	xhttp.open("GET", url, true);
	xhttp.send();
}

function postMessage() {
	var continutTextarea = document.getElementById("textToAppend").value;
	if (continutTextarea != '\n') {
		var xmlhttp = new XMLHttpRequest();
		var url = "http://localhost:8017/onlinehobby/Shout?hobby=";
		url += window.location.pathname;
		xmlhttp.open("POST", url, true);
		xmlhttp.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded");
		var nameText = escape(document.getElementById("textToAppend").value);
		document.getElementById("textToAppend").value = "";
		xmlhttp.send("nume=" + nameText);
	} else
		document.getElementById("textToAppend").value = "";
}

function postMessageGroup() {
	var continutTextarea = document.getElementById("textToAppend").value;
	if (continutTextarea != '\n') {
		var xmlhttp = new XMLHttpRequest();
		var url = "http://localhost:8017/onlinehobby/ShoutGroup?group=";
		url += window.location.pathname;
		xmlhttp.open("POST", url, true);
		xmlhttp.setRequestHeader("Content-Type",
				"application/x-www-form-urlencoded");
		var nameText = escape(document.getElementById("textToAppend").value);
		document.getElementById("textToAppend").value = "";
		xmlhttp.send("nume=" + nameText);
	} else
		document.getElementById("textToAppend").value = "";
}

var messagesWaiting = false;
function getMessages() {
		if (!messagesWaiting) {
			messagesWaiting = true;
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					messagesWaiting = false;
					var contentElement = document.getElementById("scroly");
					contentElement.innerHTML = xmlhttp.responseText
							+ contentElement.innerHTML;
				}
			}
			var url = "http://localhost:8017/onlinehobby/Shout?hobby="
					+ window.location.pathname + "&t=" + new Date();
			xmlhttp.open("GET", url, true);
			xmlhttp.send();
		}
}
setInterval(getMessages, 1000);


var messagesWaitingGroup = false;
function getMessagesGroup() {
	if (!messagesWaitingGroup) {
		messagesWaitingGroup = true;
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				messagesWaiting = false;
				var contentElement = document.getElementById("scroly");
				contentElement.innerHTML = xmlhttp.responseText
						+ contentElement.innerHTML;
			}
		}
		var url = "http://localhost:8017/onlinehobby/ShoutGroup?group="
				+ window.location.pathname + "&t=" + new Date();
		xmlhttp.open("GET", url, true);
		xmlhttp.send();
	}
}
setInterval(getMessagesGroup, 1000);

function loadMembers() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("members").innerHTML = xhttp.responseText;
		}
	};
	var url = "http://localhost:8017/onlinehobby/HobbysUsers?hobby=";
	url = url + window.location.pathname;
	xhttp.open("GET", url, true);
	xhttp.send();
}

function loadMembersGroup() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("members").innerHTML = xhttp.responseText;
		}
	};
	var url = "http://localhost:8017/onlinehobby/GroupUsers?group=";
	url = url + window.location.pathname;
	xhttp.open("GET", url, true);
	xhttp.send();
}

function loadGroupPosts() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("scroly").innerHTML = xhttp.responseText;
		}
	};
	var url = "http://localhost:8017/onlinehobby/LoadPostsGroups?group=";
	url = url + window.location.pathname;
	xhttp.open("GET", url, true);
	xhttp.send();
}

function loadPosts() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			document.getElementById("scroly").innerHTML = xhttp.responseText;
		}
	};
	var url = "http://localhost:8017/onlinehobby/LoadPosts?hobby=";
	url = url + window.location.pathname;
	xhttp.open("GET", url, true);
	xhttp.send();
}

function loadAllHObbies() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			{
				document.getElementById("hobbiuri").innerHTML = xhttp.responseText;
			}
		}
	};
	var url = "http://localhost:8017/onlinehobby/OurHobbies";
	xhttp.open("GET", url, true);
	xhttp.send();
}

function postHobby() {
	var iLikeHobby = document.getElementById("iLikeHobby").value;
	var reasons = document.getElementById("reasons").value;
	var number = 0;

	if (iLikeHobby.length < 1) {
		number++;
		document.getElementById("iLikeHobby").className = "wrong-input";
	} else {
		document.getElementById("iLikeHobby").className = "";
	}

	if (reasons.length < 1) {
		document.getElementById("reasons").className = "wrong-input";
		number++;
	} else {
		document.getElementById("reasons").className = "";
	}

	if (number == 0) {
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				{
					var response = xhttp.responseText;

					switch (response) {
					case "false":
						// eroare, setez true la visibility
						document.getElementById("error").style.visibility = "visible";
						break;
					case "true without add hobby":
						// messages
						var message = xhttp.getResponseHeader("message");
						var newItem = document.createElement("li"); // Create a
						// <li> node
						newItem.innerHTML += message;

						var listOfPostari = document
								.getElementById("comments-list");

						listOfPostari
								.insertBefore(
										newItem,
										listOfPostari.firstChild.nextSibling.nextSibling);

						break;
					case "true with add hobby":
						// hobby message
						var hobby = xhttp.getResponseHeader("hobby");
						document.getElementsByClassName("hobbies")[0].innerHTML += hobby;

						var message = xhttp.getResponseHeader("message");
						var newItem = document.createElement("li"); // Create a
						// <li> node
						newItem.innerHTML += message;

						var listOfPostari = document
								.getElementById("comments-list");

						listOfPostari
								.insertBefore(
										newItem,
										listOfPostari.firstChild.nextSibling.nextSibling);

						break;
					case "true with new hobby":
						var url = xhttp.getResponseHeader("redirect");
						url += "?hobbyName=" + iLikeHobby
						window.location = url;
						localStorage.setItem("iLikeHobby", iLikeHobby);
						localStorage.setItem("reasons", reasons);
						break;
					}
				}
			}
		};
		var url = "http://localhost:8017/onlinehobby/iLikeHobby";
		xhttp.open("POST", url, true);
		xhttp.setRequestHeader('iLikeHobby', iLikeHobby);
		xhttp.setRequestHeader('reasons', reasons);
		xhttp.send();
	}
}

function addNewHobby() {
	var HobbyDescription = document.getElementById("HobbyDescription").value;
	var HobbyVideo = document.getElementById("HobbyVideo").value;
	var HobbyURL = document.getElementById("HobbyURL").value;

	var expression = /[-a-zA-Z0-9@:%_\+.~#?&//=]{2,256}\.[a-z]{2,4}\b(\/[-a-zA-Z0-9@:%_\+.~#?&//=]*)?/gi;
	var regex = new RegExp(expression);

	var number = 0;

	if (HobbyDescription.length < 1) {
		number++;
		document.getElementById("HobbyDescription").className = "text_area_class_wrong";
	} else {
		document.getElementById("HobbyDescription").className = "text_area_class";
	}

	if (HobbyURL.match(regex)) {
		document.getElementById("HobbyURL").className = "dashed_class";
	} else {
		document.getElementById("HobbyURL").className = "dashed_class_wrong_input";
		number++;
	}

	if (HobbyVideo.match(regex)) {
		document.getElementById("HobbyVideo").className = "dashed_class";
	} else {
		document.getElementById("HobbyVideo").className = "dashed_class_wrong_input";
		number++;
	}

	if (number == 0) {
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				{

					var newItem = document.createElement("div"); // Create a
					var list = document.getElementById("container-content");

					switch (xhttp.getResponseHeader("response")) {
					case "true":
						var message = "<p style=\"color:green;margin-left:5%;margin-bottom:5%;\">The hobby was added successfully<p>";
						newItem.innerHTML += message;
						break;

					case "false":
						var message = "<p style=\"color:red;margin-left:5%;margin-bottom:5%;\There has been a problem, please try again<p>";
						newItem.innerHTML += message;
						break;
					}

					list.insertBefore(newItem, list.firstChild);

					window.setTimeout(function() {
						window.location = xhttp.getResponseHeader("redirect");
					}, 5000);
				}
			}
		};
		var url = "http://localhost:8017/onlinehobby/MakeHobby";
		xhttp.open("POST", url, true);
		var iLikeHobby = window.localStorage.getItem("iLikeHobby");
		xhttp.setRequestHeader("iLikeHobby", iLikeHobby);
		window.localStorage.removeItem("iLikeHobby");
		var reasons = window.localStorage.getItem("reasons");
		xhttp.setRequestHeader("reasons", reasons);
		window.localStorage.removeItem("reasons");
		xhttp.setRequestHeader("HobbyDescription", HobbyDescription);
		xhttp.setRequestHeader("HobbyVideo", HobbyVideo);
		xhttp.setRequestHeader("HobbyURL", HobbyURL);
		xhttp.send();
	}
}

function approveHobby() {

	var hobbyname = document.getElementById("hobbyInput").value;

	var hobbyID = document.getElementById("id" + hobbyname).innerHTML;
	var hobbyName = document.getElementById("NAMEnewHobby" + hobbyname).value;
	var hobbyDescription = document.getElementById("DESCnewHobby" + hobbyname).value;
	var hobbyImage = document.getElementById("IMGnewHobby" + hobbyname).value;
	var hobbyVideo = document.getElementById("VIDEOnewHobby" + hobbyname).value;

	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			{
				document.getElementById("servletResponse").innerHTML = xhttp.responseText;

				if (xhttp.responseText
						.localeCompare("The Hobby has been approved") == 0) {
					var element = document.getElementById("hobby" + hobbyname);

					element.parentNode.removeChild(element);
					document.getElementById("hobbyInput").value = "";

				}
			}
		}
	};

	if (hobbyname != "" && hobbyID != "" && hobbyname != ""
			&& hobbyDescription != "" && hobbyImage != "" & hobbyVideo != "") {
		var url = "http://localhost:8017/onlinehobby/adminValidation?hobbyID="
				+ hobbyID + "&hobbyName=" + hobbyName + "&hobbyDescription="
				+ hobbyDescription + "&hobbyImage=" + hobbyImage
				+ "&hobbyVideo=" + hobbyVideo;
		xhttp.open("GET", url, true);
		xhttp.send();
	}
}

function adminUser() {

	var inputUser = document.getElementById("inputUser").value;

	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			{
				document.getElementById("servletResponseAdmin").innerHTML = xhttp.responseText;

				if (xhttp.responseText
						.localeCompare("The admin approval has been successful") == 0) {
					var element = document.getElementById(inputUser);

					element.parentNode.removeChild(element);
					document.getElementById(inputUser).value = "";

				}
			}
		}
	};

	if (inputUser != "") {
		var url = "http://localhost:8017/onlinehobby/adminUser";
		xhttp.open("POST", url, true);
		xhttp.setRequestHeader("inputUser", inputUser);
		xhttp.send();
	}
}

function downloadLongPDFPopular() {
	window.open("http://localhost:8017/onlinehobby/admin/pdfBigPopular", "PDF");
}

function downloadShortPDFPopular() {
	window.open("http://localhost:8017/onlinehobby/admin/pdfShortPopular", "PDF");
}

function downloadCSVPopular() {
	window.open("http://localhost:8017/onlinehobby/admin/csvPopular", "CSV");
}

function downloadHTMLPopular() {
	window.open("http://localhost:8017/onlinehobby/admin/htmlPopular", "HTML");
}


function downloadLongPDFTime() {
	window.open("http://localhost:8017/onlinehobby/admin/pdfBigTime", "PDF");
}

function downloadShortPDFTime() {
	window.open("http://localhost:8017/onlinehobby/admin/pdfShortTime", "PDF");
}

function downloadCSVTime() {
	window.open("http://localhost:8017/onlinehobby/admin/csvTime", "CSV");
}

function downloadHTMLTime() {
	window.open("http://localhost:8017/onlinehobby/admin/htmlTime", "HTML");
}


function deleteHobby() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			{
				document.getElementById("servletResponse").innerHTML = xhttp.responseText;
			}
		}
	};
	var hobbyname = document.getElementById("hobbyInput").value;
	if (hobbyname != "") {
		xhttp.open("GET",
				"http://localhost:8017/onlinehobby/adminHobbyDeleting?deletedHobby="
						+ hobbyname, true);
		xhttp.send();
	}
}