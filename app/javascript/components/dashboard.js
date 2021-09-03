const dashboard = () => {
  const need = document.querySelector("#need");
  const help = document.querySelector("#help");
  const histo = document.querySelector('#historique');

  const needtitle = document.querySelector("#need");
  const helptitle = document.querySelector("#help");
  const histotitle = document.querySelector("#histo");

  const div_need = document.getElementById("div_need");
  const div_help = document.getElementById("div_help");
  const div_histo = document.getElementById('div_histo');

  need.addEventListener("click", (event) => {
    div_need.classList.remove("d-none");
    div_help.classList.add("d-none");
    div_histo.classList.add("d-none")

    needtitle.classList.add("title-toggle");
    helptitle.classList.remove("title-toggle");
    histotitle.classList.remove("title-togle");
  });

  help.addEventListener("click", (event) => {
    div_help.classList.remove("d-none");
    div_need.classList.add("d-none");
    div_histo.classList.add("d-none");
    needtitle.classList.remove("title-toggle");
    helptitle.classList.add("title-toggle");


  });
  histo.addEventListener("click", (event) => {
    div_help.classList.add("d-none");
    div_need.classList.add("d-none");
    div_histo.classList.remove("d-none");

    needtitle.classList.remove("title-toggle");
    helptitle.classList.remove("title-toggle");
    histotitle.classList.add("title-toggle");

  });
}
export { dashboard }
