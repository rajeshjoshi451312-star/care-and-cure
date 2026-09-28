// To-do
(function () {
  const $ = id => document.getElementById(id);

  let tasks=[];
  function renderTasks(){
    const ul=$('tl');ul.innerHTML='';
    tasks.forEach((t,i)=>{
      const li=document.createElement('li');if(t.done)li.className='done';
      const cb=document.createElement('input');cb.type='checkbox';cb.checked=t.done;
      cb.setAttribute('aria-label','Mark done: '+t.text);
      cb.onchange=()=>{t.done=cb.checked;renderTasks();};
      const s=document.createElement('span');s.textContent=t.text;
      const d=document.createElement('button');d.className='b';d.textContent='Delete';
      d.onclick=()=>{tasks.splice(i,1);renderTasks();};
      li.append(cb,s,d);ul.appendChild(li);
    });
    const left=tasks.filter(t=>!t.done).length;
    $('ts').textContent=tasks.length?`${left} of ${tasks.length} tasks left`:'No tasks yet. Add one above.';
  }
  function addTask(){
    const v=$('ti').value.trim();if(!v)return;
    tasks.push({text:v,done:false});$('ti').value='';renderTasks();$('ti').focus();
  }
  $('ta').onclick=addTask;
  $('ti').addEventListener('keydown',e=>{if(e.key==='Enter')addTask();});
})();
