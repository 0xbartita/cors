var xhr = new XMLHttpRequest();
xhr.onreadystatechange = function() {
    if(xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
        alert(xhr.responseText);
    }
}
http://xhr.open('GET', 'https://api.latoken.com/api/v2/auth/user/details', true); 
xhr.withCredentials = true; 
xhr.send(null);
