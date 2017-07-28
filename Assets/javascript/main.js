function validate() {
    var name, company, mobile, email, sparsePart, details;
    name = document.getElementById("txt_name").value;
    if (name == "") {
        alert("Name Field cannot be Empty");
        return false;
    }
    company = document.getElementById("txt_company").value;
    if (company == "") {
        alert("Company cannot be Empty");
        return false;
    }
    email = document.getElementById("txt_email").value;

    pattern = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
    if (email == "") {
        alert("Email can't be empty");
        return false;
    }

    if (!(pattern.test(email))) {
        alert("Enter a valid Email ID");
        return false;
    }
    sparsePart = document.getElementById("ddl_sparse_part").value;
    if (sparsePart == "") {
        alert("Select Sparse Part");
        return false;
    }

}



function mobileValidate(e) {
    var invalidcharacters = /[^0-9]/gi
    var phn = document.getElementById('txt_mob');
    if (invalidcharacters.test(phn.value)) {
        newstring = phn.value.replace(invalidcharacters, "");
        phn.value = newstring;
    }
    var mob = document.getElementById("txt_mob").value;
    if (mob.length > 10) {
        mob.length = 10;
        alert("Not more than 9 numbers");
        return false;
    }
}