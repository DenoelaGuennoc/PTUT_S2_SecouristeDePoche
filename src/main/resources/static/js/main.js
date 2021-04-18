var content = document.querySelector('#hamburger-content');
var sidebarBody = document.querySelector('#hamburger-sidebar-body');
var button = document.querySelector('#hamburger-button');
var overlay = document.querySelector('#hamburger-overlay');
var activatedClass = 'hamburger-activated';


sidebarBody.innerHTML = content.innerHTML;


button.addEventListener('click', function(e){
    e.preventDefault();

    this.parentNode.classList.add(activatedClass);
    
});
console.log("cc");
button.addEventListener('keydown', function(e) {
    if (this.perentNode.classList.contains(activatedClass))
    {
        if(e.repeat === false && e.which === 27)  /* éviter les appuis longs    */
            this.parentNode.classList.remove(activatedClass);
    }
})

overlay.addEventListener('click', function(e) {
    e.preventDefault();

    this.parentNode.classList.remove(activatedClass);
});