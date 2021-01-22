// Managing category data
const mealCategories = document.querySelector('#meal-categories');
const mealCategoriesData = JSON.parse(mealCategories.dataset.mealCategories);
console.log(mealCategoriesData);
mealCategoriesData.forEach(function (category) {
  console.log(category.name.toLowerCase());
});

const render = () => {
  mealIndexContent.addEventListener('click', function (e) {
    const selectedContent = allContent.innerHTML;
    console.log(selectedContent);
    mealIndexContent.innerHTML = '';
    mealIndexContent.insertAdjacentHTML('beforebegin', selectedContent);
  });
};

// --------------------------CATEGORY SELECT---------------------------
// Selecting dom
const mealIndexContent = document.querySelector('.meal-index-content');
const selectMealCategory = document.querySelector('#meal_categories');
const categoriesArr = Array.from(selectMealCategory.options);
// Storing Dom Elements
const categoryDomTemplate = {};
categoriesArr.forEach(c => {
  categoryDomTemplate[`${c.value}`] = document.querySelector(`#${c.value}`);
});
// Listening user interaction with filter
selectMealCategory.addEventListener('change', e => {
  // Geting selected value
  console.log(categoryDomTemplate.tapas);

  const selectedCategoryValue =
    selectMealCategory.options[selectMealCategory.selectedIndex].value;
  // Rendering
  mealIndexContent.innerHTML = '';
  mealIndexContent.insertAdjacentHTML(
    'afterbegin',
    categoryDomTemplate[selectedCategoryValue].outerHTML
  );
});
