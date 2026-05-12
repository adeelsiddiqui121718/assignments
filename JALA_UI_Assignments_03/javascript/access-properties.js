function hide(element) {
  element.style.display = "none";
}

function greet(msg) {
  console.log(msg + " " + this.name);
}
let obj = { name: "Adeel" };
greet.call(obj, "Hello");
greet.apply(obj, ["Hi"]);

let count = 0;
function increment() {
  count++;
  console.log(count);
}

let counter = {
  _val: 0,
  get val() {
    return this._val;
  },
  set val(v) {
    this._val = v;
  }
};
