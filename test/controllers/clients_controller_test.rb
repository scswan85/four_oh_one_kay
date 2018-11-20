require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { account_liquidity_needs: @client.account_liquidity_needs, account_objective: @client.account_objective, account_time_horizon: @client.account_time_horizon, adjusted_net_worth: @client.adjusted_net_worth, annual_income: @client.annual_income, annuity_exp: @client.annuity_exp, bond_exp: @client.bond_exp, citizenship: @client.citizenship, city: @client.city, ddp_exp: @client.ddp_exp, employment_status: @client.employment_status, first_name: @client.first_name, investment_experience: @client.investment_experience, last_name: @client.last_name, liquid_net_worth: @client.liquid_net_worth, mutual_fund_exp: @client.mutual_fund_exp, occupation: @client.occupation, option_exp: @client.option_exp, phone_number: @client.phone_number, reit_exp: @client.reit_exp, risk_tolerance: @client.risk_tolerance, state: @client.state, stock_exp: @client.stock_exp } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { account_liquidity_needs: @client.account_liquidity_needs, account_objective: @client.account_objective, account_time_horizon: @client.account_time_horizon, adjusted_net_worth: @client.adjusted_net_worth, annual_income: @client.annual_income, annuity_exp: @client.annuity_exp, bond_exp: @client.bond_exp, citizenship: @client.citizenship, city: @client.city, ddp_exp: @client.ddp_exp, employment_status: @client.employment_status, first_name: @client.first_name, investment_experience: @client.investment_experience, last_name: @client.last_name, liquid_net_worth: @client.liquid_net_worth, mutual_fund_exp: @client.mutual_fund_exp, occupation: @client.occupation, option_exp: @client.option_exp, phone_number: @client.phone_number, reit_exp: @client.reit_exp, risk_tolerance: @client.risk_tolerance, state: @client.state, stock_exp: @client.stock_exp } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
