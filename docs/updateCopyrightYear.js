document.addEventListener('DOMContentLoaded', function() {
    // Get the current year
    var currentYear = new Date().getFullYear();

    // Set the current year in the HTML
    document.getElementById('copyright-year').textContent = currentYear;
});