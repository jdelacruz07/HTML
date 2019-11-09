function changeDiv() {
    var color_azul = document.getElementById("square");

    if (color_azul.checked) {
        document.getElementById("square").style.backgroundColor = "blue";
    } else {
        document.getElementById("square").style.backgroundColor = "red";
    }

    if (color_rojo.checked) {
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
        document.getElementById("cabecera").innerHTML = "Hola " + user + "!";
    }
}

function showLastName() {
    var lastName;
    lastName = document.getElementById("lastName").value;

    if (lastName == null || lastName == "") {
        alert("Ingresa un apellido");
    } else {
        alert("tu apellido es " + lastName);
        document.getElementById("cabecera").innerHTML = "Hola " + lastName + "!";
    }
}

function change2blue() {
    var colorActual = document.getElementById("lastName").style.backgroundColor;

    if (colorActual == "blue") {
        document.getElementById("apellido_1").style.backgroundColor = "beige";
    } else {
        document.getElementById("apellido_1").style.backgroundColor = "blue";
    }
}

function verifyData() {
    var validacion = true;
    var name = document.getElementById("nameForm")
    var lastName = document.getElementById("lastNameForm")
    var email = document.getElementById("emailForm")

    if (name.value == null || name.value == "") {
        validacion = false;
        name.style.backgroundColor = "red";
    }

    if (lastName.value == null || lastName.value == "") {
        validacion = false;
        lastName.style.backgroundColor = "yellow";
    }

    if (email.value == null || email.value == "") {
        validacion = false;
        email.style.backgroundColor = "yellow";
    }

    return validacion;
}

