function post (){
  const item_price = document.getElementById("item-price");
  item_price.addEventListener("keyup", () => {
    const tax = item_price.value * 0.1;
    const taxPrice = document.getElementById("add-tax-price");
    taxPrice.innerHTML = `${tax}`;

    const realPrice = item_price.value - (item_price.value * 0.1);
    const Profit = document.getElementById("profit");
    Profit.innerHTML = `${realPrice}`;
  });

}


window.addEventListener('load', post);