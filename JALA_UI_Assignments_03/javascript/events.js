document.addEventListener("DOMContentLoaded", function() {
  const btn = document.getElementById("btn");
  if (btn) {
    btn.addEventListener("click", () => {
      alert(new Date());
    });
  }
});

function validate() {
  const txt = document.getElementById("txt");
  if (txt && txt.value === "") {
    alert("Empty!");
    return false;
  }
  return true;
}

document.cookie = "username=Adeel";
