const review = () => {
  const button = document.getElementById("btn-dashboard");
  const div = document.querySelector("#div_review");

  button.addEventListener("click", (event) => {
    console.log(event);
    div.classList.toggle("d-none");
    button.classList.toggle("d-none");
  });

}
export { review }