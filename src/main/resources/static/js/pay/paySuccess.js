const price = localStorage.getItem('price');
const id = localStorage.getItem('id');
console.log(price);
localStorage.removeItem('price');
localStorage.removeItem('id');

const data = {
    price: price,
    id: id
};

const xhr = new XMLHttpRequest();
xhr.open('POST', '/kakaopay/success/donation');
xhr.setRequestHeader('Content-Type', 'application/json');
xhr.send(JSON.stringify(data));