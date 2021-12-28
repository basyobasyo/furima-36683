const pay = () => {
  Payjp.setPublicKey("pk_test_0d0d40287e70bc0f9f5cf6f3")
  const submit = document.getElementById("button");
  submit.addEventListener("click", (e) => {
    e.preventDefault();

    const formResult = document.getElementById("charge-form");
    const formData = new FormData(formResult);

    const card = {
      number: formData.get("buyer_address[number]"),
      exp_month: formData.get("buyer_address[exp_month]"),
      exp_year: `20${formData.get("buyer_address[exp_year]")}`,
      cvc: formData.get("buyer_address[cvc]"),
    };
  });
};

window.addEventListener("load", pay);