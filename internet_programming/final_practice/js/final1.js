let num = prompt("수 입력: ");

function is_Prime(n) {
    if(n<2) return 0;
    for(let i=2; i<n; i++) {
        if(n % i == 0) {
            return 0;
        }
    }
    return 1;
}

if(is_Prime(num)) {
    document.getElementById("bg").style.backgroundColor="green";
    document.getElementById("bg").style.color="white";
}
else {
    document.getElementById("bg").style.backgroundColor="yellow";
    document.getElementById("bg").style.color="black";
}