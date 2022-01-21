var sell_price;
var amount;

function init () {
	sell_price = document.form.sell_price.value;
	amount = document.form.amount.value;
	document.form.sum.value = sell_price;
	change();
}

function add () {
	hm = document.form.amount;
	sum = document.form.sum;
	hm.value ++ ;

	sum.value = parseInt(hm.value) * sell_price;
}

function del () {
	hm = document.form.amount;
	sum = document.form.sum;
		if (hm.value > 1) {
			hm.value -- ;
			sum.value = parseInt(hm.value) * sell_price;
		}
}

function change () {
	hm = document.form.amount;
	sum = document.form.sum;

		if (hm.value < 0) {
			hm.value = 0;
		}
	sum.value = parseInt(hm.value) * sell_price;
}  


function bankDisplay(frm) {
 
    var bank = frm.selectbank.selectedIndex;
 
    switch( bank ){
       case 0:
         frm.bank.value = '상품을 선택하세요.';
         break;
       case 1:
         frm.bank.value = '[Limited Edition] KIRRI 오리지널 후드(기모)-Gray';
         break;
       case 2:
         frm.bank.value = '[Limited Edition] KIRRI 오리지널 후드(기모)-Yellow';
         break;
       case 3:
         frm.bank.value = '[Limited Edition] KIRRI 오리지널 (기모 맨투맨)-White';
         break;
       case 4:
         frm.bank.value = '[Limited Edition] KIRRI 오리지널 대박 슬리퍼-Yellow';
         break;
    }
    
    return true;
}