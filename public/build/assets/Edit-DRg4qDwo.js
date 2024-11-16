import{T as b,c as V,w as o,o as d,a as s,u as e,Z as x,b as y,n as m,d as n,t as u,e as p}from"./app-BN85QlWx.js";import{M as $,_ as c,a as k,b as E,K as U}from"./CardBox-BNW7fDnm.js";import{b as v,_ as B,a as C}from"./SectionTitleLineWithButton-BogDHSMo.js";import{_ as i}from"./FormField-DEKOr0cQ.js";import{_ as f}from"./FormControl-Cit0PjA5.js";import{_ as N}from"./FormCheckRadioGroup-CHw0LfB9.js";import{_ as O}from"./BaseButtons-BepVb1Wv.js";import"./BaseLevel-C6oaluk4.js";import"./_plugin-vue_export-helper-DlAUqK2U.js";import"./FormCheckRadio-DPLvRxk5.js";const P={key:0,class:"text-red-400 text-sm"},g={key:0,class:"text-red-400 text-sm"},j={key:0,class:"text-red-400 text-sm"},R={key:0,class:"text-red-400 text-sm"},Z={__name:"Edit",props:{user:{type:Object,default:()=>({})},roles:{type:Object,default:()=>({})},userHasRoles:{type:Object,default:()=>({})}},setup(w){const l=w,r=b({_method:"put",name:l.user.name,email:l.user.email,password:"",password_confirmation:"",roles:l.userHasRoles});return(_,a)=>(d(),V(v,null,{default:o(()=>[s(e(x),{title:"Update user"}),s(C,null,{default:o(()=>[s(B,{icon:e($),title:"Update user",main:""},{default:o(()=>[s(c,{"route-name":_.route("admin.user.index"),icon:e(k),label:"Back",color:"white","rounded-full":"",small:""},null,8,["route-name","icon"])]),_:1},8,["icon"]),s(E,{form:"",onSubmit:a[5]||(a[5]=y(t=>e(r).post(_.route("admin.user.update",l.user.id)),["prevent"]))},{footer:o(()=>[s(O,null,{default:o(()=>[s(c,{type:"submit",color:"info",label:"Submit",class:m({"opacity-25":e(r).processing}),disabled:e(r).processing},null,8,["class","disabled"])]),_:1})]),default:o(()=>[s(i,{label:"Enter Name",class:m({"text-red-400":e(r).errors.name})},{default:o(()=>[s(f,{modelValue:e(r).name,"onUpdate:modelValue":a[0]||(a[0]=t=>e(r).name=t),type:"text",placeholder:"Name",error:e(r).errors.name},{default:o(()=>[e(r).errors.name?(d(),n("div",P,u(e(r).errors.name),1)):p("",!0)]),_:1},8,["modelValue","error"])]),_:1},8,["class"]),s(i,{label:"Enter Email",class:m({"text-red-400":e(r).errors.email})},{default:o(()=>[s(f,{modelValue:e(r).email,"onUpdate:modelValue":a[1]||(a[1]=t=>e(r).email=t),type:"text",placeholder:"Email",error:e(r).errors.email},{default:o(()=>[e(r).errors.email?(d(),n("div",g,u(e(r).errors.email),1)):p("",!0)]),_:1},8,["modelValue","error"])]),_:1},8,["class"]),s(i,{label:"Password",class:m({"text-red-400":e(r).errors.password})},{default:o(()=>[s(f,{modelValue:e(r).password,"onUpdate:modelValue":a[2]||(a[2]=t=>e(r).password=t),type:"password",placeholder:"Enter Password",error:e(r).errors.password},{default:o(()=>[e(r).errors.password?(d(),n("div",j,u(e(r).errors.password),1)):p("",!0)]),_:1},8,["modelValue","error"])]),_:1},8,["class"]),s(i,{label:"Password Confirmation",class:m({"text-red-400":e(r).errors.password})},{default:o(()=>[s(f,{modelValue:e(r).password_confirmation,"onUpdate:modelValue":a[3]||(a[3]=t=>e(r).password_confirmation=t),type:"password",placeholder:"Enter Password Confirmation",error:e(r).errors.password},{default:o(()=>[e(r).errors.password?(d(),n("div",R,u(e(r).errors.password),1)):p("",!0)]),_:1},8,["modelValue","error"])]),_:1},8,["class"]),s(U),s(i,{label:"Roles","wrap-body":""},{default:o(()=>[s(N,{modelValue:e(r).roles,"onUpdate:modelValue":a[4]||(a[4]=t=>e(r).roles=t),name:"roles","is-column":"",options:l.roles},null,8,["modelValue","options"])]),_:1})]),_:1})]),_:1})]),_:1}))}};export{Z as default};
