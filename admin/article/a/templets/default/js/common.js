/*****************************************************
 *    This JS Designed By Hilele, QQ: 2205 980098    *
 *     This JS Design Based On DedeCMS v5.7 GBK      *
 *          Finish Time:  2011.05.01  20:36          *
 *   ����֪ʶ��Ȩ��ʹ�á�ת������ر���������Ϣ      *
 *****************************************************/

function showLocale(objD){var str;var yy=objD.getYear();if(yy<1900)yy=yy+1900;var MM=objD.getMonth()+1;if(MM<10)MM='0'+MM;var dd=objD.getDate();if(dd<10)dd='0'+dd;var hh=objD.getHours();if(hh<10)hh='0'+hh;var mm=objD.getMinutes();if(mm<10)mm='0'+mm;var ss=objD.getSeconds();if(ss<10)ss='0'+ss;var ww=objD.getDay();if(ww==0)ww="������";if(ww==1)ww="����һ";if(ww==2)ww="���ڶ�";if(ww==3)ww="������";if(ww==4)ww="������";if(ww==5)ww="������";if(ww==6)ww="������";str="��ӭ����Сվ�������ǣ�"+yy+"��"+MM+"��"+dd+"��  "+ww+" "+hh+":"+mm+":"+ss;return(str)}function tick(){var today;today=new Date();document.getElementById("welcome").innerHTML=showLocale(today);window.setTimeout("tick()",1000)}tick();
//End Get LocalTime Code

function showAsks(){
now = new Date(),hour = now.getHours() 
      if((hour>=0)&&(hour<=5)){document.getElementById("showAsks").innerHTML = "��,׼����ͨ����?��ע������!";} 
else if ((hour>=5)&&(hour<=7)){document.getElementById("showAsks").innerHTML = "���Ϻ�!��Ŷ,����Ŷ,ף�������и�������!";} 
else if ((hour>=7)&&(hour<=11)){document.getElementById("showAsks").innerHTML = "�����!ף����ÿ���!";}
else if ((hour>=11)&&(hour<=12)){document.getElementById("showAsks").innerHTML = "�����!����ǵ�����Ŷ!";}
else if ((hour>=12)&&(hour<=13)){document.getElementById("showAsks").innerHTML = "����ʱ��,��ע����ϢŶ!";} 
else if ((hour>=14)&&(hour<=17)){document.getElementById("showAsks").innerHTML = "�����!������ô������˳����!";}
else if ((hour>=17)&&(hour<=18)){document.getElementById("showAsks").innerHTML = "�����!��ͳ�ʲô��?����ȥɢɢ����!";}
else if ((hour>=18)&&(hour<=22)){document.getElementById("showAsks").innerHTML = "���Ϻ�!����������ʲô���ݰ�!";} 
else if (hour>=22){document.getElementById("showAsks").innerHTML = "ҹ����,Ϊ�����������˵����彡��,�������Ϣ!";}
};
showAsks();
//End ShowAsks

function AddFavorite(sURL,sTitle){try{window.external.addFavorite(sURL,sTitle)}catch(e){try{window.sidebar.addPanel(sTitle,sURL,"")}catch(e){alert("�ղ�ʧ�ܣ�Chromes�������ʹ�ÿ�ݼ�Ctrl+D������ӣ�")}}};
//End AddUrl

