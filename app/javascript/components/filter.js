const filter = () => {
  // -------------------------FILTER SELECT----------------------------
  // Selecting dom elements
  const categoryContent = document.querySelectorAll('.category-content');
  const selectMealFilters = document.querySelector('#meal_filters');
  const categorySelector = document.querySelectorAll('.category-selector');

  // Storing Dom Elements
  const mealDomTemplate = {};
  categorySelector.forEach(cs => {
    mealDomTemplate[cs.id] = cs.querySelectorAll('#meal-card');
  });
  selectMealFilters.addEventListener('change', e => {
    const selectedFilterValue =
      selectMealFilters.options[selectMealFilters.selectedIndex].value;
    categoryContent.forEach(cc => {
      // Rendering
      cc.innerHTML = '';
      mealDomTemplate[cc.parentElement.id].forEach(function (t) {
        t.classList.value.split(' ').includes(selectedFilterValue)
          ? cc.insertAdjacentHTML('afterbegin', t.parentElement.outerHTML)
          : '';
      });
    });
  });
};

export { filter };
