import{T as g,c as i,w as o,o as n,a as e,u as s,Z as V,n as u,b as y,i as d,t as $,e as f,B as k}from"./app-BN85QlWx.js";import{b as P,N as R,R as L,K as B,_ as p}from"./CardBox-BNW7fDnm.js";import{L as N,_ as q,b as C,a as S}from"./FormValidationErrors-Cyq3UKL-.js";import{_ as U}from"./FormCheckRadioGroup-CHw0LfB9.js";import{_}from"./FormField-DEKOr0cQ.js";import{_ as c}from"./FormControl-Cit0PjA5.js";import{_ as x}from"./BaseButtons-BepVb1Wv.js";import{_ as A}from"./BaseLevel-C6oaluk4.js";import"./_plugin-vue_export-helper-DlAUqK2U.js";import"./FormCheckRadio-DPLvRxk5.js";const Z={__name:"Login",props:{canResetPassword:Boolean,status:{type:String,default:null}},setup(m){const a=g({email:"",password:"",remember:[]}),b=()=>{a.transform(t=>({...t,remember:a.remember&&a.remember.length?"on":""})).post(route("login"),{onFinish:()=>a.reset("password")})};return(t,r)=>(n(),i(N,null,{default:o(()=>[e(s(V),{title:"Login"}),e(S,{bg:"purplePink"},{default:o(({cardClass:w})=>[e(P,{class:u(w),form:"",onSubmit:y(b,["prevent"])},{default:o(()=>[e(q),m.status?(n(),i(C,{key:0,color:"info"},{default:o(()=>[d($(m.status),1)]),_:1})):f("",!0),e(_,{label:"Email","label-for":"email",help:"Please enter your email"},{default:o(()=>[e(c,{modelValue:s(a).email,"onUpdate:modelValue":r[0]||(r[0]=l=>s(a).email=l),icon:s(R),id:"email",autocomplete:"email",type:"email",required:""},null,8,["modelValue","icon"])]),_:1}),e(_,{label:"Password","label-for":"password",help:"Please enter your password"},{default:o(()=>[e(c,{modelValue:s(a).password,"onUpdate:modelValue":r[1]||(r[1]=l=>s(a).password=l),icon:s(L),type:"password",id:"password",autocomplete:"current-password",required:""},null,8,["modelValue","icon"])]),_:1}),e(U,{modelValue:s(a).remember,"onUpdate:modelValue":r[2]||(r[2]=l=>s(a).remember=l),name:"remember",options:{remember:"Remember"}},null,8,["modelValue"]),e(B),e(A,null,{default:o(()=>[e(x,null,{default:o(()=>[e(p,{type:"submit",color:"info",label:"Login",class:u({"opacity-25":s(a).processing}),disabled:s(a).processing},null,8,["class","disabled"]),m.canResetPassword?(n(),i(p,{key:0,"route-name":t.route("password.request"),color:"info",outline:"",label:"Remind"},null,8,["route-name"])):f("",!0)]),_:1}),e(s(k),{href:t.route("register")},{default:o(()=>r[3]||(r[3]=[d(" Register ")])),_:1},8,["href"])]),_:1})]),_:2},1032,["class"])]),_:1})]),_:1}))}};export{Z as default};