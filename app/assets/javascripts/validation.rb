require 'validate/jquery.validate.min.js'
require 'validate/additional-methods.min.js'
require 'validate/localization/messages_tr.min'

class Validation
  def initialize(form_elm)
    @native = form_elm.to_n
    `
      #{@native}.validate({
        errorClass: 'invalid',
        errorPlacement: function (error, element) {
          $(element)
            .closest("form")
            .find("label[for='" + element.attr("id") + "']")
            .attr('data-error', error.text());
        }
      });
    `
  end
end