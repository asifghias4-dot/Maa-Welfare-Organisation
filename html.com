<title>Maa Welfare Organization</title>
<meta name="claude:viewport-fit-sides" content="cover">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@500;600;700;800&family=Inter:wght@400;500;600;700&display=swap">
<style>
/* Layout: calm public site on top, a private ledger "team area" behind the same page. Deep teal for trust, marigold for the money going out. */
:root{
  --bg:#f4f8f7; --surface:#ffffff; --ink:#0b1f2a; --muted:#52666f; --line:#dfe9e6; --veil:rgba(244,248,247,.62); --shadow:0 1px 2px rgba(11,31,42,.05),0 14px 34px rgba(11,31,42,.07); --sky1:var(--bg); --sky2:var(--bg); --mtn:none;
  --brand:#0f766e; --brand-ink:#ffffff; --brand-soft:#e1f1ee; --accent:#f2a30f; --accent-soft:#fdf0d0;
  --hero1:#0a3a4a; --hero2:#0f6a74; --good:#1b7a4b; --warn:#9a6200; --bad:#b3261e; --bad-soft:#fbe6e4;
  --font-display:"Plus Jakarta Sans","Segoe UI",system-ui,sans-serif;
  --font-body:"Inter","Segoe UI",system-ui,-apple-system,sans-serif;
}
@media (prefers-color-scheme: dark){:root:not([data-theme="light"]){
  --bg:#08130f; --surface:#0f1d19; --ink:#e9f4f1; --muted:#90a9a3; --line:#1d322c; --veil:rgba(8,19,15,.62); --shadow:0 1px 2px rgba(0,0,0,.45),0 14px 34px rgba(0,0,0,.4); --sky1:var(--bg); --sky2:var(--bg); --mtn:none;
  --brand:#2dd4bf; --brand-ink:#03211c; --brand-soft:#11332d; --accent:#f5b83d; --accent-soft:#33290f;
  --hero1:#0b2a38; --hero2:#0d4650; --good:#58c78d; --warn:#f0b64a; --bad:#ff8a80; --bad-soft:#3b1b19; color-scheme:dark}}
:root[data-theme="dark"]{
  --bg:#08130f; --surface:#0f1d19; --ink:#e9f4f1; --muted:#90a9a3; --line:#1d322c; --veil:rgba(8,19,15,.62); --shadow:0 1px 2px rgba(0,0,0,.45),0 14px 34px rgba(0,0,0,.4); --sky1:var(--bg); --sky2:var(--bg); --mtn:none;
  --brand:#2dd4bf; --brand-ink:#03211c; --brand-soft:#11332d; --accent:#f5b83d; --accent-soft:#33290f;
  --hero1:#0b2a38; --hero2:#0d4650; --good:#58c78d; --warn:#f0b64a; --bad:#ff8a80; --bad-soft:#3b1b19; color-scheme:dark}

*{box-sizing:border-box}
body{background:var(--bg);min-height:100vh;color:var(--ink);font:16px/1.55 var(--font-body);padding-left:max(16px,env(safe-area-inset-left,0px));padding-right:max(16px,env(safe-area-inset-right,0px));padding-block:0}
h1,h2,h3{font-family:var(--font-display);line-height:1.12;margin:0;text-wrap:balance;letter-spacing:-.01em}
h1{font-size:clamp(2.1rem,6vw,3.6rem);font-weight:700}
h2{font-size:clamp(1.55rem,3.6vw,2.1rem);font-weight:700}
h3{font-size:1.15rem;font-weight:600}
p{margin:0}
a{color:var(--brand)}
.wrap{max-width:1080px;margin:0 auto}
.eyebrow{font-size:.78rem;font-weight:700;letter-spacing:.12em;text-transform:uppercase;color:var(--brand)}
.muted{color:var(--muted)}
.num{font-variant-numeric:tabular-nums}
:focus-visible{outline:3px solid var(--accent);outline-offset:2px;border-radius:6px}

/* top bar */
.top{display:flex;align-items:center;gap:16px;flex-wrap:wrap;padding:14px 0;border-bottom:1px solid var(--line)}
.brand{display:flex;align-items:center;gap:10px;font-family:var(--font-display);font-weight:700;font-size:1.1rem;color:var(--ink);text-decoration:none}
.brand svg{flex:none}
.top nav{display:flex;gap:4px 18px;flex-wrap:wrap;margin-left:auto;align-items:center}
.top nav a{color:var(--muted);text-decoration:none;font-weight:600;font-size:.95rem}
.top nav a:hover{color:var(--ink)}
body::before{content:"";position:fixed;inset:0;z-index:-1;background:linear-gradient(var(--veil),var(--veil)),var(--mtn) center bottom/cover no-repeat;pointer-events:none}
.founder{display:grid;grid-template-columns:minmax(220px,300px) 1fr;gap:36px;align-items:center}
.fphoto{margin:0;position:relative}
.fphoto img{display:block;width:100%;height:auto;border-radius:150px 150px 18px 18px;border:4px solid var(--surface);box-shadow:0 0 0 2px var(--accent),0 18px 40px rgba(10,40,60,.25);background:var(--surface)}
.fphoto figcaption{margin-top:14px;display:grid;text-align:center}.fphoto figcaption span{color:var(--muted);font-size:.9rem}
@media(max-width:700px){.founder{grid-template-columns:1fr;gap:20px;justify-items:center}.founder>div:last-child{justify-self:stretch}.fphoto{width:min(260px,100%)}}
.trk{display:grid;grid-template-columns:repeat(5,1fr);gap:6px}.stp{display:grid;justify-items:center;gap:6px;text-align:center;font-size:.82rem;color:var(--muted)}.stp i{font-style:normal;width:30px;height:30px;border-radius:50%;display:grid;place-items:center;background:var(--surface);border:2px solid var(--line);font-weight:700}.stp.on{color:var(--ink)}.stp.on i{background:var(--brand);border-color:var(--brand);color:var(--brand-ink)}
fieldset.sec{border:1px solid var(--line);border-radius:12px;padding:14px;display:grid;gap:12px;min-width:0;margin:0}fieldset.sec legend{padding:0 8px;font-weight:700;color:var(--brand)}
.docrow{display:grid;grid-template-columns:1fr 1fr;gap:8px}@media(max-width:560px){.docrow{grid-template-columns:1fr}}
.terms{margin:10px 0 0 1.2em;display:grid;gap:8px}
.rprog{display:grid;gap:6px}.rbar{height:8px;border-radius:6px;background:var(--brand-soft);overflow:hidden}.rbar i{display:block;height:100%;width:25%;background:var(--accent);border-radius:6px;transition:width .15s}
.rstep h4{font:700 1.05rem var(--font-display);color:var(--brand)}.two{display:grid;grid-template-columns:1fr 1fr;gap:12px}@media(max-width:560px){.two{grid-template-columns:1fr}}
.more summary{cursor:pointer;font-weight:600;color:var(--brand)}.rnav{display:flex;gap:10px;justify-content:space-between}.rnav .btn.primary{margin-left:auto}
[hidden]{display:none!important}input.bad,textarea.bad,select.bad{border-color:var(--bad)}
.wafab{position:fixed;right:max(16px,env(safe-area-inset-right,0px));bottom:calc(16px + env(safe-area-inset-bottom,0px));z-index:30;display:inline-flex;align-items:center;gap:8px;padding:12px 18px;border-radius:999px;background:#1fa855;color:#fff;font-weight:700;text-decoration:none;box-shadow:0 8px 24px rgba(0,0,0,.25)}.wafab:hover{filter:brightness(1.08)}
@media(max-width:480px){.wafab span{display:none}.wafab{padding:14px}}
.qchip{cursor:pointer;border:1px solid var(--line);background:var(--surface);color:var(--ink);border-radius:999px;padding:8px 14px;font:inherit;font-size:.92rem}.qchip:hover{border-color:var(--brand);color:var(--brand)}
.thread{display:grid;gap:8px;max-height:300px;overflow-y:auto;padding:4px}.bub{max-width:82%;padding:9px 13px;border-radius:16px;display:grid;gap:3px}.bub small{color:var(--muted);font-size:.75rem}.bub.me{justify-self:end;background:var(--brand-soft);border-bottom-right-radius:4px}.bub.them{justify-self:start;background:var(--surface);border:1px solid var(--line);border-bottom-left-radius:4px}.bub span{white-space:pre-wrap}
.btn{font:600 .95rem var(--font-body);border:1px solid var(--line);background:var(--surface);color:var(--ink);padding:9px 16px;border-radius:10px;cursor:pointer;text-decoration:none;display:inline-flex;align-items:center;gap:8px}
.btn:hover{border-color:var(--brand)}
.btn.primary{background:var(--brand);color:var(--brand-ink);border-color:var(--brand)}
.btn.primary:hover{filter:brightness(1.06)}
.btn.danger{color:var(--bad);border-color:var(--bad)}
.btn.small{padding:5px 10px;font-size:.85rem;border-radius:8px}
.btn.confirm{background:var(--bad);color:#fff;border-color:var(--bad)}

/* public */
.hero{position:relative;overflow:hidden;border-radius:24px;margin-top:24px;padding:52px 40px 64px;background:linear-gradient(160deg,var(--hero1),var(--hero2));color:#fff;display:grid;grid-template-columns:1.15fr .85fr;gap:32px;align-items:center}
.hero>*{position:relative}
.hero .ridge{position:absolute;left:0;right:0;bottom:0;width:100%;height:84px;color:#fff;opacity:.13;pointer-events:none}
.hero .eyebrow{color:var(--accent)}
.hero h1{color:#fff}
.hero p.lead{font-size:1.15rem;color:rgba(255,255,255,.86);margin-top:16px;max-width:52ch}
.hero .cta{display:flex;gap:10px;flex-wrap:wrap;margin-top:24px}
.hero .btn.primary{background:var(--accent);color:#1d1500;border-color:var(--accent)}
.hero .btn:not(.primary){background:transparent;color:#fff;border-color:rgba(255,255,255,.55)}
.hero .panel{color:var(--ink)}
.panel{background:var(--surface);border:1px solid var(--line);border-radius:16px;padding:20px}
.big3{display:grid;grid-template-columns:repeat(3,1fr);gap:12px;margin-top:14px}
.big3 div{min-width:0}
.big3 b{display:block;font-family:var(--font-display);font-size:1.35rem;line-height:1.2}
.big3 span{font-size:.8rem;color:var(--muted)}
section.block{padding:40px 0;border-top:1px solid var(--line)}
section.block>.head{display:grid;gap:8px;margin-bottom:22px;max-width:62ch}
.cards{display:grid;grid-template-columns:repeat(auto-fit,minmax(260px,1fr));gap:16px}
.card{background:var(--surface);border:1px solid var(--line);border-radius:14px;padding:20px;min-width:0}
.card ul{margin:10px 0 0;padding-left:18px;color:var(--muted)}
.steps{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:16px;list-style:none;padding:0;margin:0;counter-reset:s}
.steps li{counter-increment:s;background:var(--surface);border:1px solid var(--line);border-radius:14px;padding:18px}
.steps li::before{content:counter(s);display:grid;place-items:center;width:30px;height:30px;border-radius:50%;background:var(--brand-soft);color:var(--brand);font-weight:700;margin-bottom:10px}
.bars{display:grid;gap:10px;margin-top:6px}
.bar{display:grid;grid-template-columns:minmax(90px,150px) 1fr auto;gap:10px;align-items:center;font-size:.92rem}
.bar i{display:block;height:12px;border-radius:6px;background:var(--accent)}
.bar .track{background:var(--brand-soft);border-radius:6px;overflow:hidden}
.empty{border:1px dashed var(--line);border-radius:12px;padding:18px;color:var(--muted);background:var(--surface)}
.story{padding:16px 0;border-bottom:1px solid var(--line)}
.story:last-child{border-bottom:0}
.story small{color:var(--muted)}
.prewrap{white-space:pre-wrap}
footer{margin:28px 0 24px;padding:16px 20px;color:var(--muted);font-size:.9rem;background:var(--surface);border:1px solid var(--line);border-radius:14px}

/* team area */
.tabs{display:flex;gap:4px 6px;flex-wrap:wrap;padding:14px 0 10px;border-bottom:1px solid var(--line)}
.tabs a{white-space:nowrap;text-decoration:none;color:var(--muted);font-weight:600;padding:6px 12px;border-radius:999px;border:1px solid transparent}
.tabs a.on{background:var(--brand);color:var(--brand-ink)}
.tabs a:not(.on):hover{border-color:var(--line);color:var(--ink)}
.teamhead{display:flex;gap:12px;align-items:center;flex-wrap:wrap;padding:22px 0 6px}
.teamhead h2{margin-right:auto}
.lock{display:inline-flex;gap:6px;align-items:center;font-size:.82rem;font-weight:600;color:var(--brand);background:var(--brand-soft);padding:4px 10px;border-radius:999px}
.tiles{display:grid;grid-template-columns:repeat(auto-fit,minmax(180px,1fr));gap:12px;margin:16px 0}
.tile{background:var(--surface);border:1px solid var(--line);border-radius:14px;padding:16px;min-width:0}
.tile span{font-size:.8rem;color:var(--muted);font-weight:600;text-transform:uppercase;letter-spacing:.06em}
.tile b{display:block;font-family:var(--font-display);font-size:1.6rem;margin-top:4px;line-height:1.15}
.tile small{color:var(--muted)}
.cols{display:grid;grid-template-columns:repeat(auto-fit,minmax(320px,1fr));gap:16px;margin-top:4px}
.scroll{overflow-x:auto;border:1px solid var(--line);border-radius:12px;background:var(--surface)}
table{border-collapse:collapse;width:100%;font-size:.92rem}
th{text-align:left;font-size:.75rem;letter-spacing:.06em;text-transform:uppercase;color:var(--muted);padding:10px 12px;border-bottom:1px solid var(--line);white-space:nowrap}
td{padding:10px 12px;border-bottom:1px solid var(--line);vertical-align:top}
tr:last-child td{border-bottom:0}
td.r,th.r{text-align:right}
td.act{white-space:nowrap;text-align:right}
.pill{display:inline-block;font-size:.76rem;font-weight:700;padding:2px 9px;border-radius:999px;background:var(--brand-soft);color:var(--brand)}
.pill.warn{background:var(--accent-soft);color:var(--warn)}
.pill.bad{background:var(--bad-soft);color:var(--bad)}
.pill.good{background:var(--brand-soft);color:var(--good)}
.toolbar{display:flex;gap:10px;flex-wrap:wrap;margin:14px 0}
.toolbar input[type=search]{flex:1 1 200px;min-width:0}
input,select,textarea{font:inherit;color:var(--ink);background:var(--surface);border:1px solid var(--line);border-radius:10px;padding:9px 12px;width:100%}
textarea{min-height:80px;resize:vertical}
label{display:grid;gap:4px;font-size:.85rem;font-weight:600;color:var(--muted)}
.form{background:var(--surface);border:1px solid var(--brand);border-radius:14px;padding:18px;margin:14px 0}
.form .grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:12px}
.form .full{grid-column:1/-1}
.form .row{display:flex;gap:10px;flex-wrap:wrap;margin-top:14px;align-items:center}
.msg{font-size:.9rem;padding:8px 12px;border-radius:10px;background:var(--accent-soft);color:var(--warn)}
.msg.err{background:var(--bad-soft);color:var(--bad)}
.list li{padding:10px 0;border-bottom:1px solid var(--line);display:flex;gap:10px;justify-content:space-between;align-items:baseline}
.list{list-style:none;margin:0;padding:0}
.list li:last-child{border-bottom:0}
.legend{display:flex;gap:16px;font-size:.85rem;color:var(--muted);margin-bottom:6px}
.legend i{display:inline-block;width:10px;height:10px;border-radius:3px;margin-right:6px}
svg text{fill:var(--muted);font-family:var(--font-body);font-size:11px}
.start{border:1px solid var(--accent);background:var(--accent-soft);border-radius:14px;padding:16px;margin:14px 0}
@media (max-width:760px){
  .hero{grid-template-columns:1fr;padding:30px 20px 56px}
  .bar{grid-template-columns:90px 1fr auto}
}
.top nav a.on{color:var(--ink);box-shadow:inset 0 -2px 0 var(--accent)}
section.block.first{border-top:0}
.subtabs{display:flex;gap:4px 6px;flex-wrap:wrap;padding:10px 0 0}
.subtabs a{text-decoration:none;color:var(--muted);font-weight:600;font-size:.9rem;padding:5px 12px;border-radius:8px;border:1px solid var(--line);background:var(--surface)}
.subtabs a.on{color:var(--brand);border-color:var(--brand);background:var(--brand-soft)}
.lockbox{max-width:420px;margin:40px auto}
.fhead{margin:8px 0 0;padding-top:12px;border-top:1px solid var(--line);font:600 1rem var(--font-display);color:var(--brand)}
.checks{display:grid;gap:6px}
.chk{display:flex;gap:8px;align-items:flex-start;font-weight:500;color:var(--ink);font-size:.95rem}
.chk input{width:auto;margin-top:4px}
.tile.exp{display:block;text-decoration:none;color:var(--ink)}
.tile.exp:hover{border-color:var(--brand)}
.tile.exp b{font-size:1.05rem}
.quick{display:flex;gap:10px;flex-wrap:wrap;padding:14px 0 4px}
.btn.big{padding:12px 18px;font-size:1rem;border-radius:12px}
.field{display:grid;gap:5px;min-width:0;align-content:start}
.field.full{grid-column:1/-1}
.lab{font-size:.85rem;font-weight:600;color:var(--muted)}
.help{font-size:.8rem;color:var(--muted)}
.chips{display:flex;gap:8px;flex-wrap:wrap}
.chip{display:inline-block;position:relative}
.chip input{position:absolute;opacity:0;inset:0;width:100%;height:100%;cursor:pointer;margin:0;padding:0;border:0}
.chip span{display:inline-block;padding:8px 14px;border:1px solid var(--line);border-radius:999px;background:var(--surface);font-weight:600;font-size:.92rem;color:var(--ink)}
.chip input:checked+span{background:var(--brand);color:var(--brand-ink);border-color:var(--brand)}
.chip input:focus-visible+span{outline:3px solid var(--accent);outline-offset:2px}
input.big{font-size:1.6rem;font-weight:700;font-family:var(--font-display);padding:12px 14px}
.attrow{display:flex;gap:10px;align-items:center;flex-wrap:wrap;font-size:.9rem}
.attrow input[type=checkbox]{width:auto}
.toast{position:fixed;left:50%;transform:translateX(-50%);bottom:max(20px,env(safe-area-inset-bottom,0px));background:var(--ink);color:var(--bg);padding:10px 18px;border-radius:999px;font-weight:600;z-index:20;max-width:90vw}
.receipt{white-space:pre-wrap;font:600 .95rem/1.6 var(--font-body);background:var(--bg);border:1px dashed var(--line);border-radius:10px;padding:16px;margin:0}
.stmt td.sub{padding-left:28px;color:var(--muted)}
.stmt tr.tot td{font-weight:700;border-top:2px solid var(--line)}
.stmt td.r{text-align:right}

/* modern refresh */
section.block{padding:56px 0;border-top:0}
.top{border-bottom:1px solid var(--line);padding:18px 0}
.top nav{gap:4px}.top nav a{padding:7px 14px;border-radius:999px;transition:background .12s}
.top nav a:hover{background:var(--brand-soft)}.top nav a.on{background:var(--brand-soft);color:var(--ink);box-shadow:none}
.eyebrow{display:inline-flex;align-items:center;gap:8px;color:var(--muted)}.eyebrow::before{content:"";width:7px;height:7px;border-radius:50%;background:var(--accent)}
h1{letter-spacing:-.035em}h2{letter-spacing:-.025em}
.btn{border-radius:999px;padding:10px 20px}
.btn.primary{background:var(--brand);color:var(--brand-ink);border-color:var(--brand)}
.card,.tile,.panel,.steps li,.scroll,.form,.empty{border-radius:20px}
.card,.tile,.panel,.steps li{box-shadow:var(--shadow)}
.hero{background:var(--surface);color:var(--ink);border:1px solid var(--line);box-shadow:var(--shadow);border-radius:32px;padding:72px 48px;margin-top:28px}
.hero .ridge{display:none}.hero h1{color:var(--ink);font-size:clamp(2.4rem,6.4vw,4.3rem)}
.hero .eyebrow{color:var(--muted)}.hero p.lead{color:var(--muted)}
.hero .btn.primary{background:var(--brand);color:var(--brand-ink);border-color:var(--brand)}
.hero .btn:not(.primary){background:transparent;color:var(--ink);border-color:var(--line)}
.hero .panel{background:var(--bg);box-shadow:none}
@media(max-width:700px){.hero{padding:36px 22px;border-radius:24px}}
input,select,textarea{border-radius:12px;background:var(--surface)}
.fphoto img{border:6px solid var(--surface);box-shadow:0 0 0 1px var(--line),var(--shadow)}
.rbar i{background:var(--brand)}
footer{box-shadow:var(--shadow)}

/* colour, type and responsive polish */
body{font-size:16.5px;-webkit-font-smoothing:antialiased}
h1,h2,h3{font-weight:800;letter-spacing:-.03em}h3{font-weight:700;letter-spacing:-.015em}
.btn.primary,.hero .btn.primary{background:linear-gradient(135deg,var(--brand),color-mix(in srgb,var(--brand) 70%,#22d3ee));border-color:transparent;box-shadow:0 6px 16px color-mix(in srgb,var(--brand) 30%,transparent)}
.btn.primary:hover{filter:brightness(1.06);transform:translateY(-1px)}
.btn{min-height:42px;transition:transform .12s,filter .12s,border-color .12s}
.hero{background:radial-gradient(900px 380px at 100% 0,color-mix(in srgb,var(--brand) 14%,transparent),transparent 70%),radial-gradient(600px 300px at 0 100%,color-mix(in srgb,var(--accent) 14%,transparent),transparent 70%),var(--surface)}
.hero h1{background:linear-gradient(120deg,var(--ink) 72%,var(--brand));-webkit-background-clip:text;background-clip:text;color:transparent}
.eyebrow{color:var(--brand)}
.card h3,.rstep h4{color:var(--ink)}.rstep h4{color:var(--brand)}
.top nav a.on{background:var(--brand-soft);color:var(--brand)}
.tile b{color:var(--brand)}
.card{transition:box-shadow .15s,transform .15s}a.card:hover{transform:translateY(-2px);box-shadow:0 2px 4px rgba(11,31,42,.06),0 18px 40px rgba(11,31,42,.1)}
@media(max-width:760px){
  body{font-size:16px}
  .top{gap:10px;padding:12px 0}
  .top nav{width:100%;margin-left:0;flex-wrap:nowrap;overflow-x:auto;white-space:nowrap;scrollbar-width:none;gap:2px;padding-bottom:4px;-webkit-overflow-scrolling:touch}
  .top nav::-webkit-scrollbar{display:none}
  .top nav a{flex:none;padding:9px 14px}
  .tabs,.subtabs{flex-wrap:nowrap;overflow-x:auto;scrollbar-width:none;white-space:nowrap}
  .tabs::-webkit-scrollbar,.subtabs::-webkit-scrollbar{display:none}
  .tabs a,.subtabs a{flex:none;padding:9px 14px}
  section.block{padding:36px 0}
  .btn{min-height:46px}
  .hero .btn{flex:1 1 auto;justify-content:center}
  input,select,textarea{font-size:16px;min-height:46px}
  .cols,.cards{grid-template-columns:1fr!important}
}
@media(min-width:1100px){.wrap{max-width:1160px}section.block{padding:72px 0}}
</style>

<svg width="0" height="0" style="position:absolute" aria-hidden="true"><symbol id="mw" viewBox="0 0 64 64"><rect width="64" height="64" rx="16" fill="var(--brand)"/><rect x="3" y="3" width="58" height="58" rx="13" fill="none" stroke="var(--accent)" stroke-opacity=".55" stroke-width="1.5"/><path d="M9 38V18l9.500 12L28 18v20" fill="none" stroke="var(--brand-ink)" stroke-width="4.4" stroke-linecap="round" stroke-linejoin="round"/><path d="M36 18l4.500 20 5.500-13 5.500 13 4.500-20" fill="none" stroke="var(--accent)" stroke-width="4.4" stroke-linecap="round" stroke-linejoin="round"/><path d="M32 54c-3.600-2.700-5.800-4.500-5.800-6.800a3.100 3.100 0 0 1 5.800-1.600 3.100 3.100 0 0 1 5.800 1.600c0 2.300-2.200 4.100-5.800 6.800z" fill="var(--accent)"/></symbol></svg>
<div class="wrap">
  <header class="top">
    <a class="brand" href="#home">
      <svg width="38" height="38" aria-hidden="true"><use href="#mw"/></svg>
      Maa Welfare Organization
    </a>
    <nav id="nav" aria-label="Main">
      <a data-p="home" href="#home">Home</a><a data-p="work" href="#work">Our work</a><a data-p="help" href="#help">Get help</a><a data-p="give" href="#give">Give</a><a data-p="accountability" href="#accountability">Accountability</a><a data-p="updates" href="#updates">Updates</a><a data-p="contact" href="#contact">Contact</a>
      <a class="btn small primary" id="teamBtn" href="#team" hidden>Team sign-in</a>
    </nav>
  </header>

  <main id="pub"></main>

  <main id="team" hidden></main>

  <footer id="foot">Maa Welfare Organization · Ghizer, Gilgit-Baltistan, Pakistan · Founded by the late Engr. Mir Ghias Khan · <a href="https://www.facebook.com/share/1T3snzzQiP/?mibextid=wwXIfr" target="_blank" rel="noopener">Facebook</a></footer>
</div>

<div id="toast" class="toast" role="status" aria-live="polite" hidden></div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
<script>
"use strict";
/* ---------- helpers ---------- */
const $ = (s, r) => (r || document).querySelector(s);
const esc = s => String(s == null ? "" : s).replace(/[&<>"']/g, c => ({"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#39;"}[c]));
const num = v => { const n = parseFloat(v); return isFinite(n) ? n : 0; };
const dec = () => (["OMR", "BHD", "KWD"].includes(CUR) ? 3 : CUR === "PKR" ? 0 : 2);
const omr = n => num(n).toLocaleString("en-US", {minimumFractionDigits: dec(), maximumFractionDigits: dec()});
const iso = d => new Date(d.getTime() - d.getTimezoneOffset() * 60000).toISOString().slice(0, 10);
const today = () => iso(new Date());
const fdate = d => { if (!d) return ""; const x = new Date(d + "T00:00:00"); return isNaN(x) ? d : x.toLocaleDateString("en-GB", {day: "numeric", month: "short", year: "numeric"}); };
const sum = (a, f) => a.reduce((t, x) => t + num(f(x)), 0);
const FUNDS = ["Education", "Medical", "General"];
const STATUSES = ["Applied", "Needs more info", "Under review", "Approved", "Disbursed", "Declined", "Closed"];
const TYPES = ["Education", "Medical", "Grocery"];
const STEPS = ["Applied", "Under review", "Approved", "Disbursed", "Confirmed"];
const EVID = ["National ID (CNIC), B-Form or passport copy", "Bank details or fee challan of the school, hospital or shop", "Fee voucher, admission letter or school letter", "Last result card", "Doctor's prescription or medical report", "Hospital estimate or bill", "Proof of family income or situation", "Letter from a local reference (teacher, elder, councillor)"];
let lastPubKey = "", filterVal = "", sortVal = "new";
const CATS = ["Tuition fees", "Books and supplies", "Hospital bill", "Medicines", "Treatment", "Administration", "Other"];
const METHODS = ["Cash", "Bank transfer", "Cheque", "Online", "Other"];

/* ---------- state ---------- */
let db = null, user = null, downloads = null, isTeam = false, myId = null;
const S = {donations: [], expenses: [], cases: [], accounts: [], donors: [], pledges: [], campaigns: [], budgets: [], people: [], stock: [], tasks: [], audit: []};
const loaded = {};
let pub = {summary: null, content: {}};
let tab = "overview", filterText = "";
let curPage = "home";
const AUTH = {users: null, loaded: false, session: null, fails: 0, lock: 0, last: Date.now(), owner: false};
let resetFor = "";
let CUR = "PKR", assetsCap = null, pendingForm = null, toastT = null, lastFin = null;
const fin = {period: "year", from: "", to: ""};

/* ---------- calculations ---------- */
function acctBal(id) {
  const a = S.accounts.find(x => x.id === id); if (!a) return 0;
  return num(a.opening) + sum(S.donations.filter(d => d.account === id), d => d.amount) - sum(S.expenses.filter(e => e.account === id), e => e.amount);
}
function fundBal(f) {
  const open = f === "General" ? sum(S.accounts, a => a.opening) : 0;
  return open + sum(S.donations.filter(d => d.fund === f), d => d.amount) - sum(S.expenses.filter(e => e.fund === f), e => e.amount);
}
function totals() {
  const received = sum(S.donations, d => d.amount), spent = sum(S.expenses, e => e.amount);
  const available = sum(S.accounts, a => acctBal(a.id));
  return {received, spent, available};
}
function buildSummary() {
  const t = totals(), byFund = {}, categories = {};
  FUNDS.forEach(f => byFund[f] = {received: sum(S.donations.filter(d => d.fund === f), d => d.amount), spent: sum(S.expenses.filter(e => e.fund === f), e => e.amount)});
  S.expenses.forEach(e => { const c = e.category || "Other"; categories[c] = (categories[c] || 0) + num(e.amount); });
  const done = S.cases.filter(c => c.status === "Disbursed" || c.status === "Closed" || caseDisb(c.id) > 0);
  return {received: t.received, spent: t.spent, available: t.available, byFund, categories,
    helped: {Education: done.filter(c => c.type === "Education").length, Medical: done.filter(c => c.type === "Medical").length},
    donors: new Set(S.donations.map(d => (d.donor || "").trim().toLowerCase()).filter(Boolean)).size,
    campaigns: S.campaigns.filter(c => c.status === "Active" && c.showPublic !== "No").map(c => ({name: c.name, goal: num(c.goal), raised: campRaised(c.id), description: c.description || "", endDate: c.endDate || ""})),
    updatedAt: new Date().toISOString()};
}

function statusDoc(list) {
  const items = {};
  list.forEach(c => { const k = String(c.ref || "").trim().toUpperCase().replace(/[^A-Z0-9-]/g, ""); if (!k) return; const it = {s: c.status || "Applied", t: c.type || "", u: String(c.updatedAt || c.createdAt || "").slice(0, 10), m: c.msgToApplicant || "", a: c.ackStatus || "", ms: (c.thread || []).filter(x => x.from === "team").slice(-5).map(x => ({d: String(x.at).slice(0, 10), t: x.text}))}; if (c.status === "Disbursed" || c.status === "Closed") { it.inst = c.payeeName || ""; it.amt = num(c.approved); } items[k] = it; });
  return {items, updatedAt: new Date().toISOString()};
}
async function syncStatus(id, rec) { try { const list = S.cases.filter(c => c.id !== id).concat([Object.assign({id: id || "new"}, rec)]); await db.doc("public/status").set(statusDoc(list)); } catch (e) {} }
function stepOf(it) { if (it.a === "Confirmed by school") return 4; return ({"Applied": 0, "Needs more info": 0, "Under review": 1, "Approved": 2, "Disbursed": 3, "Closed": 3})[it.s] || 0; }
const QR = ["I have sent the documents", "Please call me", "I need more time", "Thank you"];
function trackHTML(ref) {
  const k = String(ref || "").trim().toUpperCase().replace(/[^A-Z0-9-]/g, ""), it = pub.status && pub.status.items && pub.status.items[k];
  if (!k) return '<p class="msg err">Please type your reference number.</p>';
  if (!it) return '<p class="msg err">We could not find this reference yet. The team updates the list regularly, so please check again later or contact us.</p>';
  const n = stepOf(it), declined = it.s === "Declined";
  return `<div style="margin-top:6px"><div class="trk">${STEPS.map((x, i) => `<div class="stp ${!declined && i <= n ? "on" : ""}"><i>${!declined && i < n ? "✓" : i + 1}</i><span>${x === "Confirmed" ? "Confirmed by school" : x}</span></div>`).join("")}</div>
    <p style="margin-top:12px"><b>Status: ${esc(it.s)}</b>${it.t ? " · " + esc(it.t) : ""}${it.u ? ' <span class="muted">· updated ' + esc(fdate(it.u)) + "</span>" : ""}</p>
    ${it.s === "Needs more info" ? '<p class="msg">The team needs more information from you. Please read the message below.</p>' : ""}
    ${declined ? '<p class="muted">We are sorry. We could not help with this request at this time. You are welcome to contact us.</p>' : ""}
    ${(it.ms || []).length ? `<div class="card" style="margin-top:10px"><b>Messages from the team</b>${it.ms.slice().reverse().map(x => `<p class="prewrap" style="margin-top:8px">${esc(x.t)} <span class="muted">· ${esc(fdate(x.d))}</span></p>`).join("")}</div>` : it.m ? `<div class="card" style="margin-top:10px"><b>Message from the team</b><p class="prewrap" style="margin-top:6px">${esc(it.m)}</p></div>` : ""}
    <div class="card" style="margin-top:10px"><b>Reply to the team</b><p class="muted" style="margin:4px 0 8px;font-size:.9rem">Tap a quick reply or write your own. Then send it to us on WhatsApp.</p>
      <div class="chips" style="margin-bottom:8px">${QR.map(x => `<button type="button" class="qchip" data-qr="${esc(x)}">${esc(x)}</button>`).join("")}</div>
      <textarea id="tr_msg" placeholder="Write your reply" style="min-height:70px"></textarea>
      <div style="margin-top:10px"><button type="button" class="btn primary" data-trsend="${esc(k)}">Prepare my reply</button></div><div id="tr_reply"></div></div></div>`;
}

/* ---------- public site ---------- */
function bars(map, total) {
  const rows = Object.entries(map).filter(([, v]) => v > 0).sort((a, b) => b[1] - a[1]);
  if (!rows.length) return '<div class="empty">No spending recorded yet.</div>';
  return '<div class="bars">' + rows.map(([k, v]) => `<div class="bar"><span>${esc(k)}</span><div class="track"><i style="width:${Math.max(2, v / total * 100).toFixed(1)}%"></i></div><span class="num">${omr(v)}</span></div>`).join("") + "</div>";
}
const FOUNDER_IMG = "data:image/jpeg;base64,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";
function renderPublic() {
  const key = JSON.stringify([pub.summary, pub.content, CUR, pub.status ? 1 : 0]); if (key === lastPubKey && $("#pub").innerHTML) return; lastPubKey = key;
  const s = pub.summary, c = pub.content || {};
  const stories = (c.stories || []).slice().sort((a, b) => (b.date || "").localeCompare(a.date || ""));
  const figures = s
    ? `<div class="big3"><div><b class="num">${omr(s.received)}</b><span>${CUR} received</span></div><div><b class="num">${omr(s.spent)}</b><span>${CUR} given out</span></div><div><b class="num">${omr(s.available)}</b><span>${CUR} available</span></div></div><p class="muted" style="margin-top:12px;font-size:.85rem">Last updated ${fdate((s.updatedAt || "").slice(0, 10))}</p>`
    : `<p class="muted" style="margin-top:8px">The first financial report will appear here once the team publishes it.</p>`;
  $("#pub").innerHTML = `
  <div data-page="home">
  <section class="hero">
    <svg class="ridge" viewBox="0 0 1200 120" preserveAspectRatio="none" aria-hidden="true"><path d="M0 120V82L110 38l90 34L320 12l112 56 90-34 128 52 110-56 120 48 110-30 120 36 120-24v38z" fill="currentColor"/></svg>
    <div>
      <div class="eyebrow">Ghizer, Gilgit-Baltistan, Pakistan</div>
      <h1 style="margin-top:10px">Helping students stay in school, with care.</h1>
      <p class="lead">Our main focus is education: school and college fees for students who cannot afford them. We also give limited help with medical bills and groceries for families in need. Maa Welfare Organization was founded by the late Engineer Mir Ghias Khan, and every contribution is recorded and accounted for.</p>
      <div class="cta"><a class="btn primary" href="#help">Ask for help</a><a class="btn" href="#give">Give</a></div>
    </div>
    <div class="panel">
      <div class="eyebrow">In numbers</div>
      ${figures}
      ${s ? `<div class="big3" style="margin-top:18px;border-top:1px solid var(--line);padding-top:14px"><div><b class="num">${s.helped.Education}</b><span>students helped</span></div><div><b class="num">${s.helped.Medical}</b><span>medical cases helped</span></div><div><b class="num">${s.donors}</b><span>donors</span></div></div>` : ""}
    </div>
  </section>

  <section class="block">
    <div class="founder">
      <figure class="fphoto"><img src="${FOUNDER_IMG}" alt="Engineer Mir Ghias Khan, founder of Maa Welfare Organization" width="440" height="553"><figcaption><b>Engr. Mir Ghias Khan</b><span>Founder</span></figcaption></figure>
      <div><div class="head"><div class="eyebrow">Our founder</div><h2>In memory of Engr. Mir Ghias Khan</h2></div>
      <p class="prewrap" style="max-width:62ch;margin-top:14px">${esc(c.founderNote || "Maa Welfare Organization was founded by the late Engineer Mir Ghias Khan. The work done here continues in his name, so that no capable student leaves school for lack of fees and no family is left alone with a medical bill.")}</p></div>
    </div>
  </section>

  ${s && s.campaigns && s.campaigns.length ? `<section class="block" id="campaigns"><div class="head"><div class="eyebrow">Campaigns</div><h2>Current appeals</h2></div><div class="cards">${s.campaigns.map(c => `<div class="card"><h3>${esc(c.name)}</h3><p class="muted prewrap" style="margin-top:6px">${esc(c.description)}</p><div style="margin-top:12px;display:flex;justify-content:space-between;gap:8px"><b class="num">${omr(c.raised)} ${esc(CUR)}</b><span class="muted num">goal ${omr(c.goal)}</span></div><div style="margin-top:6px;height:10px;border-radius:6px;background:var(--brand-soft);overflow:hidden"><i style="display:block;height:100%;width:${c.goal > 0 ? Math.min(100, c.raised / c.goal * 100).toFixed(0) : 0}%;background:var(--brand)"></i></div>${c.endDate ? `<p class="muted" style="font-size:.85rem;margin-top:6px">Ends ${esc(fdate(c.endDate))}</p>` : ""}</div>`).join("")}</div></section>` : ""}
  <section class="block"><div class="head"><div class="eyebrow">Explore</div><h2>Find out more</h2></div><div class="cards">
    <a class="card" href="#help" style="text-decoration:none;color:inherit"><h3>Ask for help</h3><p class="muted" style="margin-top:6px">Prepare a request and see what evidence helps.</p></a>
    <a class="card" href="#give" style="text-decoration:none;color:inherit"><h3>Give</h3><p class="muted" style="margin-top:6px">Support a student's education and tell us about your gift.</p></a>
    <a class="card" href="#work" style="text-decoration:none;color:inherit"><h3>Our work</h3><p class="muted" style="margin-top:6px">What we support and how a request is handled.</p></a>
    <a class="card" href="#accountability" style="text-decoration:none;color:inherit"><h3>Where the money goes</h3><p class="muted" style="margin-top:6px">Totals received and given out.</p></a>
    <a class="card" href="#updates" style="text-decoration:none;color:inherit"><h3>Latest updates</h3><p class="muted" style="margin-top:6px">Stories of the help given.</p></a>
  </div></section>
  </div>
  <div data-page="work">
  <section class="block first" id="programs">
    <div class="head"><div class="eyebrow">What we support</div><h2>Education first, with smaller support for health and food</h2><p class="muted">Most of our help goes to education. We also give limited medical and grocery support, according to the funds available and the need in front of us.</p></div>
    <div class="cards">
      <div class="card" style="border-color:var(--accent);border-width:2px"><div class="eyebrow">Our main focus</div><h3>Education</h3><ul><li>Tuition and exam fees</li><li>Books, uniforms and supplies</li><li>Support for students to continue their studies</li></ul></div>
      <div class="card"><div class="eyebrow">Limited support</div><h3>Medical</h3><ul><li>Hospital and treatment bills</li><li>Medicines</li><li>Help for families facing urgent care</li></ul></div>
      <div class="card"><div class="eyebrow">Limited support</div><h3>Grocery</h3><ul><li>Food and basic groceries for families in hardship</li><li>Paid to the shop or supplier, not as cash</li></ul></div>
    </div>
    <h3 style="margin:28px 0 12px">How a request is handled</h3>
    <ol class="steps">
      <li><b>Request</b><p class="muted">The student or family tells us what is needed.</p></li>
      <li><b>Review</b><p class="muted">The team checks the situation and the papers.</p></li>
      <li><b>Decision</b><p class="muted">Help is approved based on need and available funds.</p></li>
      <li><b>Payment</b><p class="muted">Money goes to the school or hospital and is recorded.</p></li>
    </ol>
  </section>

  </div>
  <div data-page="help">
  <section class="block first">
    <div class="head"><div class="eyebrow">Get help</div><h2>Ask for assistance</h2><p class="muted">If you or your family cannot pay school fees, tell us what you need. We also give limited help with medical bills and groceries. The team reviews every request and decides based on need and the funds available. Clear evidence helps us help you faster.</p></div>
    ${c.formUrl && /^https:\/\//.test(c.formUrl) ? `<p style="margin-bottom:18px"><a class="btn primary big" href="${esc(c.formUrl)}" target="_blank" rel="noopener">Apply online</a></p>` : ""}
    <div class="card" style="margin-bottom:18px"><h3>Track your application</h3><p class="muted" style="margin:6px 0 12px">Type the reference number from your message to see where your request is and any message from us.</p>
      <form id="trackform" style="display:flex;gap:10px;flex-wrap:wrap"><input id="tr_ref" type="text" placeholder="REQ-261112-AB12" style="flex:1;min-width:200px"><button class="btn primary" type="submit">Check status</button></form><div id="tr_out" style="margin-top:10px"></div></div>
    <div class="cards">
      <div class="card"><h3>Evidence that helps</h3><p class="muted" style="margin-top:6px">Send clear photos of the papers that apply to you. Your documents are used only for documentation and for completing your application. They are kept private and are seen only by the administrator.</p><ul>${EVID.map(x => `<li>${esc(x)}</li>`).join("")}</ul><p class="muted" style="margin-top:12px"><b>School, hospital or shop?</b> <a href="#confirm">Confirm and reconcile a payment</a>.</p></div>
      <form class="card" id="reqform" style="display:grid;gap:16px" novalidate><h3>Apply for help</h3>
        <div class="rprog"><div class="rbar"><i id="r_bar"></i></div><b id="r_stepname">Step 1 of 4: About the student or patient</b></div>
        <div class="rstep" data-s="1" style="display:grid;gap:12px"><h4>About the student or patient</h4>
          <div class="field"><label class="lab" for="r_type">What kind of help?</label><select id="r_type">${TYPES.map(x => `<option>${x}</option>`).join("")}</select></div>
          <div class="field"><label class="lab" for="r_name">Full name *</label><input id="r_name" type="text" autocomplete="name"></div>
          <div class="field"><label class="lab" for="r_father">Father or guardian name *</label><input id="r_father" type="text" ></div>
          <div class="two"><div class="field"><label class="lab" for="r_idtype">Identity document *</label><select id="r_idtype">${["CNIC", "B-Form", "Passport"].map(x => `<option>${x}</option>`).join("")}</select></div><div class="field"><label class="lab" for="r_idno">Number *</label><input id="r_idno" type="text" inputmode="numeric"></div></div>
          <div class="two"><div class="field"><label class="lab" for="r_phone">Phone or WhatsApp *</label><input id="r_phone" type="text" inputmode="tel" autocomplete="tel"></div><div class="field"><label class="lab" for="r_place">Village or city *</label><input id="r_place" type="text" ></div></div></div>
        <div class="rstep" data-s="2" hidden style="display:grid;gap:12px"><h4>What is needed</h4>
          <div class="field"><label class="lab" for="r_details">Describe the need *</label><textarea id="r_details" placeholder="For example: Class 9 fees for the second term."></textarea></div>
          <div class="field"><label class="lab" for="r_amount">Amount needed (${esc(CUR)}) *</label><input id="r_amount" type="text" inputmode="decimal"></div></div>
        <div class="rstep" data-s="3" hidden style="display:grid;gap:12px"><h4>Who should be paid?</h4>
          <p class="muted" style="font-size:.9rem">We pay the school, hospital or shop directly, not a personal account.</p>
          <div class="field"><label class="lab" for="r_pname">Name of the school, hospital or shop *</label><input id="r_pname" type="text" ></div>
          <div class="field"><label class="lab" for="r_ptitle">Account title *</label><input id="r_ptitle" type="text" ></div>
          <div class="two"><div class="field"><label class="lab" for="r_pbank">Bank *</label><input id="r_pbank" type="text" ></div><div class="field"><label class="lab" for="r_pacct">Account number or IBAN *</label><input id="r_pacct" type="text" ></div></div></div>
        <div class="rstep" data-s="4" hidden style="display:grid;gap:12px"><h4>Your documents</h4>
          <p class="muted" style="font-size:.9rem">Choose the type, then the photo or PDF. Your CNIC, B-Form or passport is needed. Add more if you have them, such as a fee voucher or a medical report.</p>
          <div id="r_docs" style="display:grid;gap:10px">${docRow()}</div>
          <div><button type="button" class="btn small" id="r_adddoc">+ Add another document</button></div>
          <label class="chk"><input type="checkbox" id="r_ok"><span>The information I gave is true. My documents are used only for documentation and are seen only by the administrator.</span></label></div>
        <div id="r_out"></div>
        <div class="rnav"><button type="button" class="btn" id="r_back" hidden>Back</button><button type="button" class="btn primary big" id="r_next">Next</button><button class="btn primary big" type="submit" id="r_submit" hidden>Prepare my application</button></div>
      </form>
    </div>
  </section>
  </div>
  <div data-page="give">
  <section class="block first">
    <div class="head"><div class="eyebrow">Give</div><h2>Support a student's education</h2><p class="muted">Every gift is recorded and the totals are published. Most gifts go to education. You can also give to Medical support or to General, which we use where the need is greatest.</p></div>
    <div class="cards">
      <div class="card"><h3>How to give</h3><p class="muted prewrap" style="margin-top:8px">${esc(c.giveText || "Donation details will be added here soon.")}</p>
        <ul><li>Please give by bank transfer, cheque or online payment where you can, so there is a clear record.</li><li>Keep your receipt or a screenshot of the payment.</li></ul>
        ${c.regInfo ? `<p class="muted prewrap" style="margin-top:12px;font-size:.9rem"><b>Registration:</b> ${esc(c.regInfo)}</p>` : ""}</div>
      <form class="card" id="giveform" style="display:grid;gap:12px"><h3>Tell us about your donation</h3>
        <div class="field"><label class="lab" for="g_name">Your name *</label><input id="g_name" type="text" autocomplete="name"></div>
        <div class="field"><label class="lab" for="g_contact">Phone or email *</label><input id="g_contact" type="text" autocomplete="email"></div>
        <div class="field"><label class="lab" for="g_amount">Amount (${esc(CUR)}) *</label><input id="g_amount" type="text" inputmode="decimal"></div>
        <div class="field"><label class="lab" for="g_date">Date of the gift</label><input id="g_date" type="date" value="${today()}"></div>
        <div class="field"><label class="lab" for="g_method">How did you give?</label><select id="g_method">${["Bank transfer", "Cheque", "Online payment", "Cash", "Other"].map(x => `<option>${x}</option>`).join("")}</select></div>
        <div class="field"><label class="lab" for="g_ref">Transaction or cheque number</label><input id="g_ref" type="text"></div>
        <div class="field"><label class="lab" for="g_fund">Which fund?</label><select id="g_fund">${FUNDS.map(x => `<option>${x}</option>`).join("")}</select></div>
        <div class="field"><label class="lab" for="g_note">Note (optional)</label><textarea id="g_note"></textarea></div>
        <label class="chk"><input type="checkbox" id="g_want"><span>Please send me a receipt.</span></label>
        <label class="chk"><input type="checkbox" id="g_terms"><span>I have read the <a href="#terms" data-terms>terms for donations</a>. I am giving freely, from money I can afford.</span></label>
        <button class="btn primary big" type="submit">Prepare my message</button>
        <p class="muted" style="font-size:.85rem">This page does not send anything by itself. It prepares a message for you to send to us, with your receipt or a screenshot of the payment attached.</p>
        <div id="g_out"></div>
      </form>
    </div>
    <div class="card" id="terms" style="margin-top:18px"><h3>Terms for donations</h3>
      <p class="muted" style="margin-top:6px">Please read these before you give.</p>
      <ol class="terms">
        <li><b>Give when you are financially sound.</b> Donate only what you can comfortably afford, after your own needs, your family's needs and your debts are met. Please do not borrow or put your family under strain to give.</li>
        <li><b>Giving is voluntary.</b> No one is pressed to give, and a gift creates no obligation to give again.</li>
        <li><b>How gifts are used.</b> Gifts are used for the cause you choose: Education, Medical support or General. General gifts are used where the need is greatest, with education as our main focus. If a cause cannot be served, we will use the gift for the nearest purpose.</li>
        <li><b>Gifts are final.</b> Donations are not refunded, except where there was a clear mistake, such as a wrong amount or a duplicate transfer. Please tell us within 14 days with your receipt.</li>
        <li><b>Records and receipts.</b> Every gift is recorded in our ledger. We give a receipt on request. Please give by bank transfer, cheque or online payment where you can, so there is a clear record.</li>
        <li><b>Running costs.</b> We keep running costs low, and totals received and given out are published on the Accountability page.</li>
        <li><b>Your privacy.</b> Your name and details are used only to record your gift and to send a receipt. We do not publish donor names without your permission.</li>
        <li><b>No benefit in return.</b> Donors receive no goods or services in return for a gift.</li>
      </ol>
      <p class="muted" style="font-size:.85rem;margin-top:8px">These terms may be updated from time to time.</p></div>
  </section>
  </div>
  <div data-page="confirm">
  <section class="block first">
    <div class="head"><div class="eyebrow">For schools, hospitals and shops</div><h2>Confirm and reconcile a payment</h2><p class="muted">Thank you for supporting this student or patient. Please check that the payment has reached your account and matches your records, then confirm it here so that we can close the request.</p></div>
    <form class="card" id="cfform" style="display:grid;gap:12px;max-width:640px">
      <div class="field"><label class="lab" for="k_ref">Reference number *</label><input id="k_ref" type="text" placeholder="REQ-261112-AB12"></div>
      <div id="k_info"></div>
      <div class="field"><label class="lab" for="k_inst">Name of your school, hospital or shop *</label><input id="k_inst" type="text"></div>
      <div class="field"><label class="lab" for="k_by">Your name and position *</label><input id="k_by" type="text"></div>
      <div class="field"><label class="lab" for="k_phone">Your phone number *</label><input id="k_phone" type="text" inputmode="tel"></div>
      <div class="field"><label class="lab" for="k_amt">Amount received (${esc(CUR)}) *</label><input id="k_amt" type="text" inputmode="decimal"></div>
      <div class="field"><label class="lab" for="k_rcpt">Your receipt number</label><input id="k_rcpt" type="text"></div>
      <div class="field"><label class="lab" for="k_match">Does it match the student's, patient's or customer's account? *</label><select id="k_match"><option>Yes, it matches our records</option><option>No, it does not match. Please contact me.</option></select></div>
      <div class="field"><label class="lab" for="k_date">Date received</label><input id="k_date" type="date" value="${today()}"></div>
      <div class="field"><label class="lab" for="k_note">Note (optional)</label><textarea id="k_note"></textarea></div>
      <button class="btn primary big" type="submit">Confirm payment</button>
      <p class="muted" style="font-size:.85rem">Type your reference number and the details fill in. Press Confirm, then send the ready message to us on WhatsApp with a photo of your receipt if you have one.</p>
      <div id="k_out"></div></form>
  </section>
  </div>
  <div data-page="accountability">
  <section class="block first" id="accountability">
    <div class="head"><div class="eyebrow">Accountability</div><h2>Where the money goes</h2><p class="muted">Every donation and every payment is written into a private ledger kept by the team. Totals are published here. Names of people we help are never shown.</p></div>
    ${s ? `<div class="cards">
      <div class="card"><h3>Spending by type</h3>${bars(s.categories, s.spent || 1)}</div>
      <div class="card"><h3>By fund</h3><div class="bars">${FUNDS.map(f => { const x = (s.byFund || {})[f] || {received: 0, spent: 0}; return `<div class="bar"><span>${f}</span><div class="track"><i style="width:${x.received ? Math.min(100, x.spent / x.received * 100).toFixed(1) : 0}%"></i></div><span class="num">${omr(x.spent)} of ${omr(x.received)}</span></div>`; }).join("")}</div><p class="muted" style="margin-top:10px;font-size:.85rem">${CUR} given out compared with received, per fund.</p></div>
    </div>` : '<div class="empty">The first report will appear here once the team publishes it.</div>'}
  </section>

  </div>
  <div data-page="updates">
  <section class="block first" id="updates">
    <div class="head"><div class="eyebrow">Updates</div><h2>What we have done</h2></div>
    ${stories.length ? stories.map(x => `<article class="story"><h3>${esc(x.title)}</h3><small>${esc(fdate(x.date))}</small><p class="prewrap" style="margin-top:6px">${esc(x.text)}</p></article>`).join("") : '<div class="empty">Stories of the help given will be shared here.</div>'}
  </section>

  </div>
  <div data-page="contact">
  <section class="block first" id="help">
    <div class="head"><div class="eyebrow">Get in touch</div><h2>Ask for help, or give</h2></div>
    <div class="cards">
      <div class="card"><h3>Need help?</h3><p class="muted prewrap" style="margin-top:8px">${esc(c.contactText || "Contact details will be added here soon.")}</p></div>
      <div class="card"><h3>Want to give?</h3><p class="muted prewrap" style="margin-top:8px">${esc(c.giveText || "Donation details will be added here soon.")}</p></div>
      <div class="card"><h3>Follow our work</h3><p class="muted" style="margin-top:8px">See photos and news on our Facebook page.</p><p style="margin-top:12px"><a class="btn" href="https://www.facebook.com/share/1T3snzzQiP/?mibextid=wwXIfr" target="_blank" rel="noopener">Open Facebook page</a></p></div>
      <form class="card" id="msgform" style="display:grid;gap:12px"><h3>Send us a message</h3>
        <div class="field"><label class="lab" for="m_name">Your name *</label><input id="m_name" type="text" autocomplete="name"></div>
        <div class="field"><label class="lab" for="m_contact">Phone or email *</label><input id="m_contact" type="text"></div>
        <div class="field"><label class="lab" for="m_topic">About</label><select id="m_topic"><option>A question</option><option>Volunteering</option><option>Donating goods</option><option>Partnership</option><option>Other</option></select></div>
        <div class="field"><label class="lab" for="m_msg">Message *</label><textarea id="m_msg"></textarea></div>
        <button class="btn primary" type="submit">Prepare my message</button><div id="m_out"></div></form>
    </div>
  </section>
  </div>`;
  { const old = $("#wafab"); if (old) old.remove(); const wd = String((pub.content || {}).waNumber || "").replace(/\D/g, ""); if (wd.length >= 8) { const a = document.createElement("a"); a.id = "wafab"; a.className = "wafab"; a.target = "_blank"; a.rel = "noopener"; a.href = "https://wa.me/" + wd + "?text=" + encodeURIComponent("Assalam o Alaikum, I would like to ask about Maa Welfare Organization."); a.innerHTML = '<svg width="20" height="20" viewBox="0 0 24 24" aria-hidden="true"><path fill="currentColor" d="M12 2a10 10 0 0 0-8.6 15.1L2 22l5-1.3A10 10 0 1 0 12 2zm0 18.2c-1.5 0-2.9-.4-4.1-1.1l-.3-.2-3 .8.8-2.9-.2-.3A8.2 8.2 0 1 1 12 20.200zm4.500-6.100c-.2-.1-1.500-.7-1.700-.8-.2-.1-.4-.1-.6.1l-.8 1c-.1.200-.3.200-.5.100-1.400-.7-2.300-1.200-3.200-2.800-.2-.4.200-.4.700-1.200.1-.2 0-.3 0-.5l-.8-1.800c-.2-.5-.4-.4-.6-.4h-.5c-.2 0-.5.100-.7.300-.7.700-1 1.600-.9 2.500.4 2 1.700 3.700 3.600 4.800 1.800 1 3 1.200 4.100.9.800-.2 1.900-1 2.100-1.800.1-.5.100-.9 0-1z"/></svg><span>Chat with us</span>'; $("#pub").appendChild(a); } }
  showPage(curPage);
  bindRequest(); bindGive(); bindMsg(); bindTrack(); bindConfirm();
}
function applyBg() { const c = pub.content || {}, r = document.documentElement.style; if (c.bgUrl && /^(https:|\/_blob\/)/.test(c.bgUrl)) { r.setProperty("--mtn", 'url("' + c.bgUrl + '")'); } else { r.removeProperty("--mtn"); } }
const DOCT = ["CNIC (front and back)", "B-Form", "Passport copy", "Fee voucher or school letter", "Last result card", "Doctor's prescription or medical report", "Hospital estimate or bill", "Proof of family income", "Reference letter", "Bank details or fee challan", "Other document"];
const docRow = () => '<div class="docrow"><select aria-label="Type of document">' + DOCT.map(x => "<option>" + esc(x) + "</option>").join("") + '</select><input type="file" accept="image/*,application/pdf" aria-label="Choose the photo or PDF"></div>';
function prepOut(out, text, intro) {
  const c = pub.content || {}, digits = String(c.waNumber || "").replace(/\D/g, ""), wa = digits.length >= 8 ? "https://wa.me/" + digits + "?text=" + encodeURIComponent(text) : "";
  out.innerHTML = `<div style="margin-top:6px"><h3>Your message is ready</h3><p class="muted" style="margin:6px 0 10px">${esc(intro).replace("{WA}", wa ? " on WhatsApp" : "")}</p><pre class="receipt">${esc(text)}</pre><div style="display:flex;gap:10px;flex-wrap:wrap;margin-top:12px"><button type="button" class="btn primary" data-copy>Copy message</button>${wa ? `<a class="btn" href="${esc(wa)}" target="_blank" rel="noopener">Send on WhatsApp</a>` : ""}</div><p class="muted" data-cm style="margin-top:8px"></p>${wa ? "" : `<p class="muted prewrap" style="margin-top:8px">Send it to: ${esc(c.contactText || "Contact details will be added soon.")}</p>`}</div>`;
  const pre = out.querySelector("pre"), m = out.querySelector("[data-cm]");
  out.querySelector("[data-copy]").onclick = async () => { try { await navigator.clipboard.writeText(text); m.textContent = "Copied. Paste it into WhatsApp or a message."; } catch (x) { const r = document.createRange(); r.selectNodeContents(pre); const s = getSelection(); s.removeAllRanges(); s.addRange(r); m.textContent = "Text selected. Copy it by hand."; } };
}
function bindTrack() {
  const f = $("#trackform"); if (!f) return;
  f.onsubmit = e => { e.preventDefault(); const o = $("#tr_out"); o.innerHTML = trackHTML($("#tr_ref").value);
    o.querySelectorAll("[data-qr]").forEach(b => { b.onclick = () => { $("#tr_msg").value = b.dataset.qr; }; });
    const s = o.querySelector("[data-trsend]"); if (s) s.onclick = () => { const m = ($("#tr_msg").value || "").trim(), r = $("#tr_reply"); if (!m) { r.innerHTML = '<p class="msg err">Please tap a quick reply or write a message.</p>'; return; } prepOut(r, "Reply about application " + s.dataset.trsend + "\n\n" + m, "Nothing has been sent yet. Press the button to send your reply to us{WA}."); };
  };
}
function bindConfirm() {
  const f = $("#cfform"); if (!f) return;
  $("#k_ref").oninput = () => { const k = $("#k_ref").value.trim().toUpperCase().replace(/[^A-Z0-9-]/g, ""), it = pub.status && pub.status.items && pub.status.items[k], i = $("#k_info"); if (it && it.amt) { if (!$("#k_amt").value) $("#k_amt").value = it.amt; if (!$("#k_inst").value && it.inst) $("#k_inst").value = it.inst; } i.innerHTML = it && it.amt ? `<div class="card"><b>Payment on record</b><p class="muted" style="margin-top:4px">${esc(CUR)} ${omr(it.amt)}${it.inst ? " to " + esc(it.inst) : ""}</p></div>` : ""; };
  f.onsubmit = e => {
    e.preventDefault();
    const v = id => (($("#" + id) || {}).value || "").trim(), out = $("#k_out");
    if (!v("k_ref") || !v("k_inst") || !v("k_by") || !v("k_phone") || !v("k_amt")) { out.innerHTML = '<p class="msg err">Please fill in the reference, your institution, your name, phone and the amount received.</p>'; return; }
    prepOut(out, ["Payment reconciliation - confirmation", "Reference: " + v("k_ref").toUpperCase(), "", "Institution: " + v("k_inst"), "Confirmed by: " + v("k_by"), "Phone: " + v("k_phone"), "Amount received: " + CUR + " " + v("k_amt"), v("k_rcpt") ? "Our receipt number: " + v("k_rcpt") : null, "Matched with our records: " + v("k_match"), v("k_date") ? "Date received: " + v("k_date") : null, v("k_note") ? "Note: " + v("k_note") : null, "", "We have checked the payment from Maa Welfare Organization against our records."].filter(x => x !== null).join("\n"), "Almost done. Press the WhatsApp button to send this confirmation to us{WA}. Add a photo of your stamped receipt if you have one.");
  };
}
function bindGive() {
  const f = $("#giveform"); if (!f) return;
  f.onsubmit = e => {
    e.preventDefault();
    const v = id => (($("#" + id) || {}).value || "").trim(), out = $("#g_out"), pick = n => (($("#" + n) || {}).value || "");
    const name = v("g_name"), contact = v("g_contact"), amt = v("g_amount");
    if (!$("#g_terms").checked) { out.innerHTML = '<p class="msg err">Please read and accept the terms for donations.</p>'; return; }
    if (!name || !contact || !amt) { out.innerHTML = '<p class="msg err">Please fill in your name, a phone number or email, and the amount.</p>'; return; }
    const text = ["Donation details - Maa Welfare Organization", "", "Donor: " + name, "Contact: " + contact, "Amount: " + CUR + " " + amt, v("g_date") ? "Date: " + v("g_date") : null, "Method: " + pick("g_method"), v("g_ref") ? "Transaction or cheque number: " + v("g_ref") : null, "Fund: " + pick("g_fund"), v("g_note") ? "Note: " + v("g_note") : null, $("#g_want").checked ? "Please send me a receipt." : null, "", "I accept the terms for donations.", "My receipt or payment screenshot is attached."].filter(x => x !== null).join("\n");
    prepOut(out, text, "Nothing has been sent yet. Send this message to us{WA} and attach your receipt or a screenshot of the payment.");
  };
}
function bindMsg() {
  const f = $("#msgform"); if (!f) return;
  f.onsubmit = e => {
    e.preventDefault();
    const v = id => (($("#" + id) || {}).value || "").trim(), out = $("#m_out");
    if (!v("m_name") || !v("m_contact") || !v("m_msg")) { out.innerHTML = '<p class="msg err">Please fill in your name, a phone number or email, and your message.</p>'; return; }
    prepOut(out, ["Message to Maa Welfare Organization", "", "From: " + v("m_name"), "Contact: " + v("m_contact"), "About: " + v("m_topic"), "", v("m_msg")].join("\n"), "Nothing has been sent yet. Send this message to us{WA}.");
  };
}
function bindRequest() {
  const f = $("#reqform"); if (!f) return;
  $("#r_adddoc").onclick = () => { $("#r_docs").insertAdjacentHTML("beforeend", docRow()); };
  const steps = Array.from(f.querySelectorAll(".rstep")), NAMES = ["About the student or patient", "What is needed", "Who should be paid", "Your documents"], REQ = [["r_name", "r_father", "r_idno", "r_phone", "r_place"], ["r_details", "r_amount"], ["r_pname", "r_ptitle", "r_pbank", "r_pacct"], []];
  let cur = 0;
  const show = n => { cur = n; steps.forEach((s, i) => { s.hidden = i !== n; }); $("#r_bar").style.width = (n + 1) * 25 + "%"; $("#r_stepname").textContent = "Step " + (n + 1) + " of 4: " + NAMES[n]; $("#r_back").hidden = n === 0; $("#r_next").hidden = n === 3; $("#r_submit").hidden = n !== 3; $("#r_out").innerHTML = ""; f.scrollIntoView({block: "start", behavior: "instant"}); };
  const check = n => { let ok = true, first = null; REQ[n].forEach(id => { const el = $("#" + id), bad = !el.value.trim(); el.classList.toggle("bad", bad); if (bad) { ok = false; if (!first) first = el; } }); if (!ok) { $("#r_out").innerHTML = '<p class="msg err">Please fill in the parts marked with a star.</p>'; first.focus(); } else $("#r_out").innerHTML = ""; return ok; };
  $("#r_next").onclick = () => { if (check(cur)) show(cur + 1); };
  $("#r_back").onclick = () => show(cur - 1);
  f.addEventListener("input", e => { if (e.target.classList) e.target.classList.remove("bad"); });
  f.onsubmit = async e => {
    e.preventDefault();
    if (cur < 3) { if (check(cur)) show(cur + 1); return; }
    const v = id => (($("#" + id) || {}).value || "").trim(), c = pub.content || {}, out = $("#r_out");
    const err = m => { out.innerHTML = `<p class="msg err">${esc(m)}</p>`; };
    const pick = n => (($("#" + n) || {}).value || "");
    const name = v("r_name"), phone = v("r_phone"), details = v("r_details");
    if (!name || !v("r_father") || !v("r_idno") || !phone || !v("r_place") || !details || !v("r_amount")) return err("Please fill in the parts marked with a star: names, identity number, phone, village, the need and the amount.");
    if (!v("r_pname") || !v("r_ptitle") || !v("r_pbank") || !v("r_pacct")) return err("Please fill in who should be paid: name, account title, bank and account number or IBAN.");
    const docs = Array.from(f.querySelectorAll("#r_docs .docrow")).map(r => ({type: r.querySelector("select").value, file: r.querySelector("input[type=file]").files[0]})).filter(d => d.file);
    if (!docs.some(d => /CNIC|B-Form|Passport/.test(d.type))) return err("Please add your identity document (CNIC, B-Form or passport) below.");
    if (!$("#r_ok").checked) return err("Please confirm that the information is true.");
    let up = [];
    if (assetsCap) { out.innerHTML = '<p class="msg">Uploading your documents…</p>'; try { for (const d of docs) { const r = await assetsCap.upload(d.file); up.push({type: d.type, name: d.file.name, url: r.url}); } } catch (x) { return err("A document could not be uploaded. Please try smaller photos."); } }
    const ev = docs.map((d, i) => d.type + " (" + d.file.name + ")" + (up[i] ? ": " + up[i].url : ""));
    const ref = "REQ-" + today().replace(/-/g, "").slice(2) + "-" + Math.random().toString(36).slice(2, 6).toUpperCase();
    const L2 = (l, x) => x ? l + ": " + x : null;
    const text = ["Application for assistance - Maa Welfare Organization", "Reference: " + ref, "Type of help: " + pick("r_type"), "", "STUDENT OR PATIENT", L2("Full name", name), L2("Father or guardian", v("r_father")), pick("r_idtype") + " number: " + v("r_idno"), L2("Phone or WhatsApp", phone), L2("Village or city", v("r_place")), "", "THE NEED", L2("Description", details), "Amount needed: " + CUR + " " + v("r_amount"), "", "PAY TO", L2("Name", v("r_pname")), L2("Account title", v("r_ptitle")), L2("Bank", v("r_pbank")), L2("Account number or IBAN", v("r_pacct")), "", "DOCUMENTS\n- " + ev.join("\n- "), "", "I confirm that this information is true."].filter(x => x !== null).join("\n");
    prepOut(out, text, "Nothing has been sent yet. Send this message to us{WA}, together with photos of your documents. Keep your reference number. You can follow your application on this page using it.");
    if (!up.length) {
      const box = document.createElement("div"); box.style.marginTop = "14px";
      if (downloads && window.JSZip) { box.innerHTML = '<div class="card"><b>Your documents</b><p class="muted" style="margin:6px 0 10px">Save your documents and application together as one ZIP file. Then send that file to us in WhatsApp.</p><button type="button" class="btn primary" id="r_zip">Save my documents as one ZIP file</button><p class="muted" id="r_zipmsg" style="margin-top:8px"></p></div>'; out.appendChild(box);
        $("#r_zip").onclick = async () => { const zm = $("#r_zipmsg"); try { const z = new JSZip(); z.file("application-" + ref + ".txt", text); docs.forEach((d, i) => z.file((i + 1) + "-" + d.type.replace(/[^A-Za-z0-9]+/g, "_") + "-" + d.file.name.replace(/[^A-Za-z0-9._-]+/g, "_"), d.file)); await downloads.save({filename: ref + ".zip", data: await z.generateAsync({type: "blob"})}); zm.textContent = "Saved. Send the file to us in WhatsApp."; } catch (x) { zm.textContent = x && x.code === "declined" ? "Not saved." : "Could not make the file. Please send the photos in WhatsApp instead."; } }; }
      else { box.innerHTML = '<div class="card"><b>Your documents</b><p class="muted" style="margin-top:6px">Please send the photos of these documents in WhatsApp together with the message above:</p><ul>' + docs.map(d => "<li>" + esc(d.type) + "</li>").join("") + "</ul></div>"; out.appendChild(box); }
    }
  };
}

/* ---------- team area: field definitions ---------- */
const accOpts = () => S.accounts.map(a => ({v: a.id, l: a.name}));
const caseOpts = () => [{v: "", l: "Not linked to a case"}].concat(S.cases.map(c => ({v: c.id, l: (c.applicant || "Case") + " (" + c.type + ")"})));
const strs = a => a.map(x => ({v: x, l: x}));
const lastAcct = k => { const r = S[k].slice().sort((a, b) => String(b.createdAt || "").localeCompare(String(a.createdAt || "")))[0]; return r && S.accounts.some(a => a.id === r.account) ? r.account : (S.accounts[0] ? S.accounts[0].id : ""); };
const donors = () => Array.from(new Set(S.donations.map(d => d.donor).filter(Boolean)));
const payees = () => Array.from(new Set(S.expenses.map(d => d.payee).filter(Boolean)));
const items = () => Array.from(new Set(S.stock.map(d => d.item).filter(Boolean)));
const campaignOpts = () => [{v: "", l: "No campaign"}].concat(S.campaigns.map(c => ({v: c.id, l: c.name})));
const yr = () => String(new Date().getFullYear());
const CFG = {
  donations: {name: "Donation", sort: "date", fields: [
    {k: "amount", l: "Amount (CUR)", t: "number", req: 1, big: 1},
    {k: "date", l: "Date received", t: "date", req: 1, def: today},
    {k: "donor", l: "Donor name", t: "text", req: 1, list: donors, full: 1},
    {k: "fund", l: "Which fund is it for?", t: "chips", o: () => strs(FUNDS), def: () => "Education", full: 1, help: "Education and Medical are for those purposes. General can be used for either."},
    {k: "method", l: "How was it received?", t: "chips", o: () => strs(METHODS), def: () => "Cash", full: 1},
    {k: "account", l: "Where is the money kept?", t: "account", req: 1, def: () => lastAcct("donations")},
    {k: "campaign", l: "Campaign (optional)", t: "select", o: campaignOpts},
    {k: "reference", l: "Reference or receipt no. (optional)", t: "text"},
    {k: "note", l: "Note (optional)", t: "textarea", full: 1},
    {k: "attachments", l: "Attach receipt or bank slip", t: "files", full: 1}]},
  expenses: {name: "Payment", sort: "date", fields: [
    {k: "amount", l: "Amount (CUR)", t: "number", req: 1, big: 1},
    {k: "date", l: "Date paid", t: "date", req: 1, def: today},
    {k: "payee", l: "Paid to (school, hospital, shop)", t: "text", req: 1, list: payees, full: 1},
    {k: "category", l: "What was it for?", t: "select", o: () => strs(CATS)},
    {k: "caseId", l: "Person helped (linked case)", t: "select", o: caseOpts},
    {k: "fund", l: "Paid from which fund?", t: "chips", o: () => strs(FUNDS), def: () => "General", full: 1},
    {k: "account", l: "Paid from which account?", t: "account", req: 1, def: () => lastAcct("expenses")},
    {k: "campaign", l: "Campaign (optional)", t: "select", o: campaignOpts},
    {k: "receipt", l: "Receipt or invoice no. (optional)", t: "text"},
    {k: "note", l: "Note (optional)", t: "textarea", full: 1},
    {k: "attachments", l: "Attach invoice or receipt", t: "files", full: 1}]},
  cases: {name: "Request", sort: "openedOn", filter: {k: "status", opts: () => STATUSES}, hint: "Every request for help is recorded here. Press Review to check the evidence and decide.", fields: [
    {t: "heading", l: "Who needs help"},
    {k: "applicant", l: "Student or patient name", t: "text", req: 1},
    {k: "type", l: "Type of help", t: "chips", o: () => strs(TYPES), def: () => "Education"},
    {k: "ref", l: "Reference number (from the applicant's message)", t: "text", help: "The applicant sees their progress on the Get help page using this number."},
    {k: "fatherName", l: "Father or guardian name", t: "text"}, {k: "dob", l: "Date of birth", t: "date"},
    {k: "gender", l: "Gender", t: "chips", o: () => strs(["Male", "Female", "Other"]), def: () => ""},
    {k: "idType", l: "Identity document", t: "chips", o: () => strs(["CNIC", "B-Form", "Passport"]), def: () => "CNIC"}, {k: "idNo", l: "CNIC, B-Form or passport number", t: "text"},
    {k: "contact", l: "Phone or WhatsApp", t: "text"}, {k: "place", l: "Village or city", t: "text"}, {k: "district", l: "Tehsil and district", t: "text"},
    {k: "familySize", l: "People in the family", t: "number"}, {k: "income", l: "Monthly family income (CUR)", t: "number"}, {k: "occupation", l: "Occupation of earner", t: "text"},
    {t: "heading", l: "The need"},
    {k: "details", l: "What is needed (school, hospital, fees, treatment)", t: "text", full: 1},
    {k: "requested", l: "Amount requested (CUR)", t: "number"}, {k: "openedOn", l: "Request date", t: "date", def: today},
    {k: "source", l: "How did the request arrive?", t: "select", o: () => strs(["Walk-in", "Phone", "WhatsApp", "Facebook", "Referral", "Online form"])},
    {k: "referee", l: "Who can confirm it (name and phone)", t: "text"},
    {t: "heading", l: "Who will be paid (school, hospital or shop)"},
    {k: "payeeName", l: "Name of school, hospital or shop", t: "text"}, {k: "payeeTitle", l: "Account title", t: "text"},
    {k: "payeeBank", l: "Bank", t: "text"}, {k: "payeeBranch", l: "Branch", t: "text"},
    {k: "payeeAcct", l: "Account number or IBAN", t: "text"}, {k: "payeePhone", l: "Phone of the person to contact there", t: "text"},
    {k: "paidOn", l: "Date the payment was made", t: "date"}, {k: "payRef", l: "Transaction or cheque number", t: "text"},
    {t: "heading", l: "Evidence"},
    {k: "evidence", l: "Evidence received", t: "checks", o: () => EVID, full: 1},
    {k: "attachments", l: "Attach evidence (CNIC, passport, B-Form, fee voucher, reports)", t: "files", full: 1},
    {t: "heading", l: "Decision"},
    {k: "priority", l: "Priority", t: "chips", o: () => strs(["Normal", "Urgent"]), def: () => "Normal"},
    {k: "status", l: "Status", t: "select", o: () => strs(STATUSES)},
    {k: "approved", l: "Amount approved (CUR)", t: "number"}, {k: "approvedBy", l: "Approved by", t: "text"},
    {k: "msgToApplicant", l: "Message for the applicant (shown on the tracking page)", t: "textarea", full: 1, help: "For example: please send the fee challan, or the money was sent on Monday."},
    {k: "ackStatus", l: "Proof sent and reconciliation by the school, hospital or shop", t: "select", o: () => strs(["Not asked yet", "Proof sent", "Confirmed by school"]), def: () => "Not asked yet"},
    {k: "ackDate", l: "Date they confirmed", t: "date"}, {k: "ackRcpt", l: "Their receipt number", t: "text"},
    {k: "note", l: "Notes and follow-up", t: "textarea", full: 1}]},
  casereview: {name: "Review", coll: "cases", intro: r => caseIntro(r), fields: [
    {k: "ref", l: "Reference number", t: "text"},
    {k: "evidence", l: "Evidence received", t: "checks", o: () => EVID, full: 1, help: "Tick what you have seen. Open the attached files above to check them."},
    {k: "strength", l: "How convincing is the evidence?", t: "chips", o: () => strs(["Not reviewed", "Weak", "Fair", "Strong"]), def: () => "Not reviewed", full: 1},
    {k: "visited", l: "Home visit or call done?", t: "chips", o: () => strs(["Not yet", "Yes"]), def: () => "Not yet"},
    {k: "priority", l: "Priority", t: "chips", o: () => strs(["Normal", "Urgent"]), def: () => "Normal"},
    {k: "status", l: "Decision", t: "select", o: () => strs(STATUSES)},
    {k: "approved", l: "Amount approved (CUR)", t: "number"}, {k: "approvedBy", l: "Reviewed by", t: "text"},
    {k: "decisionNote", l: "Reason for the decision", t: "textarea", full: 1},
    {k: "msgToApplicant", l: "Message for the applicant (shown on the tracking page)", t: "textarea", full: 1, help: "For example: please send the fee challan, or the money was sent on Monday."},
    {k: "ackStatus", l: "Proof sent and reconciliation by the school, hospital or shop", t: "select", o: () => strs(["Not asked yet", "Proof sent", "Confirmed by school"]), def: () => "Not asked yet"},
    {k: "ackDate", l: "Date they confirmed", t: "date"}, {k: "ackRcpt", l: "Their receipt number", t: "text"}]},
  donors: {name: "Donor", sort: "name", asc: 1, fields: [
    {k: "name", l: "Donor name", t: "text", req: 1}, {k: "type", l: "Type", t: "select", o: () => strs(["Individual", "Company", "Organization"])},
    {k: "phone", l: "Phone", t: "text"}, {k: "email", l: "Email", t: "text"}, {k: "city", l: "City or country", t: "text"},
    {k: "note", l: "Note", t: "textarea", full: 1}]},
  pledges: {name: "Pledge", sort: "dueDate", hint: "A pledge is a promise to give. When the money arrives, press Mark received and it becomes a donation.", fields: [
    {k: "amount", l: "Amount promised (CUR)", t: "number", req: 1, big: 1}, {k: "dueDate", l: "Expected on", t: "date", req: 1, def: today},
    {k: "donor", l: "Donor name", t: "text", req: 1, list: donors, full: 1},
    {k: "fund", l: "Fund", t: "chips", o: () => strs(FUNDS), def: () => "General", full: 1},
    {k: "campaign", l: "Campaign (optional)", t: "select", o: campaignOpts},
    {k: "status", l: "Status", t: "chips", o: () => strs(["Pending", "Received", "Cancelled"]), def: () => "Pending"},
    {k: "note", l: "Note", t: "textarea", full: 1}]},
  campaigns: {name: "Campaign", sort: "startDate", hint: "A campaign is a fundraising drive with a goal, such as a Ramadan appeal or a flood relief drive. Link donations and payments to it to see progress.", fields: [
    {k: "name", l: "Campaign name", t: "text", req: 1, full: 1}, {k: "goal", l: "Goal (CUR)", t: "number"},
    {k: "startDate", l: "Starts", t: "date", def: today}, {k: "endDate", l: "Ends", t: "date"},
    {k: "status", l: "Status", t: "chips", o: () => strs(["Active", "Paused", "Completed"]), def: () => "Active"},
    {k: "showPublic", l: "Show on the public page?", t: "chips", o: () => strs(["Yes", "No"]), def: () => "Yes"},
    {k: "description", l: "What is it for?", t: "textarea", full: 1}]},
  budgets: {name: "Budget", sort: "year", hint: "Plan how much you intend to spend, then see how much is used.", fields: [
    {k: "year", l: "Year", t: "number", req: 1, def: yr}, {k: "amount", l: "Planned amount (CUR)", t: "number", req: 1},
    {k: "fund", l: "Fund", t: "select", o: () => [{v: "All", l: "All funds"}].concat(strs(FUNDS))},
    {k: "category", l: "Spending type", t: "select", o: () => [{v: "All", l: "All types"}].concat(strs(CATS))},
    {k: "note", l: "Note", t: "textarea", full: 1}]},
  stock: {name: "Stock movement", sort: "date", hint: "For goods rather than money: books, uniforms, medicines, food packs. Record items received and items given out.", top: () => stockTop(), fields: [
    {k: "date", l: "Date", t: "date", req: 1, def: today}, {k: "direction", l: "Received or given out?", t: "chips", o: () => strs(["In", "Out"]), def: () => "In"},
    {k: "item", l: "Item", t: "text", req: 1, list: items, full: 1}, {k: "qty", l: "Quantity", t: "number", req: 1},
    {k: "unit", l: "Unit", t: "select", o: () => strs(["pieces", "kg", "boxes", "sets", "litres"])},
    {k: "party", l: "From (donor) or to (person or school)", t: "text", full: 1}, {k: "caseId", l: "Linked case (optional)", t: "select", o: caseOpts},
    {k: "note", l: "Note", t: "textarea", full: 1}]},
  tasks: {name: "Task", sort: "due", fields: [
    {k: "title", l: "What needs to be done?", t: "text", req: 1, full: 1}, {k: "due", l: "Due date", t: "date"},
    {k: "assignedTo", l: "Assigned to", t: "text"}, {k: "caseId", l: "Linked case (optional)", t: "select", o: caseOpts},
    {k: "status", l: "Status", t: "chips", o: () => strs(["To do", "Doing", "Done"]), def: () => "To do"},
    {k: "note", l: "Note", t: "textarea", full: 1}]},
  people: {name: "Person", sort: "name", asc: 1, hint: "Trustees, volunteers and staff.", fields: [
    {k: "name", l: "Full name", t: "text", req: 1}, {k: "role", l: "Role", t: "select", o: () => strs(["Trustee", "Volunteer", "Staff", "Advisor", "Member"])},
    {k: "phone", l: "Phone", t: "text"}, {k: "email", l: "Email", t: "text"}, {k: "joined", l: "Joined on", t: "date", def: today},
    {k: "status", l: "Status", t: "chips", o: () => strs(["Active", "Inactive"]), def: () => "Active"},
    {k: "note", l: "Note", t: "textarea", full: 1}]},
  accounts: {name: "Account", sort: "name", asc: 1, fields: [
    {k: "name", l: "Account name (e.g. Bank Muscat savings)", t: "text", req: 1}, {k: "kind", l: "Kind", t: "select", o: () => strs(["Bank account", "Cash in hand", "Wallet or other"])},
    {k: "opening", l: "Opening balance (CUR)", t: "number", def: () => "0"}, {k: "asOf", l: "Balance as of", t: "date", def: today},
    {k: "note", l: "Note", t: "textarea", full: 1}]}
};
CFG.donations.filter = {k: "fund", opts: () => FUNDS}; CFG.donations.hint = "Record every gift here. Use Receipt on a row to make a thank-you message you can send.";
CFG.expenses.filter = {k: "category", opts: () => CATS}; CFG.expenses.hint = "Record every payment. Choose the person helped so the app can list who received assistance.";
CFG.pledges.filter = {k: "status", opts: () => ["Pending", "Received", "Cancelled"]};
CFG.tasks.filter = {k: "status", opts: () => ["To do", "Doing", "Done"]}; CFG.tasks.hint = "Visits, calls and follow-ups for the team.";
CFG.stock.filter = {k: "direction", opts: () => ["In", "Out"]};
CFG.campaigns.filter = {k: "status", opts: () => ["Active", "Paused", "Completed"]};
function evPill(d) { const n = (d.evidence || []).length; return n ? `<span class="pill ${d.strength === "Strong" ? "good" : d.strength === "Weak" ? "bad" : "warn"}">${n}/${EVID.length} · ${esc(d.strength || "Not reviewed")}</span>` : '<span class="muted">None yet</span>'; }
function caseIntro(r) { return `<div class="card" style="margin-bottom:14px"><b>${esc(r.applicant)}</b> · ${esc(r.type)}${num(r.requested) ? " · asked for " + omr(r.requested) + " " + esc(CUR) : ""}<br><span class="muted">${esc(r.details || "")}</span>${r.place || r.contact ? `<br><span class="muted">${esc([r.place, r.contact].filter(Boolean).join(" · "))}</span>` : ""}${r.referee ? `<br><span class="muted">Can confirm: ${esc(r.referee)}</span>` : ""}${role() !== "admin" ? '<div class="muted" style="margin-top:8px">Documents and bank details are visible to the administrator only.</div>' : (r.attachments || []).length ? `<div style="margin-top:8px">Files: ${attLinks(r).replace(/<br>/g, " · ")}</div>` : '<div class="muted" style="margin-top:8px">No files attached yet.</div>'}</div>`; }
const pillFor = s => ({"Disbursed": "good", "Closed": "", "Approved": "good", "Declined": "bad", "Under review": "warn", "Applied": "warn", "Needs more info": "warn"}[s] || "");
const caseDisb = id => sum(S.expenses.filter(e => e.caseId === id), e => e.amount);
const nameOf = (list, id) => { const x = S[list].find(y => y.id === id); return x ? (x.name || x.applicant) : ""; };
function attLinks(d) { if (role() !== "admin") return '<span class="muted">Admin only</span>'; const a = d.attachments || []; return a.map((x, i) => `<a href="${esc(x.url)}" target="_blank" rel="noopener">${esc(x.name || "File " + (i + 1))}</a>`).join("<br>"); }
const campRaised = id => sum(S.donations.filter(d => d.campaign === id), d => d.amount);
const campSpent = id => sum(S.expenses.filter(d => d.campaign === id), d => d.amount);
const pbar = (v, g) => { const p = g > 0 ? Math.min(100, v / g * 100) : 0; return `<div style="display:flex;gap:8px;align-items:center"><div style="flex:1;height:10px;border-radius:6px;background:var(--brand-soft);overflow:hidden;min-width:80px"><i style="display:block;height:100%;width:${p.toFixed(0)}%;background:var(--brand)"></i></div><span class="muted" style="font-size:.8rem">${p.toFixed(0)}%</span></div>`; };
const pledgeStatus = p => (p.status === "Pending" && p.dueDate && p.dueDate < today()) ? "Overdue" : (p.status || "Pending");
const budgetSpent = b => sum(S.expenses.filter(e => (e.date || "").slice(0, 4) === String(b.year) && (b.fund === "All" || e.fund === b.fund) && (b.category === "All" || e.category === b.category)), e => e.amount);
const stockBal = () => { const m = {}; S.stock.forEach(s => { const k = (s.item || "").trim(); if (!k) return; const x = m[k] = m[k] || {qty: 0, unit: s.unit || ""}; x.qty += (s.direction === "Out" ? -1 : 1) * num(s.qty); }); return m; };
function stockTop() { const m = Object.entries(stockBal()); return m.length ? `<div class="tiles">${m.map(([k, v]) => `<div class="tile"><span>${esc(k)}</span><b class="num">${v.qty}</b><small>${esc(v.unit)} in stock</small></div>`).join("")}</div>` : ""; }
const stPill = s => `<span class="pill ${["Done", "Active", "Yes", "In"].includes(s) ? "good" : ["Urgent", "Overdue"].includes(s) ? "bad" : ["Doing", "Paused", "Pending", "Out"].includes(s) ? "warn" : ""}">${esc(s)}</span>`;
const COLS = {
  donations: [["Date", d => fdate(d.date)], ["Donor", d => esc(d.donor)], ["Fund", d => `<span class="pill">${esc(d.fund)}</span>`], ["Account", d => esc(nameOf("accounts", d.account))], ["Campaign", d => esc(nameOf("campaigns", d.campaign))], ["Method", d => esc(d.method)], ["Amount", d => omr(d.amount), "r"], ["Files", d => attLinks(d)]],
  expenses: [["Date", d => fdate(d.date)], ["Paid to", d => esc(d.payee)], ["For", d => esc(d.category)], ["Fund", d => `<span class="pill warn">${esc(d.fund)}</span>`], ["Person helped", d => esc(nameOf("cases", d.caseId))], ["Account", d => esc(nameOf("accounts", d.account))], ["Amount", d => omr(d.amount), "r"], ["Files", d => attLinks(d)]],
  cases: [["Name", d => `<b>${esc(d.applicant)}</b>${d.ref ? ` <span class="muted">· ${esc(d.ref)}</span>` : ""}<br><span class="muted">${esc(d.details)}</span>`], ["Type", d => esc(d.type)], ["Priority", d => stPill(d.priority || "Normal")], ["Evidence", d => evPill(d)], ["Status", d => `<span class="pill ${pillFor(d.status)}">${esc(d.status)}</span>${d.ackStatus === "Confirmed by school" ? `<br><span class="pill good">School confirmed</span>` : d.ackStatus === "Proof sent" ? `<br><span class="pill warn">Awaiting reconciliation</span>` : ""}`], ["Requested", d => omr(d.requested), "r"], ["Approved", d => omr(d.approved), "r"], ["Paid so far", d => omr(caseDisb(d.id)), "r"], ["Files", d => attLinks(d)]],
  pledges: [["Expected", d => fdate(d.dueDate)], ["Donor", d => esc(d.donor)], ["Fund", d => `<span class="pill">${esc(d.fund)}</span>`], ["Amount", d => omr(d.amount), "r"], ["Status", d => stPill(pledgeStatus(d))]],
  campaigns: [["Campaign", d => `<b>${esc(d.name)}</b><br><span class="muted">${esc(d.description || "")}</span>`], ["Status", d => stPill(d.status || "Active")], ["Goal", d => omr(d.goal), "r"], ["Raised", d => omr(campRaised(d.id)), "r"], ["Progress", d => pbar(campRaised(d.id), num(d.goal))], ["Spent", d => omr(campSpent(d.id)), "r"]],
  budgets: [["Year", d => esc(d.year)], ["Fund", d => esc(d.fund)], ["Type", d => esc(d.category)], ["Planned", d => omr(d.amount), "r"], ["Spent", d => omr(budgetSpent(d)), "r"], ["Left", d => neg(num(d.amount) - budgetSpent(d)), "r"], ["Used", d => pbar(budgetSpent(d), num(d.amount))]],
  stock: [["Date", d => fdate(d.date)], ["Item", d => `<b>${esc(d.item)}</b>`], ["Movement", d => stPill(d.direction || "In")], ["Quantity", d => esc(d.qty) + " " + esc(d.unit), "r"], ["From or to", d => esc(d.party)], ["Case", d => esc(nameOf("cases", d.caseId))]],
  tasks: [["Due", d => fdate(d.due)], ["Task", d => `<b>${esc(d.title)}</b>`], ["Assigned to", d => esc(d.assignedTo)], ["Case", d => esc(nameOf("cases", d.caseId))], ["Status", d => stPill(d.status || "To do")]],
  people: [["Name", d => `<b>${esc(d.name)}</b>`], ["Role", d => esc(d.role)], ["Phone", d => esc(d.phone)], ["Email", d => esc(d.email)], ["Status", d => stPill(d.status || "Active")]],
  accounts: [["Account", d => `<b>${esc(d.name)}</b><br><span class="muted">${esc(d.kind)}</span>`], ["Opening", d => omr(d.opening), "r"], ["Balance now", d => `<b>${omr(acctBal(d.id))}</b>`, "r"]]
};
const neg = n => n < 0 ? "(" + omr(-n) + ")" : omr(n);
const ROWACT = {
  donations: r => `<button class="btn small" data-act="receipt" data-id="${esc(r.id)}">Receipt</button> `,
  pledges: r => r.status === "Pending" ? `<button class="btn small primary" data-act="pledgeRecv" data-id="${esc(r.id)}">Mark received</button> ` : "",
  cases: r => `<button class="btn small primary" data-act="review" data-id="${esc(r.id)}">Review</button> <button class="btn small" data-act="chat" data-id="${esc(r.id)}">Conversation</button> <button class="btn small" data-act="ackmsg" data-id="${esc(r.id)}">Send proof and ask to reconcile</button> `,
  tasks: r => r.status !== "Done" ? `<button class="btn small primary" data-act="taskDone" data-id="${esc(r.id)}">Done</button> ` : ""
};
const TITLES = {donations: "Donations received", expenses: "Payments made", cases: "Requests for help", pledges: "Pledges", campaigns: "Campaigns", budgets: "Budgets", stock: "In-kind stock", tasks: "Tasks and follow-ups", people: "Trustees, volunteers and staff", accounts: "Accounts and cash", auth: "Sign-in"};
function labelFor(k, r) { return k === "donations" ? `${r.donor || ""} ${omr(r.amount)}` : k === "expenses" ? `${r.payee || ""} ${omr(r.amount)}` : k === "cases" ? r.applicant : k === "pledges" ? `${r.donor || ""} ${omr(r.amount)}` : k === "stock" ? `${r.item || ""} ${r.direction || ""} ${r.qty || ""}` : k === "tasks" ? r.title : k === "budgets" ? `${r.year} ${r.fund} ${r.category}` : (r.name || r.title || ""); }
function logAudit(action, coll, label) { try { db.collection("audit").add({at: new Date().toISOString(), by: myId || "", user: AUTH.session ? AUTH.session.u : "", action, coll, label: String(label || "").slice(0, 120)}).catch(() => {}); } catch (e) {} }
function donorKey(n) { return String(n || "").trim().toLowerCase().replace(/[^a-z0-9]+/g, "-").replace(/^-|-$/g, "") || "donor"; }
function donorRows() {
  const m = {};
  S.donations.forEach(d => { const n = (d.donor || "").trim(); if (!n) return; const k = donorKey(n), x = m[k] = m[k] || {key: k, name: n, gifts: 0, total: 0, last: "", pledged: 0}; x.gifts++; x.total += num(d.amount); if ((d.date || "") > x.last) x.last = d.date; });
  S.pledges.filter(p => p.status === "Pending").forEach(p => { const n = (p.donor || "").trim(); if (!n) return; const k = donorKey(n), x = m[k] = m[k] || {key: k, name: n, gifts: 0, total: 0, last: "", pledged: 0}; x.pledged += num(p.amount); });
  S.donors.forEach(c => { const x = m[c.id] = m[c.id] || {key: c.id, name: c.name, gifts: 0, total: 0, last: "", pledged: 0}; });
  return Object.values(m).map(x => Object.assign(x, {c: S.donors.find(c => c.id === x.key)})).sort((a, b) => b.total - a.total);
}

/* ---------- team area: rendering ---------- */
const TABS = [["overview", "Overview"], ["donations", "Donations"], ["expenses", "Payments"], ["cases", "Requests"], ["donors", "Donors"], ["pledges", "Pledges"], ["campaigns", "Campaigns"], ["budgets", "Budgets"], ["stock", "Stock"], ["tasks", "Tasks"], ["people", "Volunteers and staff"], ["accounts", "Accounts"], ["financials", "Financials"], ["helpreport", "Help seekers report"], ["donorreport", "Donor report"], ["audit", "Activity log"], ["public", "Public page"], ["backup", "Backup"], ["users", "Logins"]];
const GROUPS = [["overview", "Overview", ["overview"]], ["money", "Money", ["donations", "pledges", "expenses", "accounts", "budgets"]], ["people", "People", ["cases", "donors", "people"]], ["programs", "Programs", ["campaigns", "stock", "tasks"]], ["reports", "Reports", ["financials", "helpreport", "donorreport", "audit"]], ["settings", "Settings", ["public", "backup", "users"]]];
const ROLES = {admin: "Admin", entry: "Data entry", viewer: "Viewer"};
const role = () => (AUTH.session && AUTH.session.role) || "viewer";
const canEditColl = k => role() === "admin" || (role() === "entry" && !["accounts", "budgets"].includes(k));
const tabVisible = k => role() === "admin" || !["audit", "public", "backup", "users"].includes(k);
const hrefFor = k => k === "overview" ? "#team" : "#team-" + k;
const tabLabel = k => (TABS.find(x => x[0] === k) || [0, k])[1];
function allowed(a) {
  const r = role();
  if (["add", "edit", "review", "pledgeRecv", "taskDone"].includes(a)) return canEditColl(tab);
  if (a === "chat") return canEditColl("cases");
  if (a === "receipt" || a === "csvhelp" || a === "csvdonor") return r !== "viewer";
  if (a === "del") return r === "admin";
  if (["bgup", "bgdel", "publish", "savetext", "addstory", "delstory", "backupjson", "csvk", "uadd", "ureset", "usave", "udel", "ucancel"].includes(a)) return r === "admin";
  return true;
}
function explore() {
  const items = [["cases", "Requests", "Review people asking for help"], ["donors", "Donors", "Giving history and contact details"], ["pledges", "Pledges", "Promised gifts and reminders"], ["campaigns", "Campaigns", "Appeals with goals and progress"], ["budgets", "Budgets", "Plan spending and see what is left"], ["stock", "Stock", "Books, medicines and other goods"], ["tasks", "Tasks", "Follow-ups and visits"], ["financials", "Financials", "Statements you can download"], ["public", "Public page", "What visitors see on the site"]].filter(x => tabVisible(x[0]));
  return `<h3 style="margin:22px 0 8px">Explore</h3><div class="tiles">${items.map(x => `<a class="tile exp" href="#team-${x[0]}"><b>${x[1]}</b><small>${x[2]}</small></a>`).join("")}</div>`;
}
function quickRow() { return role() === "viewer" ? "" : `<div class="quick"><button class="btn primary big" data-quick="donations">＋ Money received</button><button class="btn big" data-quick="expenses">＋ Payment made</button><button class="btn big" data-quick="cases">＋ New request</button></div>`; }
function renderTeam() {
  if (!AUTH.session) { renderLock(); return; }
  if (!tabVisible(tab)) tab = "overview";
  const g = GROUPS.find(x => x[2].includes(tab)) || GROUPS[0];
  const subs = g[2].filter(tabVisible);
  $("#team").innerHTML = `
    <div class="teamhead"><h2>Team area</h2><span class="lock">${esc(AUTH.session.name)} · ${ROLES[role()]}</span><button class="btn small" id="signout">Sign out</button><a class="btn small" href="#home">Public site</a></div>
    <nav class="tabs" aria-label="Team sections">${GROUPS.map(x => [x, x[2].filter(tabVisible)]).filter(x => x[1].length).map(([x, s]) => `<a href="${hrefFor(s[0])}" class="${x === g ? "on" : ""}">${x[1]}</a>`).join("")}</nav>
    ${subs.length > 1 ? `<nav class="subtabs" aria-label="${esc(g[1])}">${subs.map(k => `<a href="${hrefFor(k)}" class="${k === tab ? "on" : ""}">${esc(tabLabel(k))}</a>`).join("")}</nav>` : ""}
    <div id="formHost"></div><div id="tbody"></div>`;
  $("#signout").onclick = () => signOut("You have signed out.");
  renderBody();
}
function renderBody() {
  const host = $("#tbody"); if (!host || !AUTH.session) return;
  if (Object.keys(loaded).length < Object.keys(S).length && !window.__tlate) { host.innerHTML = '<p class="muted" style="margin-top:20px">Loading your records…</p>'; return; }
  if (tab === "overview") host.innerHTML = overview();
  else if (tab === "financials") host.innerHTML = financials();
  else if (tab === "helpreport") host.innerHTML = helpReport();
  else if (tab === "donorreport") host.innerHTML = donorReport();
  else if (tab === "backup") host.innerHTML = backupView();
  else if (tab === "users") host.innerHTML = usersView();
  else if (tab === "public") { host.innerHTML = publicTab(); }
  else host.innerHTML = listView(tab);
  bind();
}
function overview() {
  const t = totals(), noAcc = !S.accounts.length;
  const open = S.cases.filter(c => ["Applied", "Needs more info", "Under review", "Approved"].includes(c.status)).length;
  const recent = S.donations.map(d => ({...d, _k: "in"})).concat(S.expenses.map(e => ({...e, _k: "out"}))).sort((a, b) => (b.date || "").localeCompare(a.date || "")).slice(0, 8);
  return `
  ${quickRow()}
  ${noAcc ? `<div class="start"><b>Start here.</b> Add the places where your money is kept (a bank account, cash in hand). Then record donations and payments against them, and the balances below will work out by themselves. <div class="row" style="margin-top:10px"><a class="btn primary small" href="#team-accounts">Add an account</a></div></div>` : ""}
  <div class="tiles">
    <div class="tile"><span>Received</span><b class="num">${omr(t.received)}</b><small>${CUR}, all donations</small></div>
    <div class="tile"><span>Given out</span><b class="num">${omr(t.spent)}</b><small>${CUR}, all payments</small></div>
    <div class="tile"><span>Available now</span><b class="num">${omr(t.available)}</b><small>${CUR}, across accounts</small></div>
    <div class="tile"><span>People helped</span><b class="num">${S.cases.filter(c => caseDisb(c.id) > 0).length}</b><small>${omr(sum(S.cases, c => caseDisb(c.id)))} ${CUR} paid to them</small></div>
    <div class="tile"><span>Open cases</span><b class="num">${open}</b><small>waiting for a decision or payment</small></div>
  </div>
  <div class="cols">
    <div class="card"><h3>Money by fund</h3><ul class="list" style="margin-top:8px">${FUNDS.map(f => `<li><span>${f}</span><b class="num">${omr(fundBal(f))}</b></li>`).join("")}</ul><p class="muted" style="font-size:.82rem;margin-top:8px">Opening balances count as General.</p></div>
    <div class="card"><h3>Where the money is</h3>${S.accounts.length ? `<ul class="list" style="margin-top:8px">${S.accounts.map(a => `<li><span>${esc(a.name)} <span class="muted">· ${esc(a.kind)}</span></span><b class="num">${omr(acctBal(a.id))}</b></li>`).join("")}</ul>` : '<p class="muted" style="margin-top:8px">No accounts yet.</p>'}</div>
  </div>
  ${attention()}
  <div class="card" style="margin-top:16px"><h3>Last 12 months</h3>${chart()}</div>
  <div class="card" style="margin-top:16px"><h3>Latest activity</h3>${recent.length ? `<ul class="list" style="margin-top:8px">${recent.map(r => `<li><span>${fdate(r.date)} · ${r._k === "in" ? "Received from " + esc(r.donor) : "Paid to " + esc(r.payee)}</span><b class="num" style="color:${r._k === "in" ? "var(--good)" : "var(--warn)"}">${r._k === "in" ? "+" : "−"}${omr(r.amount)}</b></li>`).join("")}</ul>` : '<p class="muted" style="margin-top:8px">Nothing recorded yet. Add the first donation or payment from the tabs above.</p>'}</div>
  ${explore()}`;
}
function chart() {
  const now = new Date(), months = [];
  for (let i = 11; i >= 0; i--) { const d = new Date(now.getFullYear(), now.getMonth() - i, 1); months.push({k: d.toISOString().slice(0, 7), l: d.toLocaleDateString("en-GB", {month: "short"}), y: d.getFullYear()}); }
  months.forEach(m => { m.i = sum(S.donations.filter(d => (d.date || "").slice(0, 7) === m.k), d => d.amount); m.o = sum(S.expenses.filter(d => (d.date || "").slice(0, 7) === m.k), d => d.amount); });
  const max = Math.max(1, ...months.map(m => Math.max(m.i, m.o)));
  const nice = (() => { const p = Math.pow(10, Math.floor(Math.log10(max))); return Math.ceil(max / p) * p; })();
  const W = 640, H = 220, L = 56, B = 28, T = 10, ph = H - B - T, bw = (W - L - 8) / 12;
  let g = "";
  for (let i = 0; i <= 2; i++) { const v = nice * i / 2, y = T + ph - ph * i / 2; g += `<line x1="${L}" x2="${W}" y1="${y}" y2="${y}" stroke="var(--line)"/><text x="${L - 6}" y="${y + 4}" text-anchor="end">${v >= 1000 ? (v / 1000).toFixed(1) + "k" : v.toFixed(0)}</text>`; }
  months.forEach((m, i) => {
    const x = L + i * bw, h1 = ph * m.i / nice, h2 = ph * m.o / nice;
    g += `<rect x="${x + bw * .12}" y="${T + ph - h1}" width="${bw * .34}" height="${h1}" rx="2" fill="var(--brand)"><title>${m.l} ${m.y}: received ${omr(m.i)}</title></rect>`;
    g += `<rect x="${x + bw * .5}" y="${T + ph - h2}" width="${bw * .34}" height="${h2}" rx="2" fill="var(--accent)"><title>${m.l} ${m.y}: given out ${omr(m.o)}</title></rect>`;
    g += `<text x="${x + bw / 2}" y="${H - 8}" text-anchor="middle">${m.l}</text>`;
  });
  return `<div class="legend"><span><i style="background:var(--brand)"></i>Received</span><span><i style="background:var(--accent)"></i>Given out</span><span>${CUR} per month</span></div><div class="scroll" style="border:0"><svg viewBox="0 0 ${W} ${H}" width="100%" style="min-width:520px" role="img" aria-label="Monthly donations received and payments given out for the last 12 months">${g}</svg></div>`;
}
function listView(k) {
  if (k === "donors") return donorsView();
  if (k === "audit") return auditView();
  const cfg = CFG[k], amtK = (cfg.fields.find(f => ["amount", "requested", "goal"].includes(f.k)) || {}).k;
  const rows = S[k].slice().filter(r => !filterText || JSON.stringify(r).toLowerCase().includes(filterText.toLowerCase())).filter(r => !filterVal || !cfg.filter || r[cfg.filter.k] === filterVal);
  rows.sort((a, b) => sortVal === "big" && amtK ? num(b[amtK]) - num(a[amtK]) : sortVal === "small" && amtK ? num(a[amtK]) - num(b[amtK]) : String(b[cfg.sort] || "").localeCompare(String(a[cfg.sort] || "")) * ((cfg.asc ? -1 : 1) * (sortVal === "old" ? -1 : 1)));
  const total = k === "donations" || k === "expenses" ? `<p class="muted" style="margin-bottom:8px">${rows.length} shown · total <b class="num">${omr(sum(rows, r => r.amount))}</b> ${CUR}</p>` : "";
  const hint = k === "accounts" ? '<p class="muted" style="margin-top:4px">Add every place money is kept. The opening balance is what it held before you started using this app.</p>' : (cfg.hint ? `<p class="muted" style="margin-top:4px">${esc(cfg.hint)}</p>` : "");
  const act = ROWACT[k] || (() => "");
  return `<div class="teamhead" style="padding-top:18px"><h2 style="font-size:1.4rem">${TITLES[k]}</h2>${downloads && role() !== "viewer" ? '<button class="btn small" data-act="csv">Download CSV</button>' : ""}${canEditColl(k) ? `<button class="btn primary" data-act="add">Add ${cfg.name.toLowerCase()}</button>` : ""}</div>${hint}
    ${cfg.top ? cfg.top() : ""}<div class="toolbar"><input type="search" id="q" placeholder="Search…" aria-label="Search" value="${esc(filterText)}">${cfg.filter ? `<select id="fsel" aria-label="Filter" style="width:auto"><option value="">All ${cfg.filter.k === "status" ? "statuses" : cfg.filter.k === "fund" ? "funds" : "types"}</option>${cfg.filter.opts().map(o => `<option ${o === filterVal ? "selected" : ""}>${esc(o)}</option>`).join("")}</select>` : ""}<select id="ssel" aria-label="Sort" style="width:auto"><option value="new" ${sortVal === "new" ? "selected" : ""}>${cfg.asc ? "A to Z" : "Newest first"}</option><option value="old" ${sortVal === "old" ? "selected" : ""}>${cfg.asc ? "Z to A" : "Oldest first"}</option>${amtK ? `<option value="big" ${sortVal === "big" ? "selected" : ""}>Largest amount</option><option value="small" ${sortVal === "small" ? "selected" : ""}>Smallest amount</option>` : ""}</select></div>${total}
    ${rows.length ? `<div class="scroll"><table><thead><tr>${COLS[k].map(c => `<th class="${c[2] || ""}">${c[0]}</th>`).join("")}<th></th></tr></thead><tbody>${rows.map(r => `<tr>${COLS[k].map(c => `<td class="${c[2] || ""} num">${c[1](r)}</td>`).join("")}<td class="act">${canEditColl(k) ? act(r) + `<button class="btn small" data-act="edit" data-id="${esc(r.id)}">Edit</button>` : ""}${role() === "admin" ? ` <button class="btn small danger" data-act="del" data-id="${esc(r.id)}">Delete</button>` : ""}</td></tr>`).join("")}</tbody></table></div>` : `<div class="empty">${S[k].length ? "Nothing matches your search." : "No " + cfg.name.toLowerCase() + " records yet. Use the button above to add the first one."}</div>`}`;
}
function donorsView() {
  const rows = donorRows().filter(r => !filterText || (r.name + " " + JSON.stringify(r.c || {})).toLowerCase().includes(filterText.toLowerCase()));
  return `<div class="teamhead" style="padding-top:18px"><h2 style="font-size:1.4rem">Donors</h2>${canEditColl("donors") ? '<button class="btn primary" data-act="add">Add donor</button>' : ""}</div>
    <p class="muted" style="margin-top:4px">Everyone who has given appears here automatically. Add phone and email so you can thank and follow up.</p>
    <div class="toolbar"><input type="search" id="q" placeholder="Search donors…" aria-label="Search" value="${esc(filterText)}"></div>
    ${rows.length ? `<div class="scroll"><table><thead><tr><th>Donor</th><th>Contact</th><th class="r">Gifts</th><th class="r">Total given</th><th>Last gift</th><th class="r">Pledged</th><th></th></tr></thead><tbody>${rows.map(r => `<tr><td><b>${esc(r.name)}</b><br><span class="muted">${esc((r.c && r.c.type) || "")}</span></td><td>${esc((r.c && r.c.phone) || "")}<br><span class="muted">${esc((r.c && r.c.email) || "")}</span></td><td class="r num">${r.gifts}</td><td class="r num"><b>${omr(r.total)}</b></td><td>${fdate(r.last)}</td><td class="r num">${omr(r.pledged)}</td><td class="act">${canEditColl("donors") ? `<button class="btn small" data-act="edit" data-id="${esc(r.key)}">Edit contact</button>` : ""}</td></tr>`).join("")}</tbody></table></div>` : '<div class="empty">No donors yet. They appear here as soon as you record a donation.</div>'}`;
}
function auditView() {
  const rows = S.audit.slice().sort((a, b) => String(b.at).localeCompare(String(a.at)));
  return `<div class="teamhead" style="padding-top:18px"><h2 style="font-size:1.4rem">Activity log</h2></div><p class="muted" style="margin-top:4px">A record of what was added, changed or deleted, newest first. It shows the latest 200 entries.</p>
    ${rows.length ? `<div class="scroll" style="margin-top:12px"><table><thead><tr><th>When</th><th>Who</th><th>Action</th><th>Where</th><th>What</th></tr></thead><tbody>${rows.map(r => `<tr><td class="num">${esc(new Date(r.at).toLocaleString("en-GB", {day: "numeric", month: "short", year: "numeric", hour: "2-digit", minute: "2-digit"}))}</td><td>${esc(r.user || "")}</td><td>${esc(r.action)}</td><td>${esc(TITLES[r.coll] || r.coll)}</td><td>${esc(r.label)}</td></tr>`).join("")}</tbody></table></div>` : '<div class="empty" style="margin-top:12px">Nothing recorded yet.</div>'}`;
}
function backupView() {
  const ks = ["donations", "expenses", "cases", "donors", "pledges", "campaigns", "budgets", "stock", "tasks", "people", "accounts"];
  return `<div class="teamhead" style="padding-top:18px"><h2 style="font-size:1.4rem">Backup and export</h2></div>
    <p class="muted" style="margin-top:4px">Keep a copy of your records outside this app. Download one full backup file now and then, for example at the end of each month. Each section also has its own Download CSV button for Excel.</p>
    <div class="card" style="margin-top:14px"><h3>Full backup</h3><p class="muted" style="margin:6px 0 12px">Everything in one file: ${ks.reduce((n, k) => n + S[k].length, 0)} records.</p>${downloads ? '<button class="btn primary" data-act="backupjson">Download full backup</button>' : '<p class="muted">Downloads are not available in this view.</p>'}</div>`;
}
function attention() {
  const od = S.pledges.filter(p => pledgeStatus(p) === "Overdue"), urgent = S.cases.filter(c => c.priority === "Urgent" && ["Applied", "Needs more info", "Under review", "Approved"].includes(c.status));
  const soon = iso(new Date(Date.now() + 7 * 864e5)), td = S.tasks.filter(x => x.status !== "Done" && x.due && x.due <= soon);
  const unver = S.cases.filter(c => ["Approved", "Disbursed"].includes(c.status) && (!c.strength || c.strength === "Not reviewed") && c.verified !== "Yes");
  const unrec = S.cases.filter(c => c.status === "Disbursed" && c.ackStatus !== "Confirmed by school"), waiting = S.cases.filter(c => ["Applied", "Needs more info", "Under review"].includes(c.status));
  const li = [[waiting.length, "request waiting for review", "cases"], [unrec.length, "unreconciled payment", "cases"], [od.length, "overdue pledge", "pledges"], [urgent.length, "urgent case waiting", "cases"], [td.length, "task due this week or overdue", "tasks"], [unver.length, "approved request without an evidence review", "cases"]].filter(x => x[0]);
  const act = S.campaigns.filter(c => c.status === "Active");
  return `<div class="cols" style="margin-top:16px"><div class="card"><h3>Needs attention</h3>${li.length ? `<ul class="list" style="margin-top:8px">${li.map(([n, l, k]) => `<li><span>${n} ${l}${n > 1 ? "s" : ""}</span><a href="#team-${k}">Open</a></li>`).join("")}</ul>` : '<p class="muted" style="margin-top:8px">Nothing urgent right now.</p>'}</div>
  <div class="card"><h3>Active campaigns</h3>${act.length ? act.map(c => `<div style="margin-top:10px"><div style="display:flex;justify-content:space-between;gap:8px"><b>${esc(c.name)}</b><span class="num muted">${omr(campRaised(c.id))} of ${omr(c.goal)}</span></div>${pbar(campRaised(c.id), num(c.goal))}</div>`).join("") : '<p class="muted" style="margin-top:8px">No active campaign. Start one in the Campaigns tab.</p>'}</div></div>`;
}
function publicTab() {
  const c = pub.content || {}, s = buildSummary(), p = pub.summary;
  return `<div class="teamhead" style="padding-top:18px"><h2 style="font-size:1.4rem">What the public sees</h2></div>
  <div class="card" style="margin-bottom:16px"><h3>Financial report</h3>
    <p class="muted" style="margin:6px 0 12px">Publishing shows these totals on the public page. Donor and beneficiary names are not included.</p>
    <div class="big3"><div><b class="num">${omr(s.received)}</b><span>received</span></div><div><b class="num">${omr(s.spent)}</b><span>given out</span></div><div><b class="num">${omr(s.available)}</b><span>available</span></div></div>
    <div class="row" style="margin-top:14px;display:flex;gap:10px;align-items:center;flex-wrap:wrap"><button class="btn primary" data-act="publish">Publish report to public page</button><span class="muted">${p ? "Last published " + fdate((p.updatedAt || "").slice(0, 10)) : "Not published yet"}</span><span id="pubmsg"></span></div></div>
  <div class="card" style="margin-bottom:16px"><h3>Background photo</h3>
    <p class="muted" style="margin:6px 0 12px">Choose a photo of Ghizer or Gilgit-Baltistan (a wide landscape photo works best). It becomes the background of the whole site.</p>
    ${assetsCap ? `<div style="display:flex;gap:10px;flex-wrap:wrap;align-items:center"><input id="bg_file" type="file" accept="image/*" style="max-width:320px"><button class="btn primary" data-act="bgup">Use this photo</button>${c.bgUrl ? '<button class="btn" data-act="bgdel">Go back to the painted scene</button>' : ""}<span id="bgmsg"></span></div>` : '<p class="muted">Photo upload is not available in this view.</p>'}</div>
  <div class="card" style="margin-bottom:16px"><h3>Page text and currency</h3>
    <div class="form" style="border-color:var(--line);margin:12px 0 0"><div class="grid">
      <label>Currency (e.g. PKR, OMR, USD)<input id="c_currency" list="curs" value="${esc(CUR)}"><datalist id="curs"><option value="PKR"><option value="OMR"><option value="USD"><option value="AED"><option value="SAR"></datalist></label>
      <label>WhatsApp number for requests (country code, digits only)<input id="c_wa" type="text" inputmode="numeric" value="${esc(c.waNumber || "")}"></label>
      <label>Online request form link (optional, https://…)<input id="c_form" type="text" value="${esc(c.formUrl || "")}"></label>
      <label class="full">Registration details (shown on the Give page and on receipts)<textarea id="c_reg" placeholder="Registered under the Societies Act, registration no. …, NTN …, approved under Section 2(36)">${esc(c.regInfo || "")}</textarea></label>
      <label class="full">About the founder<textarea id="c_founder" placeholder="A few lines about Engr. Mir Ghias Khan and why the organization was started.">${esc(c.founderNote || "")}</textarea></label>
      <label>How to ask for help<textarea id="c_contact" placeholder="Phone, WhatsApp, email, and what to send.">${esc(c.contactText || "")}</textarea></label>
      <label>How to give<textarea id="c_give" placeholder="Bank name, account name and number, or how to hand over a donation.">${esc(c.giveText || "")}</textarea></label></div>
      <div class="row"><button class="btn primary" data-act="savetext">Save page text</button><span id="textmsg"></span></div></div></div>
  <div class="card"><h3>Updates and stories</h3>
    <div class="form" style="border-color:var(--line);margin:12px 0"><div class="grid">
      <label>Title<input id="s_title" type="text"></label><label>Date<input id="s_date" type="date" value="${today()}"></label>
      <label class="full">What happened<textarea id="s_text" placeholder="Share what was done. Do not use the real names of students or patients unless they agreed."></textarea></label></div>
      <div class="row"><button class="btn primary" data-act="addstory">Add update</button><span id="storymsg"></span></div></div>
    ${(c.stories || []).length ? `<ul class="list">${(c.stories || []).slice().sort((a, b) => (b.date || "").localeCompare(a.date || "")).map(x => `<li><span><b>${esc(x.title)}</b> <span class="muted">${esc(fdate(x.date))}</span></span><button class="btn small danger" data-act="delstory" data-id="${esc(x.id)}">Delete</button></li>`).join("")}</ul>` : '<p class="muted">No updates yet.</p>'}</div>`;
}

/* ---------- team area: actions ---------- */
let warned = false;
const L = s => String(s).replace(/\(CUR\)/g, "(" + CUR + ")");
function toast(m) { const el = $("#toast"); el.textContent = m; el.hidden = false; clearTimeout(toastT); toastT = setTimeout(() => { el.hidden = true; }, 3200); }
function quickAdd(k) { if (!canEditColl(k)) { toast("Your login cannot add this."); return; } if (tab === k && !$("#team").hidden) openForm(k); else { pendingForm = k; location.hash = "team-" + k; } }
function fieldHTML(x, rec) {
  if (x.t === "heading") return `<div class="field full"><h4 class="fhead">${esc(x.l)}</h4></div>`;
  const val = rec ? (rec[x.k] == null ? "" : rec[x.k]) : (x.def ? x.def() : ""), idn = "f_" + x.k, lab = L(x.l) + (x.req ? " *" : "");
  let inp, label = `<label class="lab" for="${idn}">${esc(lab)}</label>`;
  if (x.t === "chips") { label = `<span class="lab">${esc(lab)}</span>`; inp = `<div class="chips" role="radiogroup" aria-label="${esc(L(x.l))}">${x.o().map((y, n) => `<label class="chip"><input type="radio" name="${idn}" value="${esc(y.v)}" ${String(y.v) === String(val) || (!val && n === 0) ? "checked" : ""}><span>${esc(y.l)}</span></label>`).join("")}</div>`; }
  else if (x.t === "select") { const o = x.o(); inp = `<select id="${idn}">${o.map(y => `<option value="${esc(y.v)}" ${String(y.v) === String(val) ? "selected" : ""}>${esc(y.l)}</option>`).join("")}</select>`; }
  else if (x.t === "account") { const v = val || (S.accounts.length ? "" : "__new__"); const o = accOpts().concat([{v: "__new__", l: "＋ Add a new account…"}]); inp = `<select id="${idn}">${v ? "" : '<option value="">Choose…</option>'}${o.map(y => `<option value="${esc(y.v)}" ${y.v === v ? "selected" : ""}>${esc(y.l)}</option>`).join("")}</select><input id="f_account_new" type="text" placeholder="New account name, e.g. Cash in hand or Bank Muscat" ${v === "__new__" ? "" : "hidden"}>`; }
  else if (x.t === "checks") { label = `<span class="lab">${esc(lab)}</span>`; const sel = Array.isArray(val) ? val : []; inp = `<div class="checks">${x.o().map(o => `<label class="chk"><input type="checkbox" name="${idn}" value="${esc(o)}" ${sel.includes(o) ? "checked" : ""}><span>${esc(o)}</span></label>`).join("")}</div>`; }
  else if (x.t === "textarea") inp = `<textarea id="${idn}">${esc(val)}</textarea>`;
  else if (x.t === "files") {
    if (!assetsCap) return "";
    const ex = (rec && rec.attachments) || [];
    inp = `${ex.map(a => `<div class="attrow"><a href="${esc(a.url)}" target="_blank" rel="noopener">${esc(a.name || "File")}</a><label class="attrow"><input type="checkbox" data-rm="${esc(a.id)}"> Remove</label></div>`).join("")}<input id="${idn}" type="file" multiple accept="image/*,application/pdf"><span class="help">Photos or PDF files, up to 20 MB each.</span>`;
  }
  else inp = `<input id="${idn}" type="${x.t}" ${x.t === "number" ? 'step="any" min="0" inputmode="decimal"' : ""} ${x.big ? 'class="big" placeholder="0"' : ""} ${x.list ? `list="dl_${x.k}" autocomplete="off"` : ""} value="${esc(val)}">${x.list ? `<datalist id="dl_${x.k}">${x.list().map(n => `<option value="${esc(n)}">`).join("")}</datalist>` : ""}`;
  return `<div class="field ${x.full ? "full" : ""}">${label}${inp}${x.help ? `<span class="help">${esc(x.help)}</span>` : ""}</div>`;
}
const ADMIN_ONLY = ["attachments", "idType", "idNo", "payeeTitle", "payeeBank", "payeeBranch", "payeeAcct", "payeePhone", "dob"];
const vfields = k => role() === "admin" ? CFG[k].fields : CFG[k].fields.filter(x => !(k === "cases" || k === "casereview") || !(ADMIN_ONLY.includes(x.k) || (x.t === "heading" && /Who will be paid/.test(x.l))));
function openForm(k, id) {
  const cfg = CFG[k], rec = id ? (S[cfg.coll || k].find(r => r.id === id) || (k === "donors" ? {name: (donorRows().find(x => x.key === id) || {}).name || ""} : null)) : null; warned = false;
  const title = rec ? "Edit " + cfg.name.toLowerCase() : ({donations: "Record money received", expenses: "Record a payment made", cases: "New request for help", casereview: "Review this request", accounts: "Add an account"}[k] || "Add " + cfg.name.toLowerCase());
  $("#formHost").innerHTML = `<div class="form" role="form" aria-label="${esc(title)}"><h3 style="margin-bottom:12px">${esc(title)}</h3>${cfg.intro && rec ? cfg.intro(rec) : ""}<div class="grid">${!rec && (k === "cases" || k === "donations") ? PASTEBOX : ""}${vfields(k).map(x => fieldHTML(x, rec)).join("")}</div><div class="row"><button class="btn primary" data-act="save">Save</button>${rec ? "" : '<button class="btn" data-act="saveadd">Save and add another</button>'}<button class="btn" data-act="cancel">Cancel</button><span id="fmsg"></span></div></div>`;
  const h = $("#formHost"); h.dataset.k = k; h.dataset.id = id || "";
  h.scrollIntoView({block: "nearest", behavior: "instant"});
  const first = $("#formHost input:not([type=radio]),#formHost select"); if (first) first.focus();
  const acc = $("#f_account"); if (acc) acc.onchange = () => { $("#f_account_new").hidden = acc.value !== "__new__"; };
  h.onclick = e => { const b = e.target.closest("button[data-act]"); if (!b) return; const a = b.dataset.act; if (a === "cancel") closeForm(); else if (a === "save") saveForm(false); else if (a === "saveadd") saveForm(true); else if (a === "copy") copyReceipt(); else if (a === "pastefill") pasteFill(k); };
}
const PASTEBOX = '<div class="field full" style="background:var(--brand-soft);border-radius:14px;padding:12px;display:grid;gap:8px"><label class="lab" for="paste_in">Paste the message you received, and the form fills itself in</label><textarea id="paste_in" placeholder="Paste the application or donation message here" style="min-height:90px"></textarea><div style="display:flex;gap:10px;align-items:center;flex-wrap:wrap"><button type="button" class="btn small primary" data-act="pastefill">Fill in the form</button><span id="paste_msg" class="muted"></span></div></div>';
function parsePaste(text, k) {
  const out = {}, num2 = s => String(s).replace(/[^0-9.]/g, ""); let sec = "";
  const lines = String(text).split(/\r?\n/);
  lines.forEach(raw => {
    const line = raw.trim(); if (!line) return;
    if (/^[A-Z][A-Z \/]+$/.test(line)) { sec = line; return; }
    const m = line.match(/^([^:]{2,70}):\s*(.+)$/); if (!m) return;
    const lab = m[1].trim().toLowerCase(), val = m[2].trim();
    if (k === "cases") {
      if (lab === "full name" || lab === "name" && !/PAY/.test(sec)) out.applicant = val;
      else if (lab === "father or guardian") out.fatherName = val;
      else if (/^(cnic|b-form|bform|passport) number$/.test(lab)) { out.idType = /passport/.test(lab) ? "Passport" : /b-?form/.test(lab) ? "B-Form" : "CNIC"; out.idNo = val; }
      else if (lab === "phone or whatsapp" || lab === "phone") out.contact = val;
      else if (lab === "village or city") out.place = val;
      else if (lab === "tehsil and district") out.district = val;
      else if (lab === "description") out.details = val;
      else if (lab === "amount needed") out.requested = num2(val);
      else if (lab === "reference" || lab === "reference number") out.ref = val;
      else if (lab === "type of help") out.type = val;
      else if (lab === "people in the family") out.familySize = num2(val);
      else if (lab === "monthly income") out.income = num2(val);
      else if (/PAY/.test(sec) && lab === "name") out.payeeName = val;
      else if (lab === "account title") out.payeeTitle = val;
      else if (lab === "bank") out.payeeBank = val;
      else if (lab === "branch") out.payeeBranch = val;
      else if (lab === "account number or iban") out.payeeAcct = val;
      else if (lab === "contact there") out.payeePhone = val;
    } else if (k === "donations") {
      if (lab === "donor" || lab === "name") out.donor = val;
      else if (lab === "amount") out.amount = num2(val);
      else if (lab === "date" || lab === "date of the gift") { const d = new Date(val); out.date = /^\d{4}-\d{2}-\d{2}$/.test(val) ? val : isNaN(d) ? "" : iso(d); }
      else if (lab === "method") out.method = /online/i.test(val) ? "Online" : val;
      else if (/transaction|cheque|reference/.test(lab)) out.reference = val;
      else if (lab === "fund") out.fund = val;
      else if (lab === "contact") out._contact = val;
      else if (lab === "note") out.note = val;
    }
  });
  parsePaste.contact = out._contact || ""; if (k === "donations" && out._contact) { out.note = (out.note ? out.note + "\n" : "") + "Contact: " + out._contact; } delete out._contact;
  if (!Object.keys(out).length) {
    const a = String(text).match(/(?:PKR|Rs\.?|₨)\s*([\d,]+(?:\.\d+)?)/i), ph = String(text).match(/(\+?\d[\d\s-]{8,}\d)/);
    if (a) out[k === "cases" ? "requested" : "amount"] = num2(a[1]);
    if (k === "cases") { if (ph) out.contact = ph[1].trim(); out.details = String(text).trim().slice(0, 600); } else out.note = String(text).trim().slice(0, 400);
  }
  return out;
}
function pasteFill(k) {
  const txt = ($("#paste_in") || {}).value || "", m = $("#paste_msg"); if (!txt.trim()) { m.textContent = "Paste a message first."; return; }
  const got = parsePaste(txt, k), done = []; $("#formHost").dataset.contact = k === "donations" ? parsePaste.contact : "";
  Object.entries(got).forEach(([key, val]) => {
    if (val === "" || val == null) return;
    const el = $("#f_" + key);
    if (el && el.tagName === "SELECT") { const o = Array.from(el.options).find(x => x.value.toLowerCase() === String(val).toLowerCase() || x.textContent.toLowerCase() === String(val).toLowerCase()); if (o) { el.value = o.value; done.push(key); } }
    else if (el) { el.value = val; done.push(key); }
    else { const r = Array.from(document.querySelectorAll('#formHost input[name="f_' + key + '"]')).find(x => x.value.toLowerCase() === String(val).toLowerCase()); if (r) { r.checked = true; done.push(key); } }
  });
  m.className = done.length ? "msg" : "msg err"; m.textContent = done.length ? "Filled in " + done.length + " boxes. Please check them, then save." : "Nothing could be read from that message. Please type it in.";
}
const TPL = [["Received", c => `Assalam o Alaikum ${c.applicant}. We have received your application${c.ref ? " (reference " + c.ref + ")" : ""}. We will review it and keep you updated.`], ["Need more information", c => "Assalam o Alaikum. To continue with your request we need more information. Please send a clear photo of your identity document (CNIC, B-Form or passport) and any fee voucher, bill or report. Thank you."], ["Approved", c => `Good news. Your request has been approved${c.approved || c.requested ? " for " + CUR + " " + omr(c.approved || c.requested) : ""}. We will pay ${c.payeeName || "the school, hospital or shop"} directly and let you know.`], ["Payment sent", c => `We have paid ${CUR} ${omr(c.approved || c.requested)} to ${c.payeeName || "them"}${c.paidOn ? " on " + fdate(c.paidOn) : ""}${c.payRef ? " (transaction " + c.payRef + ")" : ""}. Please check with them, and tell us if anything is not right.`], ["Cannot help now", c => "We are sorry. We could not approve this request at this time. You are welcome to contact us again if your situation changes."]];
let chatCase = null;
const waNum = s => { const d = String(s || "").replace(/\D/g, ""); return d.startsWith("0") && d.length === 11 ? "92" + d.slice(1) : d; };
function chatHTML(c) {
  const th = c.thread || [];
  return `<div class="form" role="form" aria-label="Conversation"><h3 style="margin-bottom:4px">Conversation with ${esc(c.applicant)}</h3><p class="muted" style="margin-bottom:10px">${esc(c.ref || "No reference number yet")} · ${esc(c.status || "")}${c.contact ? " · " + esc(c.contact) : ""}</p>
  <div class="thread">${th.length ? th.map(m => `<div class="bub ${m.from === "team" ? "me" : "them"}"><span>${esc(m.text)}</span><small>${m.from === "team" ? "We wrote" : "They wrote"} · ${esc(fdate(String(m.at).slice(0, 10)))}</small></div>`).join("") : '<p class="muted">No messages yet. Start with a quick message below.</p>'}</div>
  <div class="chips" style="margin:12px 0 8px">${TPL.map((x, i) => `<button type="button" class="qchip" data-tpl="${i}">${esc(x[0])}</button>`).join("")}</div>
  <textarea id="chat_in" placeholder="Write a message"></textarea>
  <div style="display:flex;gap:10px;flex-wrap:wrap;margin-top:10px"><button type="button" class="btn primary" data-chat="send">Send to applicant</button><button type="button" class="btn" data-chat="log">Save a reply I received</button><button type="button" class="btn" data-chat="close">Close</button></div><p class="msg" id="chat_msg" style="margin-top:8px" hidden></p></div>`;
}
function openChat(id) {
  const c = S.cases.find(x => x.id === id); if (!c) return; chatCase = c;
  const h = $("#formHost"); h.dataset.k = "chat"; h.dataset.id = id; h.innerHTML = chatHTML(c); h.scrollIntoView({block: "nearest", behavior: "instant"});
  const say = (x, bad) => { const m = $("#chat_msg"); m.hidden = false; m.className = "msg" + (bad ? " err" : ""); m.textContent = x; };
  h.onclick = async e => {
    const b = e.target.closest("button"); if (!b) return;
    if (b.dataset.tpl != null) { $("#chat_in").value = TPL[+b.dataset.tpl][1](chatCase); return; }
    const a = b.dataset.chat; if (!a) return;
    if (a === "close") { closeForm(); return; }
    const text = ($("#chat_in").value || "").trim(); if (!text) { say("Write a message or tap a quick message first.", true); return; }
    const team = a === "send", now = new Date().toISOString(), nc = Object.assign({}, chatCase, {thread: (chatCase.thread || []).concat([{at: now, from: team ? "team" : "applicant", text}]), updatedAt: now});
    if (team) nc.msgToApplicant = text; delete nc.id;
    b.disabled = true;
    try { await db.collection("cases").doc(chatCase.id).set(nc); if (team) syncStatus(chatCase.id, nc); } catch (x) { b.disabled = false; say("Could not save. Please try again.", true); return; }
    chatCase = Object.assign({id: chatCase.id}, nc); h.innerHTML = chatHTML(chatCase); h.onclick = h.onclick;
    openChatBind(h, say);
    if (team) { try { await navigator.clipboard.writeText(text); } catch (x) {} const n = waNum(chatCase.contact); if (n.length >= 10) { try { window.open("https://wa.me/" + n + "?text=" + encodeURIComponent(text), "_blank", "noopener"); } catch (x) {} } toast("Saved. The message is copied and WhatsApp is opening."); } else toast("Reply saved.");
  };
}
function openChatBind(h, say) { /* handlers stay on formHost */ }
function closeForm() { const h = $("#formHost"); if (h) { h.innerHTML = ""; h.onclick = null; } }
async function saveForm(again) {
  const h = $("#formHost"), k = h.dataset.k, id = h.dataset.id, cfg = CFG[k], msg = $("#fmsg"), out = {};
  const fail = m => { msg.className = "msg err"; msg.textContent = m; };
  for (const x of vfields(k)) {
    if (x.t === "files" || x.t === "heading") continue;
    if (x.t === "checks") { out[x.k] = Array.from(h.querySelectorAll(`input[name="f_${x.k}"]:checked`)).map(c => c.value); continue; }
    let v;
    if (x.t === "chips") { const c = document.querySelector(`input[name="f_${x.k}"]:checked`); v = c ? c.value : ""; } else v = $("#f_" + x.k).value.trim();
    out[x.k] = x.t === "number" ? (v === "" ? 0 : num(v)) : v;
    if (x.req && v === "") return fail(`Please fill in: ${L(x.l)}.`);
  }
  let newName = "";
  if (out.account === "__new__") { newName = $("#f_account_new").value.trim(); if (!newName) return fail("Type a name for the new account."); }
  if ((k === "donations" || k === "expenses") && !(out.amount > 0)) return fail("The amount must be more than zero.");
  if (k === "expenses" && !warned) {
    const old = id ? S.expenses.find(r => r.id === id) : null, bal = fundBal(out.fund) + (old && old.fund === out.fund ? num(old.amount) : 0);
    if (out.amount > bal) { warned = true; msg.className = "msg"; msg.textContent = `This is ${omr(out.amount - bal)} ${CUR} more than the ${out.fund} fund holds. Press Save again to record it anyway.`; return; }
  }
  if (k === "cases" && !out.status) out.status = "Applied";
  const buttons = h.querySelectorAll("button"); buttons.forEach(b => b.disabled = true);
  const did = k === "donors" ? donorKey(out.name) : id;
  const now = new Date().toISOString(), old = did ? S[cfg.coll || k].find(r => r.id === did) : null;
  try {
    if (newName) { const ref = db.collection("accounts").doc(); await ref.set({name: newName, kind: /cash/i.test(newName) ? "Cash in hand" : "Bank account", opening: 0, asOf: today(), createdAt: now, by: myId || ""}); out.account = ref.id; }
    const hasFiles = role() === "admin" && cfg.fields.some(x => x.t === "files") && assetsCap;
    if (hasFiles) {
      const rm = new Set(Array.from(h.querySelectorAll("input[data-rm]:checked")).map(c => c.dataset.rm));
      const att = ((old && old.attachments) || []).filter(a => !rm.has(a.id));
      const fi = $("#f_attachments"), files = fi ? Array.from(fi.files) : [];
      for (let n = 0; n < files.length; n++) { msg.className = "msg"; msg.textContent = `Uploading file ${n + 1} of ${files.length}…`; const r = await assetsCap.upload(files[n]); att.push({id: r.id, url: r.url, name: files[n].name, type: files[n].type}); }
      out.attachments = att;
      rm.forEach(rid => { try { assetsCap.delete(rid).catch(() => {}); } catch (e) {} });
    }
    const rec = old ? Object.assign({}, old, out, {updatedAt: now}) : Object.assign(out, {createdAt: now, by: myId || ""});
    delete rec.id;
    await (did ? db.collection(cfg.coll || k).doc(did) : db.collection(cfg.coll || k).doc()).set(rec);
    if (k === "cases" || k === "casereview") syncStatus(did, rec);
    if (k === "donations" && h.dataset.contact && (out.donor || "").trim()) { try { const nm = out.donor.trim(), key = donorKey(nm), c = h.dataset.contact, ex = S.donors.find(x => x.id === key), upd = Object.assign({name: nm, type: "Individual"}, ex || {}); delete upd.id; if (/@/.test(c)) { if (!upd.email) upd.email = c; } else if (!upd.phone) upd.phone = c; await db.collection("donors").doc(key).set(upd); } catch (e) {} }
    logAudit(k === "casereview" ? "Reviewed" : old ? "Updated" : "Added", cfg.coll || k, labelFor(cfg.coll || k, rec));
    toast(cfg.name + " saved");
    if (again && !id) openForm(k); else closeForm();
  } catch (e) {
    buttons.forEach(b => b.disabled = false);
    fail(e && e.code === "quota_exceeded" ? "The storage limit is full." : e && e.code === "unsupported_type" ? "That file type is not supported. Use a photo or PDF." : "Could not save. Check your connection and try again.");
  }
}
function receiptText(d) {
  const no = "MW-" + (d.date || "").replace(/-/g, "").slice(0, 6) + "-" + String(d.id).slice(-4).toUpperCase();
  return ["Maa Welfare Organization", "Donation receipt " + no, "", "Date: " + fdate(d.date), "Received from: " + d.donor, "Amount: " + CUR + " " + omr(d.amount), "Fund: " + d.fund, "Method: " + d.method].concat(d.reference ? ["Reference: " + d.reference] : [], (pub.content && pub.content.regInfo ? ["Registration: " + pub.content.regInfo] : []), ["", "Thank you for your generous donation."]).join("\n");
}
function showReceipt(id) {
  const d = S.donations.find(r => r.id === id); if (!d) return;
  $("#formHost").innerHTML = `<div class="form"><h3 style="margin-bottom:12px">Donation receipt</h3><pre class="receipt" id="rtext">${esc(receiptText(d))}</pre><div class="row"><button class="btn primary" data-act="copy">Copy text to send</button><button class="btn" data-act="cancel">Close</button><span id="fmsg"></span></div></div>`;
  const h = $("#formHost"); h.dataset.k = ""; h.dataset.id = id; h.scrollIntoView({block: "nearest", behavior: "instant"});
  h.onclick = e => { const b = e.target.closest("button[data-act]"); if (!b) return; if (b.dataset.act === "cancel") closeForm(); else if (b.dataset.act === "copy") copyReceipt(); };
}
async function copyReceipt() {
  const el = $("#rtext"), m = $("#fmsg");
  try { await navigator.clipboard.writeText(el.textContent); m.className = "msg"; m.textContent = "Copied. Paste it into WhatsApp or a message."; }
  catch (e) { const r = document.createRange(); r.selectNodeContents(el); const s = getSelection(); s.removeAllRanges(); s.addRange(r); m.className = "msg"; m.textContent = "Text selected. Copy it manually."; }
}

/* ---------- financial statements ---------- */
function periodRange() {
  const n = new Date(), y = n.getFullYear(), m = n.getMonth();
  if (fin.period === "month") return [iso(new Date(y, m, 1)), iso(new Date(y, m + 1, 0))];
  if (fin.period === "last") return [iso(new Date(y, m - 1, 1)), iso(new Date(y, m, 0))];
  if (fin.period === "year") return [y + "-01-01", y + "-12-31"];
  if (fin.period === "custom") return [fin.from || "0000-01-01", fin.to || "9999-12-31"];
  return ["0000-01-01", "9999-12-31"];
}
function financials() {
  const [a, b] = periodRange(), inR = d => (d.date || "") >= a && (d.date || "") <= b, bef = d => (d.date || "") < a;
  const di = S.donations.filter(inR), ex = S.expenses.filter(inR), rec = sum(di, d => d.amount), paid = sum(ex, d => d.amount);
  const fundRows = FUNDS.map(f => { const open = (f === "General" ? sum(S.accounts, x => x.opening) : 0) + sum(S.donations.filter(d => d.fund === f && bef(d)), d => d.amount) - sum(S.expenses.filter(d => d.fund === f && bef(d)), d => d.amount); const r = sum(di.filter(d => d.fund === f), d => d.amount), p = sum(ex.filter(d => d.fund === f), d => d.amount); return {n: f, open, rec: r, paid: p, close: open + r - p}; });
  const acctRows = S.accounts.map(x => { const open = num(x.opening) + sum(S.donations.filter(d => d.account === x.id && bef(d)), d => d.amount) - sum(S.expenses.filter(d => d.account === x.id && bef(d)), d => d.amount); const r = sum(di.filter(d => d.account === x.id), d => d.amount), p = sum(ex.filter(d => d.account === x.id), d => d.amount); return {n: x.name, open, rec: r, paid: p, close: open + r - p}; });
  const cats = {}; ex.forEach(e => { const c = e.category || "Other"; cats[c] = (cats[c] || 0) + num(e.amount); });
  const months = Array.from(new Set(di.concat(ex).map(d => (d.date || "").slice(0, 7)).filter(Boolean))).sort();
  const monthRows = months.map(m => ({n: m, rec: sum(di.filter(d => d.date.slice(0, 7) === m), d => d.amount), paid: sum(ex.filter(d => d.date.slice(0, 7) === m), d => d.amount)}));
  const dm = {}; di.forEach(d => { const k = (d.donor || "").trim(); if (!k) return; dm[k] = dm[k] || {n: 0, t: 0}; dm[k].n++; dm[k].t += num(d.amount); });
  const top = Object.entries(dm).sort((x, y) => y[1].t - x[1].t).slice(0, 5);
  const caseRows = TYPES.map(ty => { const cs = S.cases.filter(c => c.type === ty); return {n: ty, count: cs.length, done: cs.filter(c => c.status === "Disbursed" || c.status === "Closed").length, appr: sum(cs, c => c.approved), paid: sum(ex.filter(e => cs.some(c => c.id === e.caseId)), e => e.amount)}; });
  const label = {month: "This month", last: "Last month", year: "This year", all: "All time", custom: "Custom dates"}[fin.period];
  const rangeText = fin.period === "all" ? "From the beginning to today" : fdate(a.startsWith("0000") ? "" : a) + (a.startsWith("0000") ? "Beginning" : "") + " to " + (b.startsWith("9999") ? "today" : fdate(b));
  const closing = sum(fundRows, r => r.close), net = rec - paid, admPct = rec > 0 ? sum(ex.filter(e => e.category === "Administration"), e => e.amount) / rec * 100 : 0;
  const helpRows = S.cases.map(c => { const ps = S.expenses.filter(e => e.caseId === c.id); return {c, paidAll: sum(ps, e => e.amount), paidIn: sum(ps.filter(inR), e => e.amount), last: ps.map(e => e.date || "").sort().pop() || ""}; }).filter(r => r.paidAll > 0).sort((x, y) => y.last.localeCompare(x.last));
  lastFin = {helpRows, label, rangeText, rec, paid, net, closing, fundRows, acctRows, cats, monthRows, di, caseRows, top, byFund: FUNDS.map(f => [f, sum(di.filter(d => d.fund === f), d => d.amount)])};
  const tbl = (head, rows) => `<div class="scroll"><table><thead><tr>${head.map((h, i) => `<th class="${i ? "r" : ""}">${h}</th>`).join("")}</tr></thead><tbody>${rows.join("")}</tbody></table></div>`;
  const mv = r => `<tr><td>${esc(r.n)}</td><td class="r num">${omr(r.open)}</td><td class="r num">${omr(r.rec)}</td><td class="r num">${omr(r.paid)}</td><td class="r num"><b>${neg(r.close)}</b></td></tr>`;
  return `<div class="teamhead" style="padding-top:18px"><h2 style="font-size:1.4rem">Financial statements</h2>${downloads ? '<button class="btn small" data-act="fincsv">Download CSV</button>' : ""}</div>
  <div class="chips" style="margin:10px 0" role="radiogroup" aria-label="Period">${[["month", "This month"], ["last", "Last month"], ["year", "This year"], ["all", "All time"], ["custom", "Custom dates"]].map(([v, l]) => `<label class="chip"><input type="radio" name="fin_period" value="${v}" ${fin.period === v ? "checked" : ""}><span>${l}</span></label>`).join("")}</div>
  ${fin.period === "custom" ? `<div class="toolbar"><label>From<input type="date" data-fin="from" value="${esc(fin.from)}"></label><label>To<input type="date" data-fin="to" value="${esc(fin.to)}"></label></div>` : ""}
  <p class="muted">${esc(label)} · ${esc(rangeText)} · amounts in ${esc(CUR)}</p>
  <div class="tiles"><div class="tile"><span>Received</span><b class="num">${omr(rec)}</b></div><div class="tile"><span>Given out</span><b class="num">${omr(paid)}</b></div><div class="tile"><span>${net >= 0 ? "Surplus" : "Deficit"}</span><b class="num" style="color:${net >= 0 ? "var(--good)" : "var(--bad)"}">${neg(net)}</b></div><div class="tile"><span>Funds at end</span><b class="num">${neg(closing)}</b></div><div class="tile"><span>Running costs</span><b class="num">${admPct.toFixed(1)}%</b><small>of money received${admPct > 15 ? " · above the 15% guide" : ""}</small></div></div>
  <div class="cols">
    <div class="card"><h3>Income and expenditure</h3><div class="scroll" style="margin-top:10px"><table class="stmt"><tbody>
      <tr><td colspan="2"><b>Income: donations received</b></td></tr>${lastFin.byFund.map(([f, v]) => `<tr><td class="sub">${f} fund</td><td class="r num">${omr(v)}</td></tr>`).join("")}<tr class="tot"><td>Total income</td><td class="r num">${omr(rec)}</td></tr>
      <tr><td colspan="2"><b>Expenditure: payments made</b></td></tr>${Object.keys(cats).length ? Object.entries(cats).sort((x, y) => y[1] - x[1]).map(([c, v]) => `<tr><td class="sub">${esc(c)}</td><td class="r num">${omr(v)}</td></tr>`).join("") : '<tr><td class="sub" colspan="2">No payments in this period</td></tr>'}<tr class="tot"><td>Total expenditure</td><td class="r num">${omr(paid)}</td></tr>
      <tr class="tot"><td>${net >= 0 ? "Surplus" : "Deficit"} for the period</td><td class="r num">${neg(net)}</td></tr></tbody></table></div></div>
    <div class="card"><h3>Top donors</h3>${top.length ? `<ul class="list" style="margin-top:8px">${top.map(([n, v]) => `<li><span>${esc(n)} <span class="muted">· ${v.n} gift${v.n > 1 ? "s" : ""}</span></span><b class="num">${omr(v.t)}</b></li>`).join("")}</ul>` : '<p class="muted" style="margin-top:8px">No donations in this period.</p>'}</div>
  </div>
  <h3 style="margin:22px 0 8px">Funds</h3>${tbl(["Fund", "Opening", "Received", "Paid out", "Closing"], fundRows.map(mv))}
  <h3 style="margin:22px 0 8px">Accounts and cash</h3>${acctRows.length ? tbl(["Account", "Opening", "In", "Out", "Closing"], acctRows.map(mv)) : '<div class="empty">Add an account to see its statement.</div>'}
  <h3 style="margin:22px 0 8px">Month by month</h3>${monthRows.length ? tbl(["Month", "Received", "Given out", "Net"], monthRows.map(r => `<tr><td>${r.n}</td><td class="r num">${omr(r.rec)}</td><td class="r num">${omr(r.paid)}</td><td class="r num"><b>${neg(r.rec - r.paid)}</b></td></tr>`)) : '<div class="empty">No activity in this period.</div>'}
  <h3 style="margin:22px 0 8px">Who received help</h3>${helpRows.length ? `<div class="scroll"><table><thead><tr><th>Name</th><th>Type</th><th>Status</th><th>Last payment</th><th class="r">Paid in period</th><th class="r">Paid in total</th></tr></thead><tbody>${helpRows.map(r => `<tr><td><b>${esc(r.c.applicant)}</b><br><span class="muted">${esc(r.c.details)}</span></td><td>${esc(r.c.type)}</td><td><span class="pill ${pillFor(r.c.status)}">${esc(r.c.status)}</span></td><td>${fdate(r.last)}</td><td class="r num">${omr(r.paidIn)}</td><td class="r num"><b>${omr(r.paidAll)}</b></td></tr>`).join("")}</tbody></table></div>` : '<div class="empty">No assistance recorded yet. Record a payment and link it to a case to list the person here.</div>'}
  <h3 style="margin:22px 0 8px">Help given</h3>${tbl(["Type", "Requests", "Completed", "Approved", "Paid in period"], caseRows.map(r => `<tr><td>${r.n}</td><td class="r num">${r.count}</td><td class="r num">${r.done}</td><td class="r num">${omr(r.appr)}</td><td class="r num">${omr(r.paid)}</td></tr>`))}`;
}
const qcsv = v => '"' + String(v == null ? "" : v).replace(/"/g, '""') + '"', rowcsv = a => a.map(qcsv).join(",");
function mini(title, rows, heads) { return `<div class="card" style="min-width:0"><h3>${esc(title)}</h3>${rows.length ? `<div class="scroll" style="margin-top:8px"><table><thead><tr>${heads.map((h, i) => `<th class="${i ? "r" : ""}">${esc(h)}</th>`).join("")}</tr></thead><tbody>${rows.map(r => `<tr>${r.map((c, i) => `<td class="${i ? "r num" : ""}">${i ? c : esc(c)}</td>`).join("")}</tr>`).join("")}</tbody></table></div>` : '<p class="muted" style="margin-top:6px">Nothing to show yet.</p>'}</div>`; }
function helpData() {
  const rows = S.cases.map(c => { const pay = S.expenses.filter(e => e.caseId === c.id).sort((a, b) => (b.date || "").localeCompare(a.date || "")); return {c, paid: sum(pay, e => e.amount), last: pay.length ? pay[0].date : ""}; });
  const by = fn => { const m = {}; rows.forEach(r => { const k = fn(r.c) || "Not stated"; const x = m[k] = m[k] || {n: 0, req: 0, paid: 0}; x.n++; x.req += num(r.c.requested); x.paid += r.paid; }); return Object.entries(m).sort((a, b) => b[1].n - a[1].n); };
  return {rows, by};
}
function helpReport() {
  const {rows, by} = helpData(), n = rows.length, helped = rows.filter(r => r.paid > 0), pend = rows.filter(r => ["Applied", "Needs more info", "Under review", "Approved"].includes(r.c.status)).length, dec = rows.filter(r => r.c.status === "Declined").length, req = sum(rows, r => r.c.requested), paid = sum(rows, r => r.paid);
  const trow = e => [e[0], e[1].n, omr(e[1].req), omr(e[1].paid)];
  return `<div class="teamhead" style="padding-top:18px"><h2 style="font-size:1.4rem">Help seekers report</h2>${downloads && role() !== "viewer" ? '<button class="btn primary" data-act="csvhelp">Download register (CSV)</button>' : ""}</div>
  <p class="muted" style="margin-top:4px">A summary of everyone who asked for help. It fills in by itself from the Requests and Payments you record.</p>
  <div class="tiles" style="margin-top:14px"><div class="tile"><span>Requests</span><b class="num">${n}</b></div><div class="tile"><span>People helped</span><b class="num">${helped.length}</b></div><div class="tile"><span>Waiting for a decision</span><b class="num">${pend}</b></div><div class="tile"><span>Declined</span><b class="num">${dec}</b></div><div class="tile"><span>Amount requested</span><b class="num">${omr(req)}</b><small>${esc(CUR)}</small></div><div class="tile"><span>Amount paid out</span><b class="num">${omr(paid)}</b><small>${esc(CUR)}</small></div><div class="tile"><span>Average help per person</span><b class="num">${helped.length ? omr(paid / helped.length) : 0}</b><small>${esc(CUR)}</small></div></div>
  <div class="cols" style="margin-top:16px">${mini("By type of help", by(c => c.type).map(trow), ["Type", "People", "Requested", "Paid"])}${mini("By status", by(c => c.status).map(trow), ["Status", "People", "Requested", "Paid"])}</div>
  <div class="cols" style="margin-top:16px">${mini("By village or city", by(c => (c.place || "").trim()).slice(0, 12).map(trow), ["Place", "People", "Requested", "Paid"])}${mini("By month of request", by(c => String(c.openedOn || c.createdAt || "").slice(0, 7)).sort((a, b) => b[0].localeCompare(a[0])).slice(0, 12).map(trow), ["Month", "People", "Requested", "Paid"])}</div>
  <h3 style="margin:22px 0 8px">Register of help seekers</h3>
  ${rows.length ? `<div class="scroll"><table><thead><tr><th>Name</th><th>Type</th><th>Place</th><th>Status</th><th class="r">Requested</th><th class="r">Paid</th><th>Last payment</th><th>Paid to</th></tr></thead><tbody>${rows.slice().sort((a, b) => String(b.c.openedOn || "").localeCompare(String(a.c.openedOn || ""))).map(r => `<tr><td><b>${esc(r.c.applicant)}</b>${r.c.ref ? `<br><span class="muted">${esc(r.c.ref)}</span>` : ""}</td><td>${esc(r.c.type)}</td><td>${esc(r.c.place)}</td><td><span class="pill ${pillFor(r.c.status)}">${esc(r.c.status)}</span></td><td class="r num">${omr(r.c.requested)}</td><td class="r num">${omr(r.paid)}</td><td>${esc(fdate(r.last))}</td><td>${esc(r.c.payeeName)}</td></tr>`).join("")}</tbody></table></div>` : '<p class="muted">No requests recorded yet.</p>'}`;
}
function helpCSV() {
  const {rows} = helpData(), adm = role() === "admin", head = ["Reference", "Name", "Father or guardian", "Type", "Village or city", "Tehsil and district", "Phone", "Request date", "Status", "Requested", "Approved", "Paid", "Last payment", "Paid to", "Payment confirmed by school", "Message"].concat(adm ? ["ID type", "ID number", "Account title", "Bank", "Account number or IBAN"] : []);
  const lines = [rowcsv(head)].concat(rows.map(r => { const c = r.c; return rowcsv([c.ref, c.applicant, c.fatherName, c.type, c.place, c.district, c.contact, c.openedOn, c.status, c.requested, c.approved, r.paid, r.last, c.payeeName, c.ackStatus, c.details].concat(adm ? [c.idType, c.idNo, c.payeeTitle, c.payeeBank, c.payeeAcct] : [])); }));
  return "﻿" + lines.join("\n");
}
function donorReport() {
  const D = S.donations, total = sum(D, d => d.amount), rows = donorRows().filter(r => r.gifts > 0), repeat = rows.filter(r => r.gifts > 1).length, big = D.reduce((m, d) => Math.max(m, num(d.amount)), 0), cash = sum(D.filter(d => d.method === "Cash"), d => d.amount);
  const grp = fn => { const m = {}; D.forEach(d => { const k = fn(d) || "Not stated"; const x = m[k] = m[k] || {n: 0, a: 0}; x.n++; x.a += num(d.amount); }); return Object.entries(m).sort((a, b) => b[1].a - a[1].a); };
  const g = e => [e[0], e[1].n, omr(e[1].a)];
  return `<div class="teamhead" style="padding-top:18px"><h2 style="font-size:1.4rem">Donor report</h2>${downloads && role() !== "viewer" ? '<button class="btn primary" data-act="csvdonor">Download donor register (CSV)</button>' : ""}</div>
  <p class="muted" style="margin-top:4px">A summary of everyone who has given. It fills in by itself from the donations you record.</p>
  <div class="tiles" style="margin-top:14px"><div class="tile"><span>Donors</span><b class="num">${rows.length}</b></div><div class="tile"><span>Gifts</span><b class="num">${D.length}</b></div><div class="tile"><span>Total received</span><b class="num">${omr(total)}</b><small>${esc(CUR)}</small></div><div class="tile"><span>Average gift</span><b class="num">${D.length ? omr(total / D.length) : 0}</b><small>${esc(CUR)}</small></div><div class="tile"><span>Largest gift</span><b class="num">${omr(big)}</b><small>${esc(CUR)}</small></div><div class="tile"><span>Gave more than once</span><b class="num">${repeat}</b></div><div class="tile"><span>Given in cash</span><b class="num">${total ? Math.round(cash / total * 100) : 0}%</b><small>of money received</small></div></div>
  <div class="cols" style="margin-top:16px">${mini("By fund", grp(d => d.fund).map(g), ["Fund", "Gifts", "Amount"])}${mini("By way of giving", grp(d => d.method).map(g), ["Method", "Gifts", "Amount"])}</div>
  <div class="cols" style="margin-top:16px">${mini("Top donors", rows.slice(0, 10).map(r => [r.name, r.gifts, omr(r.total)]), ["Donor", "Gifts", "Total"])}${mini("By month", grp(d => String(d.date || "").slice(0, 7)).sort((a, b) => b[0].localeCompare(a[0])).slice(0, 12).map(g), ["Month", "Gifts", "Amount"])}</div>
  <h3 style="margin:22px 0 8px">Register of donors</h3>
  ${rows.length ? `<div class="scroll"><table><thead><tr><th>Donor</th><th>Contact</th><th class="r">Gifts</th><th class="r">Total given</th><th class="r">Average</th><th>First gift</th><th>Last gift</th></tr></thead><tbody>${rows.map(r => { const ds = D.filter(d => donorKey((d.donor || "").trim()) === r.key).map(d => d.date || "").sort(); return `<tr><td><b>${esc(r.name)}</b></td><td>${esc([r.c && r.c.phone, r.c && r.c.email].filter(Boolean).join(" · "))}</td><td class="r num">${r.gifts}</td><td class="r num">${omr(r.total)}</td><td class="r num">${omr(r.total / r.gifts)}</td><td>${esc(fdate(ds[0]))}</td><td>${esc(fdate(r.last))}</td></tr>`; }).join("")}</tbody></table></div>` : '<p class="muted">No donations recorded yet.</p>'}`;
}
function donorCSV() {
  const rows = donorRows().filter(r => r.gifts > 0), lines = [rowcsv(["Donor", "Type", "Phone", "Email", "City or country", "Gifts", "Total given", "Average", "First gift", "Last gift"])];
  rows.forEach(r => { const ds = S.donations.filter(d => donorKey((d.donor || "").trim()) === r.key).map(d => d.date || "").sort(), c = r.c || {}; lines.push(rowcsv([r.name, c.type, c.phone, c.email, c.city, r.gifts, r.total, r.total / r.gifts, ds[0], r.last])); });
  lines.push("", rowcsv(["Every gift"]), rowcsv(["Date", "Donor", "Amount", "Fund", "Method", "Reference", "Note"]));
  S.donations.slice().sort((a, b) => (a.date || "").localeCompare(b.date || "")).forEach(d => lines.push(rowcsv([d.date, d.donor, d.amount, d.fund, d.method, d.reference, d.note])));
  return "﻿" + lines.join("\n");
}
function finCSV() {
  const f = lastFin || (financials(), lastFin), q = v => '"' + String(v == null ? "" : v).replace(/"/g, '""') + '"', row = a => a.map(q).join(",");
  const lines = [row(["Maa Welfare Organization - Financial statement"]), row([f.label, f.rangeText, "Currency " + CUR]), "", row(["Income and expenditure"])];
  f.byFund.forEach(([n, v]) => lines.push(row([n + " fund", omr(v)]))); lines.push(row(["Total income", omr(f.rec)]));
  Object.entries(f.cats).forEach(([n, v]) => lines.push(row([n, omr(v)]))); lines.push(row(["Total expenditure", omr(f.paid)]), row(["Surplus / (deficit)", neg(f.net)]), "", row(["Funds", "Opening", "Received", "Paid out", "Closing"]));
  f.fundRows.forEach(r => lines.push(row([r.n, omr(r.open), omr(r.rec), omr(r.paid), omr(r.close)]))); lines.push("", row(["Accounts", "Opening", "In", "Out", "Closing"]));
  f.acctRows.forEach(r => lines.push(row([r.n, omr(r.open), omr(r.rec), omr(r.paid), omr(r.close)]))); lines.push("", row(["Month", "Received", "Given out", "Net"]));
  f.monthRows.forEach(r => lines.push(row([r.n, omr(r.rec), omr(r.paid), neg(r.rec - r.paid)])));
  lines.push("", row(["Who received help", "Type", "Details", "Status", "Last payment", "Paid in period", "Paid in total"]));
  f.helpRows.forEach(r => lines.push(row([r.c.applicant, r.c.type, r.c.details, r.c.status, r.last, omr(r.paidIn), omr(r.paidAll)])));
  return "﻿" + lines.join("\n");
}
function toCSV(k) {
  const cfg = CFG[k], head = vfields(k).filter(f => f.t !== "heading").map(f => f.l);
  const q = v => '"' + String(v == null ? "" : v).replace(/"/g, '""') + '"';
  const rows = S[k].map(r => vfields(k).filter(f => f.t !== "heading").map(f => q(f.k === "account" ? nameOf("accounts", r.account) : f.k === "caseId" ? nameOf("cases", r.caseId) : f.k === "campaign" ? nameOf("campaigns", r.campaign) : f.t === "files" ? (r[f.k] || []).map(a => a.name).join("; ") : f.t === "checks" ? (r[f.k] || []).join("; ") : r[f.k])).join(","));
  return "﻿" + [head.map(q).join(",")].concat(rows).join("\n");
}
const pending = {};
function bind() {
  const host = $("#tbody"); if (!host) return;
  host.onchange = e => { const el = e.target; if (el.id === "fsel") { filterVal = el.value; renderBody(); } else if (el.id === "ssel") { sortVal = el.value; renderBody(); } else if (el.name === "fin_period") { fin.period = el.value; renderBody(); } else if (el.dataset && el.dataset.fin) { fin[el.dataset.fin] = el.value; renderBody(); } };
  const q = $("#q"); if (q) q.oninput = () => { filterText = q.value; const pos = q.selectionStart; renderBody(); const n = $("#q"); n.focus(); n.setSelectionRange(pos, pos); };
  host.onclick = async e => {
    const qb = e.target.closest("[data-quick]"); if (qb) { quickAdd(qb.dataset.quick); return; }
    const b = e.target.closest("button[data-act]"); if (!b) return; const a = b.dataset.act, id = b.dataset.id;
    if (!allowed(a)) { toast("Your login cannot do that."); return; }
    if (a === "add") openForm(tab); else if (a === "edit") openForm(tab, id);
    else if (a === "receipt") showReceipt(id);
    else if (a === "review") openForm("casereview", id);
    else if (a === "chat") openChat(id);
    else if (a === "ackmsg") {
      const c = S.cases.find(x => x.id === id); if (!c) return;
      if (!c.ref) { toast("Add the reference number to this request first."); return; }
      if (!c.paidOn && !c.payRef) { toast("Add the payment date and transaction number to this request first."); return; }
      const link = location.href.split("#")[0] + "#confirm", L = (l, x) => x ? l + ": " + x : null, txt = ["Assalam o Alaikum,", "", "Maa Welfare Organization has made a payment for " + c.applicant + ".", "", "PAYMENT DETAILS", L("Reference number", c.ref), "Amount: " + CUR + " " + omr(c.approved || c.requested), L("Paid to", c.payeeName), L("Date paid", c.paidOn ? fdate(c.paidOn) : ""), L("Transaction or cheque number", c.payRef), "", "I am attaching the proof of payment (a screenshot or the bank receipt).", "", "Please:", "1. Check that the money has reached your account.", "2. Match it with the fee, bill or account of " + c.applicant + " in your records.", "3. Confirm to us and send your receipt number here: " + link, ((pub.content || {}).waNumber ? "   (or reply to us on WhatsApp: " + pub.content.waNumber + ")" : ""), "", "If anything does not match, please tell us right away.", "", "Thank you."].filter(x => x !== null).join("\n");
      try { await navigator.clipboard.writeText(txt); toast("Message copied. Paste it to them and attach your proof of payment."); { const d = String(c.payeePhone || "").replace(/\D/g, ""), n = d.startsWith("0") && d.length === 11 ? "92" + d.slice(1) : d; if (n.length >= 10) { try { window.open("https://wa.me/" + n + "?text=" + encodeURIComponent(txt), "_blank", "noopener"); } catch (x) {} } } } catch (x) { toast("Could not copy. Please try again."); }
      if (c.ackStatus !== "Proof sent" && c.ackStatus !== "Confirmed by school") { try { const nc = Object.assign({}, c, {ackStatus: "Proof sent", updatedAt: new Date().toISOString()}); delete nc.id; await db.collection("cases").doc(id).set(nc); syncStatus(id, nc); } catch (x) {} }
    }
    else if (a === "uadd") {
      const m = $("#umsg"), un = $("#u_user").value.trim().toLowerCase(), pw = $("#u_pass").value, say = (x) => { m.className = "msg err"; m.textContent = x; };
      if (!un || pw.length < 8) return say("Enter a username and a password of at least 8 characters.");
      if ((AUTH.users || []).some(x => x.u === un)) return say("That username is already taken.");
      try { const nl = (AUTH.users || []).concat([await makeUser(un, $("#u_name").value, $("#u_role").value, pw)]); await saveUsers(nl); AUTH.users = nl; toast("Login added"); renderBody(); } catch (err) { say("Could not save."); }
    }
    else if (a === "ureset") { resetFor = id; renderBody(); }
    else if (a === "ucancel") { resetFor = ""; renderBody(); }
    else if (a === "usave") {
      const pw = $("#u_newpass").value, m = $("#umsg2"), old = (AUTH.users || []).find(x => x.u === resetFor);
      if (!old) return;
      if (pw.length < 8) { m.className = "msg err"; m.textContent = "Use at least 8 characters."; return; }
      try { const nu = await makeUser(old.u, old.name, old.role, pw), nl = AUTH.users.map(x => x.u === old.u ? nu : x); await saveUsers(nl); AUTH.users = nl; resetFor = ""; toast("Password changed"); renderBody(); } catch (err) { m.className = "msg err"; m.textContent = "Could not save."; }
    }
    else if (a === "udel") {
      if (!pending["u" + id]) { pending["u" + id] = 1; b.textContent = "Confirm remove"; b.classList.add("confirm"); setTimeout(() => { delete pending["u" + id]; if (b.isConnected) { b.textContent = "Remove"; b.classList.remove("confirm"); } }, 4000); return; }
      delete pending["u" + id];
      const list = AUTH.users || [], target = list.find(x => x.u === id);
      if (!target) return;
      if (AUTH.session && AUTH.session.u === id) { toast("You cannot remove the login you are using."); return; }
      if (target.role === "admin" && list.filter(x => x.role === "admin").length < 2) { toast("Keep at least one admin login."); return; }
      try { const nl = list.filter(x => x.u !== id); await saveUsers(nl); AUTH.users = nl; toast("Login removed"); renderBody(); } catch (err) { toast("Could not remove."); }
    }
    else if (a === "csvk") { try { await downloads.save({filename: "maa-welfare-" + id + "-" + today() + ".csv", data: toCSV(id)}); } catch (err) {} }
    else if (a === "backupjson") { try { const data = {}; Object.keys(S).forEach(k => data[k] = S[k]); await downloads.save({filename: "maa-welfare-backup-" + today() + ".json", data: JSON.stringify({exportedAt: new Date().toISOString(), currency: CUR, data}, null, 2)}); } catch (err) {} }
    else if (a === "pledgeRecv") {
      const p = S.pledges.find(x => x.id === id), acc = lastAcct("donations"); if (!p) return;
      if (!acc) { toast("Add an account first, in the Accounts tab."); return; }
      const now = new Date().toISOString(), strip = o => { const c = Object.assign({}, o); delete c.id; return c; };
      try {
        await db.collection("donations").doc().set({date: today(), donor: p.donor, amount: num(p.amount), fund: p.fund || "General", method: "Cash", account: acc, campaign: p.campaign || "", reference: "Pledge", note: "From pledge expected " + (p.dueDate || ""), createdAt: now, by: myId || ""});
        await db.collection("pledges").doc(id).set(Object.assign(strip(p), {status: "Received", receivedOn: today(), updatedAt: now}));
        logAudit("Pledge received", "pledges", labelFor("pledges", p)); toast("Recorded as a donation. Edit it if the account or method differs.");
      } catch (err) { toast("Could not record. Try again."); }
    }
    else if (a === "taskDone") { const x = S.tasks.find(r => r.id === id); if (x) { const c = Object.assign({}, x, {status: "Done", updatedAt: new Date().toISOString()}); delete c.id; try { await db.collection("tasks").doc(id).set(c); logAudit("Updated", "tasks", x.title + " done"); } catch (err) {} } }
    else if (a === "fincsv") { try { await downloads.save({filename: "maa-welfare-statement-" + today() + ".csv", data: finCSV()}); } catch (err) {} }
    else if (a === "del") {
      if (!pending[id]) { pending[id] = 1; b.textContent = "Confirm delete"; b.classList.add("confirm"); setTimeout(() => { delete pending[id]; if (b.isConnected) { b.textContent = "Delete"; b.classList.remove("confirm"); } }, 4000); return; }
      delete pending[id]; const row = S[tab].find(r => r.id === id); try { await db.collection(tab).doc(id).delete(); if (row) logAudit("Deleted", tab, labelFor(tab, row)); } catch (err) { b.textContent = "Failed"; }
    }
    else if (a === "csvhelp" || a === "csvdonor") { try { await downloads.save({filename: (a === "csvhelp" ? "ma-welfare-help-seekers-" : "ma-welfare-donors-") + today() + ".csv", data: a === "csvhelp" ? helpCSV() : donorCSV()}); } catch (x) { if (!x || x.code !== "declined") toast("Could not save the file."); } }
    else if (a === "csv") { try { await downloads.save({filename: "ma-welfare-" + tab + "-" + today() + ".csv", data: toCSV(tab)}); } catch (err) {} }
    else if (a === "publish") { const m = $("#pubmsg"); try { await db.doc("public/summary").set(buildSummary()); await db.doc("public/status").set(statusDoc(S.cases)); m.className = "msg"; m.textContent = "Published."; } catch (err) { m.className = "msg err"; m.textContent = "Could not publish."; } }
    else if (a === "bgup") {
      const m = $("#bgmsg"), fi = $("#bg_file"), file = fi && fi.files[0]; if (!file) { m.className = "msg err"; m.textContent = "Choose a photo first."; return; }
      try {
        m.className = "msg"; m.textContent = "Uploading…";
        const bmp = await createImageBitmap(file), sc = Math.min(1, 1920 / bmp.width), cv = document.createElement("canvas"); cv.width = Math.round(bmp.width * sc); cv.height = Math.round(bmp.height * sc); cv.getContext("2d").drawImage(bmp, 0, 0, cv.width, cv.height);
        const blob = await new Promise(r => cv.toBlob(r, "image/jpeg", .82)), up = await assetsCap.upload(blob);
        await db.doc("public/content").set(Object.assign({}, pub.content, {bgUrl: up.url})); m.textContent = "Background changed.";
      } catch (err) { m.className = "msg err"; m.textContent = "Could not use that photo. Try a JPG or PNG."; }
    }
    else if (a === "bgdel") { try { await db.doc("public/content").set(Object.assign({}, pub.content, {bgUrl: ""})); } catch (err) { toast("Could not change it."); } }
    else if (a === "savetext") { const m = $("#textmsg"); try { await db.doc("public/content").set(Object.assign({}, pub.content, {founderNote: $("#c_founder").value.trim(), contactText: $("#c_contact").value.trim(), giveText: $("#c_give").value.trim(), waNumber: $("#c_wa").value.trim(), regInfo: $("#c_reg").value.trim(), formUrl: $("#c_form").value.trim(), currency: ($("#c_currency").value.trim().toUpperCase() || "PKR")})); m.className = "msg"; m.textContent = "Saved."; } catch (err) { m.className = "msg err"; m.textContent = "Could not save."; } }
    else if (a === "addstory") {
      const t = $("#s_title").value.trim(), x = $("#s_text").value.trim(), m = $("#storymsg");
      if (!t || !x) { m.className = "msg err"; m.textContent = "Add a title and some text."; return; }
      const st = (pub.content.stories || []).concat([{id: "s" + Date.now().toString(36), title: t, text: x, date: $("#s_date").value || today()}]);
      try { await db.doc("public/content").set(Object.assign({}, pub.content, {stories: st})); } catch (err) { m.className = "msg err"; m.textContent = "Could not save."; }
    }
    else if (a === "delstory") { const st = (pub.content.stories || []).filter(s => s.id !== id); try { await db.doc("public/content").set(Object.assign({}, pub.content, {stories: st})); } catch (err) {} }
  };
}

/* ---------- routing ---------- */
/* ---------- logins ---------- */
const b64e = u8 => btoa(String.fromCharCode.apply(null, Array.from(u8)));
const b64d = s => Uint8Array.from(atob(s), c => c.charCodeAt(0));
async function pwHash(pw, saltB64) {
  const key = await crypto.subtle.importKey("raw", new TextEncoder().encode(pw), "PBKDF2", false, ["deriveBits"]);
  return b64e(new Uint8Array(await crypto.subtle.deriveBits({name: "PBKDF2", hash: "SHA-256", salt: b64d(saltB64), iterations: 150000}, key, 256)));
}
async function makeUser(u, name, rl, pw) { const salt = b64e(crypto.getRandomValues(new Uint8Array(16))); return {u: u.trim().toLowerCase(), name: (name || "").trim() || u.trim(), role: rl, salt, hash: await pwHash(pw, salt)}; }
const saveUsers = list => db.doc("auth/users").set({list});
function startData() {
  if (startData.on || !db) return; startData.on = 1; startData.subs = [];
  Object.keys(S).forEach(k => startData.subs.push((k === "audit" ? db.collection(k).orderBy("at", "desc").limit(200) : db.collection(k)).onSnapshot(snap => { S[k] = snap.docs.map(d => Object.assign({id: d.id}, d.data())); loaded[k] = 1; if (!$("#team").hidden && !(["public", "users"].includes(tab) && document.activeElement && document.activeElement.closest("#tbody"))) renderBody(); }, () => { loaded[k] = 1; })));
}
function stopData() { (startData.subs || []).forEach(f => { try { f(); } catch (e) {} }); startData.subs = []; startData.on = 0; Object.keys(S).forEach(k => { S[k] = []; loaded[k] = 0; }); }
function startSession(u) {
  startData();
  AUTH.session = {u: u.u, name: u.name, role: u.role}; AUTH.last = Date.now(); AUTH.fails = 0;
  logAudit("Signed in", "auth", u.name); if (!tabVisible(tab)) tab = "overview"; renderTeam();
}
function signOut(msg) { if (AUTH.session) logAudit("Signed out", "auth", AUTH.session.name); AUTH.session = null; stopData(); closeForm(); renderLock(msg); }
function idleCheck() { if (AUTH.session && Date.now() - AUTH.last > 15 * 60000) signOut("You were signed out after 15 minutes without activity."); }
function renderLock(msg) {
  const setup = AUTH.loaded && !(AUTH.users && AUTH.users.length);
  $("#team").innerHTML = `<div class="lockbox"><div class="card"><div class="eyebrow">Team area</div><h2 style="margin:6px 0 4px;font-size:1.5rem">${setup ? "Create the admin login" : "Sign in"}</h2>
    <p class="muted">${setup ? "Choose a username and a strong password. You will use them every time you open the team area." : "Enter your username and password."}</p>
    ${msg ? `<p class="msg" style="margin-top:10px">${esc(msg)}</p>` : ""}
    ${!AUTH.loaded ? '<p class="muted" style="margin-top:12px">Loading…</p>' : `<form id="lockform" style="display:grid;gap:12px;margin-top:14px">
      ${setup ? '<div class="field"><label class="lab" for="l_name">Your name</label><input id="l_name" type="text" autocomplete="name"></div>' : ""}
      <div class="field"><label class="lab" for="l_user">Username</label><input id="l_user" type="text" autocomplete="username" autocapitalize="none" required></div>
      <div class="field"><label class="lab" for="l_pass">Password</label><input id="l_pass" type="password" autocomplete="${setup ? "new-password" : "current-password"}" required></div>
      ${setup ? '<div class="field"><label class="lab" for="l_pass2">Repeat password</label><input id="l_pass2" type="password" autocomplete="new-password"></div>' : ""}
      <button class="btn primary big" type="submit">${setup ? "Create login" : "Sign in"}</button><span id="l_msg"></span></form>`}
    ${!setup && AUTH.loaded && AUTH.owner ? '<p style="margin-top:14px"><button class="btn small" id="l_reset">Forgot password? Reset all logins (owner only)</button></p>' : ""}</div>
    <p class="muted" style="margin-top:12px;font-size:.85rem;text-align:center"><a href="#home">Back to the public site</a></p></div>`;
  const f = $("#lockform"); if (f) { f.onsubmit = e => { e.preventDefault(); doLogin(setup); }; const first = $("#l_user"); if (first && !msg) first.focus(); }
  const r = $("#l_reset"); if (r) r.onclick = async () => {
    if (!r.dataset.sure) { r.dataset.sure = 1; r.textContent = "Press again to delete all logins and start over"; r.classList.add("confirm"); return; }
    try { await db.doc("auth/users").delete(); } catch (e) {}
  };
}
async function doLogin(setup) {
  const m = $("#l_msg"), say = (x, err) => { m.className = "msg" + (err ? " err" : ""); m.textContent = x; };
  if (!window.crypto || !crypto.subtle) return say("This browser cannot create secure logins.", 1);
  const un = $("#l_user").value.trim().toLowerCase(), pw = $("#l_pass").value;
  if (setup) {
    if (!un) return say("Choose a username.", 1);
    if (pw.length < 8) return say("The password needs at least 8 characters.", 1);
    if (pw !== $("#l_pass2").value) return say("The two passwords do not match.", 1);
    try { const u = await makeUser(un, $("#l_name").value, "admin", pw); await saveUsers([u]); AUTH.users = [u]; startSession(u); } catch (e) { say("Could not save the login. Try again.", 1); }
    return;
  }
  const wait = AUTH.lock - Date.now(); if (wait > 0) return say("Too many attempts. Try again in " + Math.ceil(wait / 1000) + " seconds.", 1);
  const u = (AUTH.users || []).find(x => x.u === un), h = await pwHash(pw, u ? u.salt : "AAAAAAAAAAAAAAAAAAAAAA==");
  if (!u || h !== u.hash) { AUTH.fails++; if (AUTH.fails >= 5) AUTH.lock = Date.now() + 30000 * (AUTH.fails - 4); logAudit("Failed sign-in", "auth", un); return say("Wrong username or password.", 1); }
  startSession(u);
}
function usersView() {
  const list = AUTH.users || [];
  return `<div class="teamhead" style="padding-top:18px"><h2 style="font-size:1.4rem">Logins</h2></div>
    <p class="muted" style="margin-top:4px">Each person signs in with their own username and password. People you add here must also be invited as editors from the Share menu to open the team area.</p>
    <div class="scroll" style="margin-top:12px"><table><thead><tr><th>Name</th><th>Username</th><th>Can do</th><th></th></tr></thead><tbody>${list.map(x => `<tr><td><b>${esc(x.name)}</b></td><td>${esc(x.u)}</td><td>${ROLES[x.role] || esc(x.role)}</td><td class="act"><button class="btn small" data-act="ureset" data-id="${esc(x.u)}">Change password</button> <button class="btn small danger" data-act="udel" data-id="${esc(x.u)}">Remove</button></td></tr>`).join("")}</tbody></table></div>
    ${resetFor ? `<div class="form"><h3 style="margin-bottom:10px">New password for ${esc(resetFor)}</h3><div class="grid"><div class="field"><label class="lab" for="u_newpass">New password (8 or more characters)</label><input id="u_newpass" type="password" autocomplete="new-password"></div></div><div class="row"><button class="btn primary" data-act="usave">Save password</button><button class="btn" data-act="ucancel">Cancel</button><span id="umsg2"></span></div></div>` : ""}
    <div class="form" style="border-color:var(--line)"><h3 style="margin-bottom:10px">Add a login</h3><div class="grid">
      <div class="field"><label class="lab" for="u_name">Name</label><input id="u_name" type="text"></div>
      <div class="field"><label class="lab" for="u_user">Username</label><input id="u_user" type="text" autocapitalize="none" autocomplete="off"></div>
      <div class="field"><label class="lab" for="u_pass">Password (8 or more characters)</label><input id="u_pass" type="password" autocomplete="new-password"></div>
      <div class="field"><label class="lab" for="u_role">Can do</label><select id="u_role"><option value="entry">Data entry: add and change records</option><option value="viewer">Viewer: look only</option><option value="admin">Admin: everything</option></select></div></div>
      <div class="row"><button class="btn primary" data-act="uadd">Add login</button><span id="umsg"></span></div></div>`;
}

/* ---------- routing ---------- */
const PAGES = ["home", "work", "help", "give", "confirm", "accountability", "updates", "contact"], OLDH = {terms: "give", about: "home", programs: "work", campaigns: "home", top: "home"};
function showPage(pg) {
  document.querySelectorAll("#pub [data-page]").forEach(el => { el.hidden = el.dataset.page !== pg; });
  document.querySelectorAll("#nav a[data-p]").forEach(a => a.classList.toggle("on", a.dataset.p === pg));
}
function route() {
  const h = location.hash.slice(1), inTeam = isTeam && (h === "team" || h.indexOf("team-") === 0);
  $("#pub").hidden = inTeam; $("#team").hidden = !inTeam; $("#nav").hidden = inTeam;
  if (inTeam) {
    const nt = h === "team" ? "overview" : h.slice(5);
    if (TABS.some(x => x[0] === nt)) {
      if (AUTH.session && !tabVisible(nt)) { location.hash = "team"; return; }
      if (nt !== tab || !$("#tbody")) { tab = nt; filterText = ""; filterVal = ""; sortVal = "new"; renderTeam(); if (pendingForm) { const pk = pendingForm; pendingForm = null; if (CFG[pk] && AUTH.session) openForm(pk); } }
    }
  } else { let pg = OLDH[h] || h; if (!PAGES.includes(pg)) pg = "home"; curPage = pg; showPage(pg); }
  window.scrollTo(0, 0);
  if (h === "terms" && $("#terms")) $("#terms").scrollIntoView({block: "start", behavior: "instant"});
}
window.addEventListener("hashchange", route);

/* ---------- start ---------- */
(async () => {
  const use = async n => { try { return window.claude && claude.use ? await claude.use(n) : null; } catch (e) { return null; } };
  renderPublic();
  user = await use("user"); db = await use("db"); downloads = await use("downloads"); assetsCap = await use("assets");
  if (!db) { route(); return; }
  try { myId = user ? await user.id() : null; } catch (e) {}
  db.doc("public/summary").onSnapshot(s => { pub.summary = s.exists ? s.data() : null; renderPublic(); if (isTeam && tab === "public") renderBody(); }, () => {});
  db.doc("public/status").onSnapshot(s => { pub.status = s.exists ? s.data() : null; lastPubKey = ""; const a = document.activeElement; if (!(a && a.closest && a.closest("#pub form"))) renderPublic(); }, () => {});
  db.doc("public/content").onSnapshot(s => { pub.content = s.exists ? s.data() : {}; CUR = pub.content.currency || "PKR"; applyBg(); renderPublic(); if (isTeam && !$("#team").hidden && !(document.activeElement && document.activeElement.closest("#tbody"))) renderBody(); }, () => {});
  try { isTeam = user ? await user.canEdit() : false; } catch (e) { isTeam = false; }
  if (isTeam) {
    $("#teamBtn").hidden = false;
    try { AUTH.owner = user ? await user.isOwner() : false; } catch (e) {}
    db.doc("auth/users").onSnapshot(s => { AUTH.users = s.exists ? (s.data().list || []) : []; AUTH.loaded = true; const typing = document.activeElement && document.activeElement.closest && document.activeElement.closest("#lockform"); if (!AUTH.session && !$("#team").hidden && !typing) renderLock(); else if (AUTH.session && tab === "users" && !(document.activeElement && document.activeElement.closest("#tbody"))) renderBody(); }, () => { AUTH.loaded = true; });
    setInterval(idleCheck, 30000); ["click", "keydown"].forEach(ev => document.addEventListener(ev, () => { AUTH.last = Date.now(); }, true));
    setTimeout(() => { window.__tlate = true; if (!$("#team").hidden) renderBody(); }, 10000);
  }
  route();
})();
</script>
