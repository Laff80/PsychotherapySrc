Array.prototype.contains = function (element) {
		for (var i = 0; i < this.length; i++) {
			if (this[i] == element) {
				return true;
			}
		}
		return false;
	} 
function compareArray(arg1,arg2) {
		var c = new Array();
		var commons="";
		var onlyArg1="";
		var onlyArg2="";
		var m=0;
		var oldSymptomArray=arg1;
		var newSymptomArray=arg2;
		for (var i = 0; i < oldSymptomArray.length; i++) {
			for (var j = 0; j < newSymptomArray.length; j++) {
				if (oldSymptomArray[i]==(newSymptomArray[j])) {
					 if(m!=0){
						 commons+="@"+oldSymptomArray[i];
					   }else{
						   commons+=oldSymptomArray[i];
					   }
					   c[m]=oldSymptomArray[i];
					   m++;
					
					
				}
			}
		}
		//alert("commons:"+commons)
		//return old
		var k=0;
		  for(var i=0;i<oldSymptomArray.length;i++){
			   if(!c.contains(oldSymptomArray[i])){
				   if(k!=0){
					   onlyArg1+="#"+oldSymptomArray[i];
				   }else{
					   onlyArg1+=oldSymptomArray[i];
				   }
				   k++;
			   }
			 }
			// alert("onlyArg1:"+onlyArg1);
			 //return new
		  var j=0;
		  for(var i=0;i<newSymptomArray.length;i++){
			   if(!c.contains(newSymptomArray[i])){
				   
				   if(j!=0){
					   onlyArg2+="*"+newSymptomArray[i];
				   }else{
					   onlyArg2+=newSymptomArray[i];
				   }
				   j++;
			   }
			  }
		//alert("onlyArg2:"+onlyArg2);//return remove

		return onlyArg1;
	
	}
	
	
	//返回new
	function compareArrayNew(arg1,arg2) {
		var c = new Array();
		var commons="";
		var onlyArg1="";
		var onlyArg2="";
		var m=0;
		var oldSymptomArray=arg1;
		var newSymptomArray=arg2;
		for (var i = 0; i < oldSymptomArray.length; i++) {
			for (var j = 0; j < newSymptomArray.length; j++) {
				if (oldSymptomArray[i]==(newSymptomArray[j])) {
					 if(m!=0){
						 commons+="@"+oldSymptomArray[i];
					   }else{
						   commons+=oldSymptomArray[i];
					   }
					   c[m]=oldSymptomArray[i];
					   m++;
					
					
				}
			}
		}
		//alert("commons:"+commons)
		//return old
		var k=0;
		  for(var i=0;i<oldSymptomArray.length;i++){
			   if(!c.contains(oldSymptomArray[i])){
				   if(k!=0){
					   onlyArg1+="#"+oldSymptomArray[i];
				   }else{
					   onlyArg1+=oldSymptomArray[i];
				   }
				   k++;
			   }
			 }
			// alert("onlyArg1:"+onlyArg1);
			 //return new
		  var j=0;
		  for(var i=0;i<newSymptomArray.length;i++){
			   if(!c.contains(newSymptomArray[i])){
				   
				   if(j!=0){
					   onlyArg2+="*"+newSymptomArray[i];
				   }else{
					   onlyArg2+=newSymptomArray[i];
				   }
				   j++;
			   }
			  }
		//alert("onlyArg2:"+onlyArg2);//return remove

		return onlyArg2;
	
	}
	function callArray(arr1,arr2){
		if(arr1 instanceof Array && arr2 instanceof Array){
	
			var str1 = arr1.toString();
			var str2 = arr2.toString();
			if(str1 == str2) return true;
			if(str1!=str2) return false;
		}else return false;
    }
    