<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>CARECOUNT – Sign in</title>
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,500;9..144,600&family=DM+Sans:wght@400;500;600&display=swap" rel="stylesheet">
<style>
:root{--navy:#14213d;--navy2:#22335c;--cream:#f8f4ec;--card:#fffdf9;--wine:#7a2e3f;--ink:#1d2433;--muted:#6b7385;--line:#e4ddd0;--err:#8a3a3a;--errbg:#f7ebe6;--sh:0 10px 40px rgba(20,33,61,.09);
box-sizing:border-box;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}
:root:not([data-theme="light"]){color-scheme:light}
html{height:100%;scroll-padding-top:env(safe-area-inset-top,0px)}
*{box-sizing:border-box}
body{margin:0;background:var(--cream);color:var(--ink);font:16px/1.5 "DM Sans",system-ui,sans-serif;min-height:100%}
.shell{display:grid;grid-template-columns:1fr;min-height:100vh}
.brand{background:var(--navy);color:#fff;padding:28px 24px 24px;position:relative;overflow:hidden}
.logo{font-family:Fraunces,Georgia,serif;font-weight:600;font-size:26px;letter-spacing:.06em;margin:0}
.tag{font-family:Fraunces,Georgia,serif;font-size:20px;color:#e9d5d9;margin:6px 0 0}
.lede,.viz{display:none}
.pane{display:flex;align-items:center;justify-content:center;padding:24px 16px 40px}
.card{background:var(--card);border-radius:22px;box-shadow:var(--sh);padding:28px 22px;width:100%;max-width:420px;border:1px solid var(--line)}
h1{font-family:Fraunces,Georgia,serif;font-weight:600;font-size:28px;line-height:1.15;margin:0 0 6px;color:var(--navy)}
.sub{color:var(--muted);margin:0 0 22px}
.field{margin-bottom:14px}
label{display:block;font-size:14px;font-weight:500;margin-bottom:6px}
.inp{position:relative}
input[type=email],input[type=password],input[type=text]{width:100%;height:50px;border:1px solid var(--line);border-radius:12px;padding:0 14px;font:inherit;background:#fff;color:var(--ink)}
input:focus-visible,button:focus-visible,a:focus-visible{outline:3px solid rgba(122,46,63,.35);outline-offset:2px}
input[aria-invalid=true]{border-color:#c98a80;background:#fffaf8}
.eye{position:absolute;right:4px;top:4px;width:42px;height:42px;border:0;background:none;color:var(--muted);cursor:pointer;border-radius:10px;display:grid;place-items:center}
.msg{font-size:13.5px;color:var(--err);margin:6px 2px 0;min-height:0}
.msg:empty{display:none}
.banner{background:var(--errbg);color:var(--err);border-radius:12px;padding:11px 14px;font-size:14px;margin-bottom:14px}
.banner:empty{display:none}
.banner.ok{background:#eaf1ea;color:#2f5a3a}
.row{display:flex;justify-content:space-between;align-items:center;gap:12px;margin:4px 0 18px;font-size:14px}
.chk{display:flex;gap:10px;align-items:center;font-weight:400;margin:0;cursor:pointer}
.chk input{width:18px;height:18px;accent-color:var(--wine);margin:0}
a,.link{color:var(--wine);font-weight:500;text-decoration:none;background:none;border:0;padding:0;font:inherit;font-weight:500;cursor:pointer}
a:hover,.link:hover{text-decoration:underline}
.btn{width:100%;height:52px;border-radius:14px;font:inherit;font-weight:600;cursor:pointer;display:flex;align-items:center;justify-content:center;gap:10px;border:1px solid transparent}
.primary{background:var(--navy);color:#fff}.primary:hover{background:var(--navy2)}
.ghost{background:#fff;border-color:var(--line);color:var(--ink)}.ghost:hover{background:#f6f1e8}
.demo{background:transparent;border:1px dashed #cdbfae;color:var(--wine);height:46px;margin-top:10px;font-weight:500}
.demo:hover{background:#f6ecec}
.or{display:flex;align-items:center;gap:12px;color:var(--muted);font-size:13.5px;margin:18px 0}
.or:before,.or:after{content:"";flex:1;height:1px;background:var(--line)}
.foot{text-align:center;margin:20px 0 0;color:var(--muted);font-size:15px}
.view{display:none}.view.on{display:block}
#dash{display:none;min-height:100vh;padding:40px 20px;text-align:center}
#dash.on{display:block}
#dash .card{margin:8vh auto 0;max-width:520px}
@media(min-width:900px){
.shell{grid-template-columns:1.05fr 1fr}
.brand{padding:56px 64px;display:flex;flex-direction:column;justify-content:center}
.logo{font-size:34px}.tag{font-size:30px;margin-top:10px}
.lede{display:block;max-width:440px;color:#c9d0e2;font-size:18px;margin:22px 0 0}
.viz{display:block;margin-top:44px;max-width:460px}
.card{padding:40px 38px}h1{font-size:32px}
}
@media(prefers-reduced-motion:no-preference){.viz .pulse{animation:p 4s ease-in-out infinite;transform-origin:center;transform-box:fill-box}@keyframes p{50%{opacity:.55}}}
</style>
</head>
<body>
<div class="shell" id="auth">
<section class="brand">
<h2 class="logo">CARECOUNT</h2>
<p class="tag">Making invisible work count.</p>
<p class="lede">Track the everyday work that keeps a household running, understand your workload, and make responsibilities easier to share.</p>
<svg class="viz" viewBox="0 0 460 300" role="img" aria-label="Cooking, caregiving, cleaning, planning and errands connected around one household">
<g stroke="#e9d5d9" stroke-opacity=".35" stroke-width="1.5" fill="none">
<path d="M230 150 L80 70"/><path d="M230 150 L380 70"/><path d="M230 150 L70 230"/><path d="M230 150 L390 230"/><path d="M230 150 L230 30"/>
<path d="M80 70 Q150 20 230 30" stroke-dasharray="3 5"/><path d="M230 30 Q310 20 380 70" stroke-dasharray="3 5"/><path d="M70 230 Q230 290 390 230" stroke-dasharray="3 5"/>
</g>
<circle class="pulse" cx="230" cy="150" r="46" fill="#7a2e3f" fill-opacity=".35"/>
<circle cx="230" cy="150" r="30" fill="#7a2e3f"/>
<path d="M215 152 l15 -13 l15 13 v13 h-30z" fill="none" stroke="#fff" stroke-width="2.2" stroke-linejoin="round"/>
<g fill="#22335c" stroke="#e9d5d9" stroke-opacity=".6" stroke-width="1.5">
<circle cx="80" cy="70" r="26"/><circle cx="380" cy="70" r="26"/><circle cx="70" cy="230" r="26"/><circle cx="390" cy="230" r="26"/><circle cx="230" cy="30" r="26"/></g>
<g fill="#f8f4ec" font-size="12" text-anchor="middle" font-family="DM Sans,sans-serif">
<text x="80" y="108">Cooking</text><text x="380" y="108">Caregiving</text><text x="70" y="268">Cleaning</text><text x="390" y="268">Planning</text><text x="230" y="76" dy="8" opacity="0"> </text></g>
<g fill="#f8f4ec" font-size="12" text-anchor="middle" font-family="DM Sans,sans-serif"><text x="230" y="-4" opacity="0">.</text></g>
<g stroke="#f8f4ec" stroke-width="1.8" fill="none" stroke-linecap="round" stroke-linejoin="round">
<path d="M70 70h20M74 70v-8h12v8M72 62c0-4 4-4 4-8"/>
<path d="M380 78c-10-6-10-16-2-16 3 0 2 3 2 4 0-1-1-4 2-4 8 0 8 10-2 16z"/>
<path d="M62 232l16-16M76 214l6 6M60 240l4 4"/>
<path d="M380 222h20v16h-20zM380 228h20M386 218v6M394 218v6"/>
<path d="M222 22h16v16h-16zM226 30l3 3 5-6"/></g>
<text x="230" y="76" fill="#f8f4ec" font-size="12" text-anchor="middle" font-family="DM Sans,sans-serif">Errands</text>
<text x="230" y="222" fill="#c9d0e2" font-size="12" text-anchor="middle" font-family="DM Sans,sans-serif">One household</text>
</svg>
</section>

<section class="pane"><div class="card">

<div class="view on" id="login">
<h1>Welcome back</h1><p class="sub">Sign in to continue to CARECOUNT.</p>
<form data-form="login" novalidate>
<div class="banner" data-banner role="alert"></div>
<div class="field"><label for="l-email">Email address</label><input id="l-email" name="email" type="email" autocomplete="email" placeholder="you@example.com"><div class="msg" data-msg="email"></div></div>
<div class="field"><label for="l-pw">Password</label><div class="inp"><input id="l-pw" name="pw" type="password" autocomplete="current-password"><button type="button" class="eye" aria-label="Show password" data-eye></button></div><div class="msg" data-msg="pw"></div></div>
<div class="row"><label class="chk"><input type="checkbox" id="remember"> Remember me</label><button type="button" class="link" data-go="forgot">Forgot password?</button></div>
<button class="btn primary" type="submit">Sign in</button>
</form>
<div class="or">or continue with</div>
<button class="btn ghost" type="button" id="google"><svg width="18" height="18" viewBox="0 0 48 48"><path fill="#4285F4" d="M45 24.5c0-1.6-.1-3.1-.4-4.5H24v8.5h11.8c-.5 2.7-2 5-4.3 6.5v5.4h7C42.700 36.6 45 31 45 24.500z"/><path fill="#34A853" d="M24 46c5.900 0 10.900-2 14.500-5.300l-7-5.400c-2 1.300-4.500 2.100-7.500 2.100-5.800 0-10.700-3.900-12.400-9.100H4.400v5.600C8 41.800 15.400 46 24 46z"/><path fill="#FBBC05" d="M11.600 28.300c-.4-1.300-.7-2.700-.7-4.300s.3-3 .7-4.300v-5.600H4.400C2.900 17 2 20.400 2 24s.9 7 2.400 9.900l7.200-5.600z"/><path fill="#EA4335" d="M24 10.600c3.300 0 6.200 1.100 8.500 3.300l6.400-6.400C34.900 4.100 29.900 2 24 2 15.400 2 8 6.200 4.400 14.100l7.200 5.600c1.700-5.200 6.600-9.100 12.400-9.100z"/></svg>Continue with Google</button>
<button class="btn demo" type="button" id="demo">Explore Demo</button>
<p class="foot">Don’t have an account? <button type="button" class="link" data-go="signup">Create account</button></p>
</div>

<div class="view" id="signup">
<h1>Create your CARECOUNT account</h1><p class="sub">Start making your everyday work visible.</p>
<form data-form="signup" novalidate>
<div class="banner" data-banner role="alert"></div>
<div class="field"><label for="s-name">Full name</label><input id="s-name" name="name" type="text" autocomplete="name"><div class="msg" data-msg="name"></div></div>
<div class="field"><label for="s-email">Email address</label><input id="s-email" name="email" type="email" autocomplete="email" placeholder="you@example.com"><div class="msg" data-msg="email"></div></div>
<div class="field"><label for="s-pw">Password</label><div class="inp"><input id="s-pw" name="pw" type="password" autocomplete="new-password"><button type="button" class="eye" aria-label="Show password" data-eye></button></div><div class="msg" data-msg="pw"></div></div>
<div class="field"><label for="s-pw2">Confirm password</label><div class="inp"><input id="s-pw2" name="pw2" type="password" autocomplete="new-password"><button type="button" class="eye" aria-label="Show password" data-eye></button></div><div class="msg" data-msg="pw2"></div></div>
<div class="field"><label class="chk"><input type="checkbox" name="agree"> <span>I agree to the <a href="#" data-legal>Privacy Policy</a> and <a href="#" data-legal>Terms</a>.</span></label><div class="msg" data-msg="agree"></div></div>
<button class="btn primary" type="submit">Create account</button>
</form>
<p class="foot">Already have an account? <button type="button" class="link" data-go="login">Sign in</button></p>
</div>

<div class="view" id="forgot">
<h1>Reset your password</h1><p class="sub">Enter your email and we'll help you get back into your account.</p>
<form data-form="forgot" novalidate>
<div class="banner" data-banner role="alert"></div>
<div class="field"><label for="f-email">Email address</label><input id="f-email" name="email" type="email" autocomplete="email" placeholder="you@example.com"><div class="msg" data-msg="email"></div></div>
<button class="btn primary" type="submit">Send reset link</button>
</form>
<p class="foot"><button type="button" class="link" data-go="login">Back to sign in</button></p>
</div>

</div></section>
</div>

<main id="dash"><div class="card"><h1 id="dname">Welcome</h1><p class="sub">You’re signed in. Set <code>DASHBOARD_URL</code> in this file to send people to the CARECOUNT Dashboard.</p><button class="btn ghost" id="out">Sign out</button></div></main>

<script>
// Set to your existing Dashboard route (e.g. "/dashboard") to redirect after sign-in.
const DASHBOARD_URL = null;
const DEMO = {name:"Demo Household", email:"demo@carecount.app", pw:"carecount-demo"};
const $ = (s,r=document)=>r.querySelector(s), $$=(s,r=document)=>[...r.querySelectorAll(s)];
const store = {
  get(k,d){try{const v=localStorage.getItem(k);return v?JSON.parse(v):d}catch(e){return d}},
  set(k,v){try{localStorage.setItem(k,JSON.stringify(v))}catch(e){}}
};
const EYE='<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M2 12s3.500-7 10-7 10 7 10 7-3.500 7-10 7S2 12 2 12z"/><circle cx="12" cy="12" r="3"/></svg>';
const EYEOFF='<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M3 3l18 18M10.600 5.100A10 10 0 0 1 12 5c6.500 0 10 7 10 7a17 17 0 0 1-3.200 4.100M6.600 6.600A17 17 0 0 0 2 12s3.500 7 10 7c1.800 0 3.400-.5 4.800-1.200M9.900 9.900a3 3 0 0 0 4.200 4.200"/></svg>';
$$("[data-eye]").forEach(b=>{b.innerHTML=EYE;b.onclick=()=>{const i=b.previousElementSibling,show=i.type==="password";i.type=show?"text":"password";b.innerHTML=show?EYEOFF:EYE;b.setAttribute("aria-label",show?"Hide password":"Show password")}});
function go(v){$$(".view").forEach(e=>e.classList.toggle("on",e.id===v));$$("form").forEach(clear);const f=$("#"+v+" input");f&&f.focus({preventScroll:true});scrollTo(0,0)}
$$("[data-go]").forEach(b=>b.onclick=()=>go(b.dataset.go));
$$("[data-legal]").forEach(a=>a.onclick=e=>e.preventDefault());
function clear(f){$$("[data-msg]",f).forEach(m=>m.textContent="");$$("input",f).forEach(i=>i.removeAttribute("aria-invalid"));const b=$("[data-banner]",f);b.textContent="";b.classList.remove("ok")}
function fail(f,name,text){const m=$(`[data-msg="${name}"]`,f);m.textContent=text;const i=f.elements[name];i&&i.setAttribute("aria-invalid","true")}
const okEmail=e=>/^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/.test(e);
function checkEmail(f,v){if(!v){fail(f,"email","Email address is required.");return false}if(!okEmail(v)){fail(f,"email","Please enter a valid email address.");return false}return true}
function enter(u,remember){store.set(remember?"cc_session":"cc_session_tmp",u);try{remember||sessionStorage.setItem("cc_s",JSON.stringify(u))}catch(e){}
  if(DASHBOARD_URL){location.href=DASHBOARD_URL;return}
  $("#dname").textContent="Welcome, "+u.name.split(" ")[0];$("#auth").style.display="none";$("#dash").classList.add("on");scrollTo(0,0)}
$$("form").forEach(f=>f.addEventListener("submit",e=>{
  e.preventDefault();clear(f);const d=Object.fromEntries(new FormData(f)),t=f.dataset.form,users=store.get("cc_users",[]);let ok=true;
  const email=(d.email||"").trim().toLowerCase();
  if(!checkEmail(f,email))ok=false;
  if(t==="login"){
    if(!d.pw){fail(f,"pw","Password is required.");ok=false}
    if(!ok)return;
    const u=email===DEMO.email&&d.pw===DEMO.pw?{name:DEMO.name,email}:users.find(x=>x.email===email&&x.pw===d.pw);
    if(!u){$("[data-banner]",f).textContent="That email and password don’t match. Check them and try again, or use Forgot password.";return}
    enter({name:u.name,email:u.email},$("#remember").checked)
  }
  if(t==="signup"){
    if(!d.name.trim()){fail(f,"name","Full name is required.");ok=false}
    if(!d.pw){fail(f,"pw","Password is required.");ok=false}else if(d.pw.length<8){fail(f,"pw","Use at least 8 characters.");ok=false}
    if(d.pw&&d.pw2!==d.pw){fail(f,"pw2","Passwords don’t match yet.");ok=false}
    if(!d.agree){fail(f,"agree","Please agree to the Privacy Policy and Terms to continue.");ok=false}
    if(ok&&(users.some(x=>x.email===email)||email===DEMO.email)){fail(f,"email","An account with this email already exists. Try signing in.");ok=false}
    if(!ok)return;
    users.push({name:d.name.trim(),email,pw:d.pw});store.set("cc_users",users);enter({name:d.name.trim(),email},true)
  }
  if(t==="forgot"){
    if(!ok)return;const b=$("[data-banner]",f);b.classList.add("ok");
    b.textContent="If an account exists for "+email+", a reset link is on its way. (Prototype: no email is actually sent.)"
  }
}));
$("#demo").onclick=()=>enter({name:DEMO.name,email:DEMO.email},false);
$("#google").onclick=()=>{const f=$('[data-form="login"]');clear(f);$("[data-banner]",f).textContent="Google sign-in isn’t connected in this prototype. Use email, or Explore Demo."};
$("#out").onclick=()=>{try{localStorage.removeItem("cc_session");localStorage.removeItem("cc_session_tmp");sessionStorage.removeItem("cc_s")}catch(e){}$("#dash").classList.remove("on");$("#auth").style.display="";go("login")};
(function(){let u=store.get("cc_session",null);if(!u){try{u=JSON.parse(sessionStorage.getItem("cc_s")||"null")}catch(e){}}if(u)enter(u,true)})();
</script>
</body>
</html>