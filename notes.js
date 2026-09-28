// Notes
(function () {
  const $ = id => document.getElementById(id);

  function count(){
    const v=$('nt').value,w=v.trim()?v.trim().split(/\s+/).length:0;
    $('ns').textContent=`${w} words, ${v.length} characters`;
  }
  $('nt').addEventListener('input',count);
  $('nu').onclick=()=>{$('nt').value=$('nt').value.toUpperCase();count();};
  $('nc').onclick=()=>{$('nt').value='';count();$('nt').focus();};
})();
