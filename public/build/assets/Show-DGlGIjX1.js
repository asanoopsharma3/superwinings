import{c as r,w as l,o as d,a as e,u as s,Z as m,f as t,t as o}from"./app-BN85QlWx.js";import{M as c,_ as u,a as p,b as _}from"./CardBox-BNW7fDnm.js";import{b as f,_ as b,a as w}from"./SectionTitleLineWithButton-BogDHSMo.js";import"./FormControl-Cit0PjA5.js";import"./BaseLevel-C6oaluk4.js";import"./_plugin-vue_export-helper-DlAUqK2U.js";const k={"data-label":"Name"},x={"data-label":"Created"},V={__name:"Show",props:{permission:{type:Object,default:()=>({})}},setup(i){return(n,a)=>(d(),r(f,null,{default:l(()=>[e(s(m),{title:"View permission"}),e(w,null,{default:l(()=>[e(b,{icon:s(c),title:"View permission",main:""},{default:l(()=>[e(u,{"route-name":n.route("admin.permission.index"),icon:s(p),label:"Back",color:"white","rounded-full":"",small:""},null,8,["route-name","icon"])]),_:1},8,["icon"]),e(_,{class:"mb-6"},{default:l(()=>[t("table",null,[t("tbody",null,[t("tr",null,[a[0]||(a[0]=t("td",{class:"p-4 pl-8 text-slate-500 dark:text-slate-400 hidden lg:block"}," Name ",-1)),t("td",k,o(i.permission.name),1)]),t("tr",null,[a[1]||(a[1]=t("td",{class:"p-4 pl-8 text-slate-500 dark:text-slate-400 hidden lg:block"}," Created ",-1)),t("td",x,o(new Date(i.permission.created_at).toLocaleString()),1)])])])]),_:1})]),_:1})]),_:1}))}};export{V as default};