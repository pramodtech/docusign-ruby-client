=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  # Contains information about an account billing plan.
  class AccountBillingPlan
    # Reserved:
    attr_accessor :add_ons

    # Reserved: TBD
    attr_accessor :can_cancel_renewal

    # When set to **true**, specifies that you can upgrade the account through the API.
    attr_accessor :can_upgrade

    # Specifies the ISO currency code for the account.
    attr_accessor :currency_code

    attr_accessor :downgrade_plan_information

    # When set to **true**, then customer support is provided as part of the account plan.
    attr_accessor :enable_support

    # The number of seats (users) included.
    attr_accessor :included_seats

    # Reserved: TBD
    attr_accessor :incremental_seats

    # 
    attr_accessor :is_downgrade

    # 
    attr_accessor :notification_type

    #  Any other percentage discount for the plan. 
    attr_accessor :other_discount_percent

    # 
    attr_accessor :payment_cycle

    #  The payment method used with the plan. The possible values are: CreditCard, PurchaseOrder, Premium, or Freemium. 
    attr_accessor :payment_method

    # 
    attr_accessor :per_seat_price

    # Identifies the type of plan. Examples include Business, Corporate, Enterprise, Free.
    attr_accessor :plan_classification

    # A complex type that sets the feature sets for the account. It contains the following information (all string content):  * currencyFeatureSetPrices - Contains the currencyCode and currencySymbol for the alternate currency values for envelopeFee, fixedFee, seatFee that are configured for this plan feature set. * envelopeFee - An incremental envelope cost for plans with envelope overages (when isEnabled=true). * featureSetId - A unique ID for the feature set. * fixedFee - A one-time fee associated with the plan (when isEnabled=true). * isActive - Specifies whether the feature set is actively set as part of the plan. * isEnabled - Specifies whether the feature set is actively enabled as part of the plan. * name - The name of the feature set. * seatFee - An incremental seat cost for seat-based plans (when isEnabled=true). 
    attr_accessor :plan_feature_sets

    # 
    attr_accessor :plan_id

    # The name of the Billing Plan.
    attr_accessor :plan_name

    # The renewal status for the account. The acceptable values are:  * auto: The account automatically renews. * queued_for_close: Account will be closed at the billingPeriodEndDate. * queued_for_downgrade: Account will be downgraded at the billingPeriodEndDate.
    attr_accessor :renewal_status

    #  A complex type that contains any seat discount information.  Values are: BeginSeatCount, EndSeatCount, and SeatDiscountPercent.  
    attr_accessor :seat_discounts

    # The support incident fee charged for each support incident.
    attr_accessor :support_incident_fee

    # The support plan fee charged for this plan.
    attr_accessor :support_plan_fee

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'add_ons' => :'addOns',
        :'can_cancel_renewal' => :'canCancelRenewal',
        :'can_upgrade' => :'canUpgrade',
        :'currency_code' => :'currencyCode',
        :'downgrade_plan_information' => :'downgradePlanInformation',
        :'enable_support' => :'enableSupport',
        :'included_seats' => :'includedSeats',
        :'incremental_seats' => :'incrementalSeats',
        :'is_downgrade' => :'isDowngrade',
        :'notification_type' => :'notificationType',
        :'other_discount_percent' => :'otherDiscountPercent',
        :'payment_cycle' => :'paymentCycle',
        :'payment_method' => :'paymentMethod',
        :'per_seat_price' => :'perSeatPrice',
        :'plan_classification' => :'planClassification',
        :'plan_feature_sets' => :'planFeatureSets',
        :'plan_id' => :'planId',
        :'plan_name' => :'planName',
        :'renewal_status' => :'renewalStatus',
        :'seat_discounts' => :'seatDiscounts',
        :'support_incident_fee' => :'supportIncidentFee',
        :'support_plan_fee' => :'supportPlanFee'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'add_ons' => :'Array<AddOn>',
        :'can_cancel_renewal' => :'String',
        :'can_upgrade' => :'String',
        :'currency_code' => :'String',
        :'downgrade_plan_information' => :'DowngradePlanUpdateResponse',
        :'enable_support' => :'String',
        :'included_seats' => :'String',
        :'incremental_seats' => :'String',
        :'is_downgrade' => :'String',
        :'notification_type' => :'String',
        :'other_discount_percent' => :'String',
        :'payment_cycle' => :'String',
        :'payment_method' => :'String',
        :'per_seat_price' => :'String',
        :'plan_classification' => :'String',
        :'plan_feature_sets' => :'Array<FeatureSet>',
        :'plan_id' => :'String',
        :'plan_name' => :'String',
        :'renewal_status' => :'String',
        :'seat_discounts' => :'Array<SeatDiscount>',
        :'support_incident_fee' => :'String',
        :'support_plan_fee' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'addOns')
        if (value = attributes[:'addOns']).is_a?(Array)
          self.add_ons = value
        end
      end

      if attributes.has_key?(:'canCancelRenewal')
        self.can_cancel_renewal = attributes[:'canCancelRenewal']
      end

      if attributes.has_key?(:'canUpgrade')
        self.can_upgrade = attributes[:'canUpgrade']
      end

      if attributes.has_key?(:'currencyCode')
        self.currency_code = attributes[:'currencyCode']
      end

      if attributes.has_key?(:'downgradePlanInformation')
        self.downgrade_plan_information = attributes[:'downgradePlanInformation']
      end

      if attributes.has_key?(:'enableSupport')
        self.enable_support = attributes[:'enableSupport']
      end

      if attributes.has_key?(:'includedSeats')
        self.included_seats = attributes[:'includedSeats']
      end

      if attributes.has_key?(:'incrementalSeats')
        self.incremental_seats = attributes[:'incrementalSeats']
      end

      if attributes.has_key?(:'isDowngrade')
        self.is_downgrade = attributes[:'isDowngrade']
      end

      if attributes.has_key?(:'notificationType')
        self.notification_type = attributes[:'notificationType']
      end

      if attributes.has_key?(:'otherDiscountPercent')
        self.other_discount_percent = attributes[:'otherDiscountPercent']
      end

      if attributes.has_key?(:'paymentCycle')
        self.payment_cycle = attributes[:'paymentCycle']
      end

      if attributes.has_key?(:'paymentMethod')
        self.payment_method = attributes[:'paymentMethod']
      end

      if attributes.has_key?(:'perSeatPrice')
        self.per_seat_price = attributes[:'perSeatPrice']
      end

      if attributes.has_key?(:'planClassification')
        self.plan_classification = attributes[:'planClassification']
      end

      if attributes.has_key?(:'planFeatureSets')
        if (value = attributes[:'planFeatureSets']).is_a?(Array)
          self.plan_feature_sets = value
        end
      end

      if attributes.has_key?(:'planId')
        self.plan_id = attributes[:'planId']
      end

      if attributes.has_key?(:'planName')
        self.plan_name = attributes[:'planName']
      end

      if attributes.has_key?(:'renewalStatus')
        self.renewal_status = attributes[:'renewalStatus']
      end

      if attributes.has_key?(:'seatDiscounts')
        if (value = attributes[:'seatDiscounts']).is_a?(Array)
          self.seat_discounts = value
        end
      end

      if attributes.has_key?(:'supportIncidentFee')
        self.support_incident_fee = attributes[:'supportIncidentFee']
      end

      if attributes.has_key?(:'supportPlanFee')
        self.support_plan_fee = attributes[:'supportPlanFee']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          add_ons == o.add_ons &&
          can_cancel_renewal == o.can_cancel_renewal &&
          can_upgrade == o.can_upgrade &&
          currency_code == o.currency_code &&
          downgrade_plan_information == o.downgrade_plan_information &&
          enable_support == o.enable_support &&
          included_seats == o.included_seats &&
          incremental_seats == o.incremental_seats &&
          is_downgrade == o.is_downgrade &&
          notification_type == o.notification_type &&
          other_discount_percent == o.other_discount_percent &&
          payment_cycle == o.payment_cycle &&
          payment_method == o.payment_method &&
          per_seat_price == o.per_seat_price &&
          plan_classification == o.plan_classification &&
          plan_feature_sets == o.plan_feature_sets &&
          plan_id == o.plan_id &&
          plan_name == o.plan_name &&
          renewal_status == o.renewal_status &&
          seat_discounts == o.seat_discounts &&
          support_incident_fee == o.support_incident_fee &&
          support_plan_fee == o.support_plan_fee
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [add_ons, can_cancel_renewal, can_upgrade, currency_code, downgrade_plan_information, enable_support, included_seats, incremental_seats, is_downgrade, notification_type, other_discount_percent, payment_cycle, payment_method, per_seat_price, plan_classification, plan_feature_sets, plan_id, plan_name, renewal_status, seat_discounts, support_incident_fee, support_plan_fee].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DocuSign_eSign.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
