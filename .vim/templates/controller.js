
'use strict';

const swagger = require('swagger-node-express');
const httpUtils = require('../../lib/httpUtils');

module.exports = function(entryFeesModel) {
  const controllers = {};

  controllers.createEntryFees = {
    spec: {
      path: '/',
      description: '',
      note: '',
      summary:'',
      method: '',
      parameters: [
        swagger.params.body('coupon', 'The coupon definition', 'CouponPost'),
      ],
      type: 'CreateCoupon',
      responseMessages: [
        { code: 200, message: 'Coupon created' },
        { code: 400, message: 'Invalid input' },
      ],
      nickname: 'managementCreateCoupon',
    },
    action: (req, res) => {
      return CouponCtrl.create(req.body).asCallback(httpUtils.apiReply(res));
    },
    }
  
  }
  controllers.updateEntryFees = {}
  controllers.getEntryFees = {}
  controllers.deleteEntryFees = {}
}
