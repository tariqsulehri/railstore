import React from 'react'

class CheckPaymentType extends React.Component{
   render(){
      return(
      <div>
        <div className="field">
         
          <label htmlFor="order_routing_number"> Routing #
            {/* {I18n.t("orders.form.check_pay_type.routing_number")} */}
          </label>
          
          <input type="password"
                 name="order[routing_number]"
                   id="order_routing_number" />
        </div>
       
        <div className="field">
             <label htmlFor="order_acount_number"> Account #
               {/* {I18n.t("orders.form.check_pay_type.account_number")} */}
             </label>

             <input type="text"
                    name="order[account_number]"
                      id="order_account_number" />
        </div>

      </div>
      )
   }
}

export default CheckPaymentType