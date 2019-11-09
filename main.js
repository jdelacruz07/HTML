"use strict";

function changeDiv() {
    var colorBlue = document.getElementById("square");

    if (colorBlue.checked) {
        document.getElementById("square").style.backgroundColor = "blue";
    } else {
        document.getElementById("square").style.backgroundColor = "red";
    }

    if (colorRed.checked) {
        document.getElementById("square").style.backgroundColor = "red";
    } else {
        document.getElementById("square").style.backgroundColor = "blue";
    }
}

function showUser() {
    var user;
    user = document.getElementById("nameUser").value;

    if (user == null || user == "") {
        alert("Ingresa un nombre");
    } else {
        alert("tu nombre es " + user);
        document.getElementById("mainHeader").innerHTML = "Hola " + user + "!";
    }
}

function showLastName() {
    var lastName;
    lastName = document.getElementById("lastName").value;

    if (lastName == null || lastName == "") {
        alert("Ingresa un apellido");
    } else {
        alert("tu apellido es " + lastName);
        document.getElementById("mainHeader").innerHTML = "Hola " + lastName + "!";
    }
}

function change2blue() {
    var colorActual = document.getElementById("lastName").style.backgroundColor;

    if (colorActual == "blue") {
        document.getElementById("lastName").style.backgroundColor = "beige";
    } else {
        document.getElementById("lastName").style.backgroundColor = "blue";
    }
}

function verifyData() {
    var validation = true;
    var name = document.getElementById("nameForm")
    var lastName = document.getElementById("lastNameForm")
    var email = document.getElementById("emailForm")

    if (name.value == null || name.value == "") {
        validation = false;
        name.style.backgroundColor = "red";
    }

    if (lastName.value == null || lastName.value == "") {
        validation = false;
        lastName.style.backgroundColor = "yellow";
    }

    if (email.value == null || email.value == "") {
        validation = false;
        email.style.backgroundColor = "yellow";
    }

    return validation;
}

