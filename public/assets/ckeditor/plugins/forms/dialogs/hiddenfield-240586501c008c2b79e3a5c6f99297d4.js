/*
 Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.md or http://ckeditor.com/license
*/
CKEDITOR.dialog.add("hiddenfield",function(e){return{title:e.lang.forms.hidden.title,hiddenField:null,minWidth:350,minHeight:110,onShow:function(){delete this.hiddenField;var e=this.getParentEditor(),t=e.getSelection(),n=t.getSelectedElement();n&&n.data("cke-real-element-type")&&"hiddenfield"==n.data("cke-real-element-type")&&(this.hiddenField=n,n=e.restoreRealElement(this.hiddenField),this.setupContent(n),t.selectElement(this.hiddenField))},onOk:function(){var e=this.getValueOf("info","_cke_saved_name");this.getValueOf("info","value");var t=this.getParentEditor(),e=!CKEDITOR.env.ie||8<=CKEDITOR.document.$.documentMode?t.document.createElement("input"):t.document.createElement('<input name="'+CKEDITOR.tools.htmlEncode(e)+'">');return e.setAttribute("type","hidden"),this.commitContent(e),e=t.createFakeElement(e,"cke_hidden","hiddenfield"),this.hiddenField?(e.replace(this.hiddenField),t.getSelection().selectElement(e)):t.insertElement(e),!0},contents:[{id:"info",label:e.lang.forms.hidden.title,title:e.lang.forms.hidden.title,elements:[{id:"_cke_saved_name",type:"text",label:e.lang.forms.hidden.name,"default":"",accessKey:"N",setup:function(e){this.setValue(e.data("cke-saved-name")||e.getAttribute("name")||"")},commit:function(e){this.getValue()?e.setAttribute("name",this.getValue()):e.removeAttribute("name")}},{id:"value",type:"text",label:e.lang.forms.hidden.value,"default":"",accessKey:"V",setup:function(e){this.setValue(e.getAttribute("value")||"")},commit:function(e){this.getValue()?e.setAttribute("value",this.getValue()):e.removeAttribute("value")}}]}]}});