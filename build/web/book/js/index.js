

function Quat()
{
    var q1 = "Bad libraries build collections, good libraries build services, great libraries build communities.";
    var q2 = "An original idea. That can’t be too hard. The library must be full of them.";
    var q3 = "Libraries will get you through times of no money better than money will get you through times of no libraries.";
    var q4 = "The truth is libraries are raucous clubhouses for free speech, controversy and community.";
    var q5 = "The most important asset of any library goes home at night the library staff.";
    var q6 = "In the nonstop tsunami of global information, librarians provide us with floaties and teach us to swim."
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