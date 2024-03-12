window.onload = () => {
    const formElements = ['donor_name', 'email', 'phone_number', 'amount'];

    formElements.forEach(id => {
        const element = document.getElementById(id);
        element.value = localStorage.getItem(id) || '';
        element.addEventListener('input', () => localStorage.setItem(id, element.value));
    });
}

document.addEventListener("DOMContentLoaded", () => {
    window.addEventListener('message', event => {
        if (event.data === 'payment_success') {
            console.log("Payment successful!");
            document.getElementById("donationForm").submit();
        } else {
            console.log("Payment failed!");
            alert("Payment process failed. Please try again.");
        }
    });

    document.getElementById("donateButton").addEventListener("click", event => {
        event.preventDefault();
        
        const paymentType = document.getElementById("payment_type").value;
        const pay = document.getElementById("amount").value;
        let dummyUrl = "";

        switch(paymentType) {
            case "paypal":
                dummyUrl = `http://localhost/nectarofservice/fundraiser/dummy_payment_interfaces/dummy_paypal_interface.php?pay=${pay}`;
                break;
            case "upi":
                dummyUrl = `http://localhost/nectarofservice/fundraiser/dummy_payment_interfaces/dummy_upi_interface.php?pay=${pay}`;
                break;
        }
        
        window.open(dummyUrl, "_blank");
        
        return false;
    });
});