import{T as f,c as _,w as a,o as m,a as o,u as e,Z as c,b,n,d as $,t as y,e as V}from"./app-BN85QlWx.js";import{M as w,_ as d,a as x,b as k,K as B}from"./CardBox-BNW7fDnm.js";import{b as N,_ as O,a as U}from"./SectionTitleLineWithButton-BogDHSMo.js";import{_ as p}from"./FormField-DEKOr0cQ.js";import{_ as g}from"./FormControl-Cit0PjA5.js";import{_ as j}from"./FormCheckRadioGroup-CHw0LfB9.js";import{_ as v}from"./BaseButtons-BepVb1Wv.js";import"./BaseLevel-C6oaluk4.js";import"./_plugin-vue_export-helper-DlAUqK2U.js";import"./FormCheckRadio-DPLvRxk5.js";const C={key:0,class:"text-red-400 text-sm"},L={__name:"Edit",props:{role:{type:Object,default:()=>({})},permissions:{type:Object,default:()=>({})},roleHasPermissions:{type:Object,default:()=>({})}},setup(u){const r=u,s=f({_method:"put",name:r.role.name,permissions:r.roleHasPermissions});return(i,t)=>(m(),_(N,null,{default:a(()=>[o(e(c),{title:"Update role"}),o(U,null,{default:a(()=>[o(O,{icon:e(w),title:"Update role",main:""},{default:a(()=>[o(d,{"route-name":i.route("admin.role.index"),icon:e(x),label:"Back",color:"white","rounded-full":"",small:""},null,8,["route-name","icon"])]),_:1},8,["icon"]),o(k,{form:"",onSubmit:t[2]||(t[2]=b(l=>e(s).post(i.route("admin.role.update",r.role.id)),["prevent"]))},{footer:a(()=>[o(v,null,{default:a(()=>[o(d,{type:"submit",color:"info",label:"Submit",class:n({"opacity-25":e(s).processing}),disabled:e(s).processing},null,8,["class","disabled"])]),_:1})]),default:a(()=>[o(p,{label:"Name",class:n({"text-red-400":e(s).errors.name})},{default:a(()=>[o(g,{modelValue:e(s).name,"onUpdate:modelValue":t[0]||(t[0]=l=>e(s).name=l),type:"text",placeholder:"Enter Name",error:e(s).errors.name},{default:a(()=>[e(s).errors.name?(m(),$("div",C,y(e(s).errors.name),1)):V("",!0)]),_:1},8,["modelValue","error"])]),_:1},8,["class"]),o(B),o(p,{label:"Permissions","wrap-body":""},{default:a(()=>[o(j,{modelValue:e(s).permissions,"onUpdate:modelValue":t[1]||(t[1]=l=>e(s).permissions=l),name:"permissions","is-column":"",options:r.permissions},null,8,["modelValue","options"])]),_:1})]),_:1})]),_:1})]),_:1}))}};export{L as default};