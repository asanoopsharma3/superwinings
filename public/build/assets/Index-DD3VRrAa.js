import{T as h,c,w as l,o as t,a as i,u as n,Z as _,e as r,i as k,t as y,f as a,j as $,v as w,b as v,d as m,h as x,F as j}from"./app-BN85QlWx.js";import{J as C,_ as u,e as D,f as N,b,g as O,c as B,d as M}from"./CardBox-BNW7fDnm.js";import{b as S,_ as V,a as A}from"./SectionTitleLineWithButton-BogDHSMo.js";import{_ as T}from"./BaseButtons-BepVb1Wv.js";import{_ as E}from"./NotificationBar-CpkNM5ax.js";import{_ as F,a as q}from"./Sort-DI_NWcEI.js";import"./FormControl-Cit0PjA5.js";import"./BaseLevel-C6oaluk4.js";import"./_plugin-vue_export-helper-DlAUqK2U.js";const I={class:"py-2 flex"},J={class:"flex pl-4"},L={key:0},P={"data-label":"Name"},U={"data-label":"Description"},Z={key:0,class:"before:hidden lg:w-1 whitespace-nowrap"},z={class:"py-4"},ne={__name:"Index",props:{menus:{type:Object,default:()=>({})},filters:{type:Object,default:()=>({})},can:{type:Object,default:()=>({})}},setup(e){const f=h({search:e.filters.search}),p=h({});function g(o){confirm("Are you sure you want to delete?")&&p.delete(route("admin.menu.destroy",o))}return(o,d)=>(t(),c(S,null,{default:l(()=>[i(n(_),{title:"Menus"}),i(A,null,{default:l(()=>[i(V,{icon:n(C),title:"Menus",main:""},{default:l(()=>[e.can.delete?(t(),c(u,{key:0,"route-name":o.route("admin.menu.create"),icon:n(D),label:"Add",color:"info","rounded-full":"",small:""},null,8,["route-name","icon"])):r("",!0)]),_:1},8,["icon"]),o.$page.props.flash.message?(t(),c(E,{key:Date.now(),color:"success",icon:n(N)},{default:l(()=>[k(y(o.$page.props.flash.message),1)]),_:1},8,["icon"])):r("",!0),i(b,{class:"mb-6","has-table":""},{default:l(()=>[a("form",{onSubmit:d[1]||(d[1]=v(s=>n(f).get(o.route("admin.menu.index")),["prevent"]))},[a("div",I,[a("div",J,[$(a("input",{type:"search","onUpdate:modelValue":d[0]||(d[0]=s=>n(f).search=s),class:"rounded-md shadow-sm border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50",placeholder:"Search"},null,512),[[w,n(f).search]]),i(u,{label:"Search",type:"submit",color:"info",class:"ml-4 inline-flex items-center px-4 py-2"})])])],32)]),_:1}),i(b,{class:"mb-6","has-table":""},{default:l(()=>[a("table",null,[a("thead",null,[a("tr",null,[a("th",null,[i(F,{label:"Name",attribute:"name"})]),d[2]||(d[2]=a("th",null," Description ",-1)),e.can.edit||e.can.delete||e.can.manage?(t(),m("th",L,"Actions")):r("",!0)])]),a("tbody",null,[(t(!0),m(j,null,x(e.menus.data,s=>(t(),m("tr",{key:s.id},[a("td",P,y(s.name),1),a("td",U,y(s.description),1),e.can.edit||e.can.delete||e.can.manage?(t(),m("td",Z,[i(T,{type:"justify-start lg:justify-end","no-wrap":""},{default:l(()=>[e.can.manage?(t(),c(u,{key:0,"route-name":o.route("admin.menu.item.index",s.id),color:"warning",icon:n(O),small:""},null,8,["route-name","icon"])):r("",!0),e.can.edit?(t(),c(u,{key:1,"route-name":o.route("admin.menu.edit",s.id),color:"info",icon:n(B),small:""},null,8,["route-name","icon"])):r("",!0),e.can.delete?(t(),c(u,{key:2,color:"danger",icon:n(M),small:"",onClick:H=>g(s.id)},null,8,["icon","onClick"])):r("",!0)]),_:2},1024)])):r("",!0)]))),128))])]),a("div",z,[i(q,{data:e.menus},null,8,["data"])])]),_:1})]),_:1})]),_:1}))}};export{ne as default};