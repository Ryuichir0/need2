const dashboard = () => {
  const need = document.querySelector("#need");
  const help = document.querySelector("#help");
  
  const div_need = document.getElementById("div_need");
  const div_help = document.getElementById("div_help");

  need.addEventListener("click", (event) => {
    div_need.classList.remove("d-none");
    div_help.classList.add("d-none");
  });

  help.addEventListener("click", (event) => {
    div_help.classList.remove("d-none");
    div_need.classList.add("d-none");
  });
}
export { dashboard }
