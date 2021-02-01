const filter = () => {
  // -------------------------FILTER SELECT----------------------------
  // Selecting dom elements
  const selectMealFilters = document.querySelector('#meal_filters');
  const mealTemplates = Array.from(document.querySelectorAll('.menu-template'));

  selectMealFilters.addEventListener('change', e => {
    const selectedFilterValue =
      selectMealFilters.options[selectMealFilters.selectedIndex].value;
    console.log(selectedFilterValue);
    mealTemplates[0].style = 'display:block';
    console.log(mealTemplates[0]);
    mealTemplates.forEach(mealTemplate => {
      // console.log(mealTemplate);
      if (mealTemplate.id == selectedFilterValue) {
        console.log(mealTemplate.id);
        console.log(selectedFilterValue);
        mealTemplate.style = 'display:block';
      } else {
        mealTemplate.style = 'display:none';
      }
    });
  });
};

export { filter };
