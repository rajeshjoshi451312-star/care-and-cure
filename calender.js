// Calendar 2026
(function () {
  const $ = id => document.getElementById(id);

  const MONTHS=['January','February','March','April','May','June','July','August','September','October','November','December'];
  const now=new Date();
  let month=now.getFullYear()===2026?now.getMonth():0;
  MONTHS.forEach((m,i)=>{const o=document.createElement('option');o.value=i;o.textContent=m+' 2026';$('cm').appendChild(o);});
  function drawCal(){
    $('cm').value=month;
    const cal=$('cal');cal.innerHTML='';
    ['Sun','Mon','Tue','Wed','Thu','Fri','Sat'].forEach(d=>{const h=document.createElement('div');h.className='h';h.textContent=d;cal.appendChild(h);});
    const first=new Date(2026,month,1).getDay(),days=new Date(2026,month+1,0).getDate();
    for(let i=0;i<first;i++){const e=document.createElement('div');e.className='d e';cal.appendChild(e);}
    for(let d=1;d<=days;d++){
      const c=document.createElement('div');c.className='d';c.textContent=d;
      const dow=new Date(2026,month,d).getDay();
      if(dow===0)c.classList.add('w');
      if(now.getFullYear()===2026&&now.getMonth()===month&&now.getDate()===d){c.classList.add('t');c.setAttribute('aria-label','Today, '+d);}
      cal.appendChild(c);
    }
    $('cs').textContent=`${MONTHS[month]} 2026 has ${days} days.`;
    $('cp').disabled=month===0;$('cx').disabled=month===11;
  }
  $('cp').onclick=()=>{if(month>0){month--;drawCal();}};
  $('cx').onclick=()=>{if(month<11){month++;drawCal();}};
  $('cm').onchange=e=>{month=+e.target.value;drawCal();};
  drawCal();
})();
