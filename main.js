document.addEventListener('DOMContentLoaded', function() {
    console.log('AI Opportunity Web App Loaded');

    // Example of a simple interactive feature
    const opportunityLinks = document.querySelectorAll('.opportunity-link');
    opportunityLinks.forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            alert('You clicked on: ' + this.textContent);
            // In a real app, this would navigate or show details dynamically
        });
    });
});


