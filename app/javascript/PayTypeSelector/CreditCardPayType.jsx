import React from 'react'

class CreditCardPaymentType extends React.Component{

 
   render(){
      
      console.log("Credit Card Pay Type");

      return(
      <div>
        <div className="field">
         
          <label htmlFor="order_credit_card_number"> CC #
             {/* {I18n.t("orders.form.credit_card_pay_type.cc_number")} */}
          </label>
          
          <input type="password"
                 name="order[credit_card_number]"
                 id="order_credit_card_number" />
        </div>
       
        <div className="field">
             <label htmlFor="order_expiration_date"> Expiry
                {/* {I18n.t("orders.form.credit_card_pay_type.expiration_date")} */}
             </label>

             <input type="text"
                    name="order[expiration_date]"
                      id="order_expiration_date"
                    size="9"
                    placeholder="e.g. 03/19" />
        </div>

      </div>
      )
   }
}

export default CreditCardPaymentType