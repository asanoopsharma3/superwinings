import{T as u,c,w as o,o as m,a as s,u as e,Z as f,b as _,n as l,d as b,t as $,e as y}from"./app-BN85QlWx.js";import{M as x,_ as d,a as k,b as w}from"./CardBox-BNW7fDnm.js";import{b as B,_ as V,a as N}from"./SectionTitleLineWithButton-BogDHSMo.js";import{_ as g}from"./FormField-DEKOr0cQ.js";import{_ as h}from"./FormControl-Cit0PjA5.js";import{_ as v}from"./BaseButtons-BepVb1Wv.js";import"./BaseLevel-C6oaluk4.js";import"./_plugin-vue_export-helper-DlAUqK2U.js";const C={key:0,class:"text-red-400 text-sm"},D={__name:"Edit",props:{permission:{type:Object,default:()=>({})}},setup(p){const r=p,a=u({_method:"put",name:r.permission.name});return(i,t)=>(m(),c(B,null,{default:o(()=>[s(e(f),{title:"Update permission"}),s(N,null,{default:o(()=>[s(V,{icon:e(x),title:"Update permission",main:""},{default:o(()=>[s(d,{"route-name":i.route("admin.permission.index"),icon:e(k),label:"Back",color:"white","rounded-full":"",small:""},null,8,["route-name","icon"])]),_:1},8,["icon"]),s(w,{form:"",onSubmit:t[1]||(t[1]=_(n=>e(a).post(i.route("admin.permission.update",r.permission.id)),["prevent"]))},{footer:o(()=>[s(v,null,{default:o(()=>[s(d,{type:"submit",color:"info",label:"Submit",class:l({"opacity-25":e(a).processing}),disabled:e(a).processing},null,8,["class","disabled"])]),_:1})]),default:o(()=>[s(g,{label:"Name",class:l({"text-red-400":e(a).errors.name})},{default:o(()=>[s(h,{modelValue:e(a).name,"onUpdate:modelValue":t[0]||(t[0]=n=>e(a).name=n),type:"text",placeholder:"Enter Name",error:e(a).errors.name},{default:o(()=>[e(a).errors.name?(m(),b("div",C,$(e(a).errors.name),1)):y("",!0)]),_:1},8,["modelValue","error"])]),_:1},8,["class"])]),_:1})]),_:1})]),_:1}))}};export{D as default};