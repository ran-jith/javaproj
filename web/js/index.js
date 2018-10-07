

function Quat()
{
    var q1 = "q1";
    var q2 = "q2";
    var q3 = "q3";
    var q4 = "q4";
    var q5 = "q5";
    var q6 = "q6"
    var chn = Math.floor(Math.random() * 6) + 0 ; 
    switch (chn) {
    case 0:
        document.getElementById("quats").innerHTML = q1;
        break;
    case 1:
        document.getElementById("quats").innerHTML = q2;
        break;
    case 2:
        document.getElementById("quats").innerHTML = q3;
        break;
    case 3:
        document.getElementById("quats").innerHTML = q4;
        break;
    case 4:
        document.getElementById("quats").innerHTML = q5;
        break;
    case 5:
        document.getElementById("quats").innerHTML = q6;
        break;
}
setTimeout(Quat, 5000);
}
Quat();