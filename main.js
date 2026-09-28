// Open / close app windows
(function () {
  const $ = id => document.getElementById(id);

  let openTile=null;
  document.querySelectorAll('.tile').forEach(t=>t.onclick=()=>{
    openTile=t;$('w-'+t.dataset.app).hidden=false;
    const f=$('w-'+t.dataset.app).querySelector('[data-close]');f.focus();
  });
  function closeAll(){
    document.querySelectorAll('.win').forEach(w=>w.hidden=true);
    if(openTile)openTile.focus();
  }
  document.querySelectorAll('[data-close]').forEach(b=>b.onclick=closeAll);
  document.addEventListener('keydown',e=>{if(e.key==='Escape')closeAll();});
})();
