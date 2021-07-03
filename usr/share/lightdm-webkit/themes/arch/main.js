var input = document.getElementById("input");
input.addEventListener("keydown", function (e) {
    if (e.keyCode === 13) {
        authenticate(e.target.value);
    }
});

window.authentication_complete = function() {
    if (lightdm.is_authenticated) {
        console.log("Authenticated!");
        $( 'body' ).fadeOut( 1000, () => {
            lightdm.login(lightdm.authentication_user, null);
        } );
    }
}

function pad(a, b) {
    return (1e15 + a + "").slice(-b);
}

function getImg() {
    document.getElementsByTagName('body')[0].style.backgroundImage = 
        "url(wallpapers/WelcomeHomeDark.png)";
}

window.onload = function() {
    getImg();
    input.focus();
    input.select();
}

function authenticate(input_text) {
    if(!lightdm.in_authentication) {
        lightdm.authenticate(input_text);
        input.value = "";
        input.type = "password";
        input.placeholder = "password";
    } else if(!lightdm.authentication_user) {
        lightdm.respond(input_text);
        input.value = "";
        input.type = "password";
        input.placeholder = "password";
    } else {
        lightdm.respond(input_text);
        input.value = "";
        input.type = "text";
        input.placeholder = "user";
    }
}
