import{k as m,T as C,c as f,w as l,o as s,a as o,u as c,Z as $,n as v,b,f as k,d as n,i as u,F as i,P}from"./app-suJ7vQrJ.js";import{L as T,_ as B,a as R}from"./FormValidationErrors-D69bXVKV.js";import{b as U,K as h,_ as F}from"./CardBox-CLhwNzdY.js";import{_ as g}from"./FormControl-wcKBEphQ.js";import{_}from"./FormField-DQ9S0-VQ.js";import{_ as L}from"./BaseLevel-Bmmqlhm1.js";import"./_plugin-vue_export-helper-DlAUqK2U.js";const N={class:"mb-4 text-sm text-gray-600"},j={__name:"TwoFactorChallenge",setup(S){const r=m(!1),t=C({code:"",recovery_code:""}),p=m(null),y=m(null),x=async()=>{var d,e;r.value^=!0,await P(),r.value?((d=p.value)==null||d.focus(),t.code=""):((e=y.value)==null||e.focus(),t.recovery_code="")},V=()=>{t.post(route("two-factor.login"))};return(d,e)=>(s(),f(T,null,{default:l(()=>[o(c($),{title:"Two-factor Confirmation"}),o(R,{bg:"purplePink"},{default:l(({cardClass:w})=>[o(U,{class:v(w),form:"",onSubmit:b(V,["prevent"])},{default:l(()=>[o(B),o(_,null,{default:l(()=>[k("div",N,[r.value?(s(),n(i,{key:1},[u(" Please confirm access to your account by entering one of your emergency recovery codes. ")],64)):(s(),n(i,{key:0},[u(" Please confirm access to your account by entering the authentication code provided by your authenticator application. ")],64))])]),_:1}),r.value?(s(),f(_,{key:1,label:"Recovery Code","label-for":"recovery_code",help:"Please enter recovery code"},{default:l(()=>[o(g,{id:"recovery_code",onSetRef:e[2]||(e[2]=a=>p.value=a),modelValue:c(t).recovery_code,"onUpdate:modelValue":e[3]||(e[3]=a=>c(t).recovery_code=a),type:"text",class:"mt-1 block w-full",autocomplete:"one-time-code"},null,8,["modelValue"])]),_:1})):(s(),f(_,{key:0,label:"Code","label-for":"code",help:"Please enter one-time code"},{default:l(()=>[o(g,{id:"code",onSetRef:e[0]||(e[0]=a=>y.value=a),modelValue:c(t).code,"onUpdate:modelValue":e[1]||(e[1]=a=>c(t).code=a),type:"text",inputmode:"numeric",autofocus:"",autocomplete:"one-time-code"},null,8,["modelValue"])]),_:1})),o(h),o(L,null,{default:l(()=>[o(F,{type:"submit",color:"info",label:"Log in",class:v({"opacity-25":c(t).processing}),disabled:c(t).processing},null,8,["class","disabled"]),k("button",{onClick:b(x,["prevent"])},[r.value?(s(),n(i,{key:1},[u(" Use an authentication code ")],64)):(s(),n(i,{key:0},[u(" Use a recovery code ")],64))])]),_:1})]),_:2},1032,["class"])]),_:1})]),_:1}))}};export{j as default};