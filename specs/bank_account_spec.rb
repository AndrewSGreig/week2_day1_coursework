require('minitest/autorun')
require('minitest/reporters')

require_relative('../bank_account')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestBankAccount < MiniTest::Test

  def setup
    @bank_account = BankAccount.new("Niall", 300, "business")
  end

  #test getters
  def test_account_name
    assert_equal('Niall', @bank_account.holder_name)
  end

  def test_account_balance
    assert_equal(300, @bank_account.balance)
  end

  def test_account_type
    assert_equal("business", @bank_account.type)
  end

  #test setters
  def test_set_account_name
    # @bank_account.set_holder_name("Jordan")
    @bank_account.holder_name = "Jordan"
    assert_equal("Jordan", @bank_account.holder_name)
  end

  def test_set_balance
    # @bank_account.set_balance(220)
    @bank_account.balance = 220
    assert_equal(220, @bank_account.balance)
  end

  def test_set_value
    assert_equal('business', @bank_account.type)
    # @bank_account.set_type('personal')
    @bank_account.type = "personal"
    assert_equal('personal', @bank_account.type)
  end

  def test_pay_into_account
    @bank_account.pay_in(1000)
    assert_equal(1300, @bank_account.balance)
  end

  # def test_pay_monthly_fee
  #   @bank_account.pay_monthly_fee(20)
  #   assert_equal(280, @bank_account.balance)
  # end

  def test_pay_monthly_fee_business_account
    @bank_account.pay_monthly_fee()
    assert_equal(250, @bank_account.balance)
  end

  def test_pay_monthly_fee_personal
    @bank_account.type = "personal"
    @bank_account.pay_monthly_fee()
    assert_equal(290, @bank_account.balance)
  end


end
