function combinations(arr, k){var i,subI,ret = [],sub,next;for(i=0;i<arr.length;i++){if(k===1){ret.push([arr[i]]);}else{sub=combinations(arr.slice(i+1,arr.length),k-1);for(subI=0;subI<sub.length;subI++){next=sub[subI];next.unshift(arr[i]);ret.push(next);}}}return ret;}
combinations([0,1,2,3,4], 3);
