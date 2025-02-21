document.getElementById("loginBtn").addEventListener("click", function () {
    const email = document.getElementById("loginEmail").value;
    const password = document.getElementById("loginPassword").value;

    auth.signInWithEmailAndPassword(email, password)
        .then((userCredential) => {
            alert("Login successful!");
            window.location.href = "4.html"; // Redirect to dashboard
        })
        .catch((error) => {
            alert(error.message);
        });
});
