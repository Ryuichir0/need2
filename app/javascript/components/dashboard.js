const dashboard = () => {
  const need = document.querySelector("#need");
  const help = document.querySelector("#help");
  const needtitle = document.querySelector("#need");
  const helptitle = document.querySelector("#help");

  const div_need = document.getElementById("div_need");
  const div_help = document.getElementById("div_help");

  need.addEventListener("click", (event) => {
    div_need.classList.remove("d-none");
    div_help.classList.add("d-none");
    needtitle.classList.add("title-toggle");
    helptitle.classList.remove("title-toggle");
  });

  help.addEventListener("click", (event) => {
    div_help.classList.remove("d-none");
    div_need.classList.add("d-none");
    needtitle.classList.remove("title-toggle");
    helptitle.classList.add("title-toggle");


  });
}
export { dashboard }
