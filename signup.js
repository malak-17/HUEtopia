document.getElementById("signupBtn").addEventListener("click", function () {
    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("confirmPassword").value;

    if (password !== confirmPassword) {
        alert("Passwords do not match!");
        return;
    }

    auth.createUserWithEmailAndPassword(email, password)
        .then((userCredential) => {
            const user = userCredential.user;
            return db.collection("users").doc(user.uid).set({
                email: email,
                filters: { red: 50, blue: 50, green: 50 } // Default values
            });
        })
        .then(() => {
            alert("Sign-up successful!");
            window.location.href = "login.html"; // Redirect to login page
        })
        .catch((error) => {
            alert(error.message);
        });
});
