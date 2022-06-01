function valideaza() {
    check('name', 'name-message');
    check('email', 'email-message');
    check('text', 'text-message');
}

function check(inputId, messageId) {
    let r = document.getElementById(inputId).value;
    document.getElementById(messageId).style.visibility = (r == '') ? 'visible' : 'hidden';
}