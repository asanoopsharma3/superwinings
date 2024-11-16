import{T as b,c as V,w as o,o as d,a as s,u as e,i as q,t as i,e as n,f as N,b as x,n as u,d as p}from"./app-BN85QlWx.js";import{N as y,_ as f,a as S,f as B,b as $,O as C,P as A,Q as R,R as h,K as P,S as k}from"./CardBox-BNW7fDnm.js";import{b as U,_ as O,a as E}from"./SectionTitleLineWithButton-BogDHSMo.js";import{_ as c}from"./FormField-DEKOr0cQ.js";import{_}from"./FormControl-Cit0PjA5.js";import{_ as g}from"./BaseButtons-BepVb1Wv.js";import{_ as F}from"./NotificationBar-CpkNM5ax.js";import"./BaseLevel-C6oaluk4.js";import"./_plugin-vue_export-helper-DlAUqK2U.js";const T={class:"grid grid-cols-1 lg:grid-cols-2 gap-6"},Y={key:0,class:"text-red-400 text-sm"},D={key:0,class:"text-red-400 text-sm"},L={key:0,class:"text-red-400 text-sm"},M={key:0,class:"text-red-400 text-sm"},j={key:0,class:"text-red-400 text-sm"},Z={__name:"AccountInfo",props:{user:{type:Object,default:()=>({})}},setup(v){const w=v,l=b({name:w.user.name,email:w.user.email}),r=b({old_password:null,new_password:null,confirm_password:null});return(m,a)=>(d(),V(U,null,{default:o(()=>[s(E,null,{default:o(()=>[s(O,{icon:e(y),title:"Profile",main:""},{default:o(()=>[s(f,{"route-name":m.route("admin.dashboard"),icon:e(S),label:"Back",color:"white","rounded-full":"",small:""},null,8,["route-name","icon"])]),_:1},8,["icon"]),m.$page.props.flash.message?(d(),V(F,{key:Date.now(),color:"success",icon:e(B)},{default:o(()=>[q(i(m.$page.props.flash.message),1)]),_:1},8,["icon"])):n("",!0),N("div",T,[s($,{title:"Edit Profile",icon:e(C),form:"",onSubmit:a[2]||(a[2]=x(t=>e(l).post(m.route("admin.account.info.store")),["prevent"]))},{footer:o(()=>[s(g,null,{default:o(()=>[s(f,{color:"info",type:"submit",label:"Submit"})]),_:1})]),default:o(()=>[s(c,{label:"Name",help:"Required. Your name",class:u({"text-red-400":e(l).errors.name})},{default:o(()=>[s(_,{modelValue:e(l).name,"onUpdate:modelValue":a[0]||(a[0]=t=>e(l).name=t),icon:e(y),name:"name",required:"",error:e(l).errors.name},{default:o(()=>[e(l).errors.name?(d(),p("div",Y,i(e(l).errors.name),1)):n("",!0)]),_:1},8,["modelValue","icon","error"])]),_:1},8,["class"]),s(c,{label:"Email",help:"Required. Your e-mail",class:u({"text-red-400":e(l).errors.email})},{default:o(()=>[s(_,{modelValue:e(l).email,"onUpdate:modelValue":a[1]||(a[1]=t=>e(l).email=t),icon:e(A),type:"email",name:"email",required:"",error:e(l).errors.email},{default:o(()=>[e(l).errors.email?(d(),p("div",D,i(e(l).errors.email),1)):n("",!0)]),_:1},8,["modelValue","icon","error"])]),_:1},8,["class"])]),_:1},8,["icon"]),s($,{title:"Change Password",icon:e(R),form:"",onSubmit:a[6]||(a[6]=x(t=>e(r).post(m.route("admin.account.password.store"),{preserveScroll:!0,onSuccess:()=>e(r).reset()}),["prevent"]))},{footer:o(()=>[s(g,null,{default:o(()=>[s(f,{type:"submit",color:"info",label:"Submit"})]),_:1})]),default:o(()=>[s(c,{label:"Current password",help:"Required. Your current password",class:u({"text-red-400":e(r).errors.old_password})},{default:o(()=>[s(_,{modelValue:e(r).old_password,"onUpdate:modelValue":a[3]||(a[3]=t=>e(r).old_password=t),icon:e(h),name:"old_password",type:"password",required:"",error:e(r).errors.old_password},{default:o(()=>[e(r).errors.old_password?(d(),p("div",L,i(e(r).errors.old_password),1)):n("",!0)]),_:1},8,["modelValue","icon","error"])]),_:1},8,["class"]),s(P),s(c,{label:"New password",help:"Required. New password",class:u({"text-red-400":e(r).errors.new_password})},{default:o(()=>[s(_,{modelValue:e(r).new_password,"onUpdate:modelValue":a[4]||(a[4]=t=>e(r).new_password=t),icon:e(k),name:"new_password",type:"password",required:"",error:e(r).errors.new_password},{default:o(()=>[e(r).errors.new_password?(d(),p("div",M,i(e(r).errors.new_password),1)):n("",!0)]),_:1},8,["modelValue","icon","error"])]),_:1},8,["class"]),s(c,{label:"Confirm password",help:"Required. New password one more time",class:u({"text-red-400":e(r).errors.confirm_password})},{default:o(()=>[s(_,{modelValue:e(r).confirm_password,"onUpdate:modelValue":a[5]||(a[5]=t=>e(r).confirm_password=t),icon:e(k),name:"confirm_password",type:"password",required:"",error:e(r).errors.confirm_password},{default:o(()=>[e(r).errors.confirm_password?(d(),p("div",j,i(e(r).errors.confirm_password),1)):n("",!0)]),_:1},8,["modelValue","icon","error"])]),_:1},8,["class"])]),_:1},8,["icon"])])]),_:1})]),_:1}))}};export{Z as default};
