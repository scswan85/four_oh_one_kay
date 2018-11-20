require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "creating a Client" do
    visit clients_url
    click_on "New Client"

    fill_in "Account Liquidity Needs", with: @client.account_liquidity_needs
    fill_in "Account Objective", with: @client.account_objective
    fill_in "Account Time Horizon", with: @client.account_time_horizon
    fill_in "Adjusted Net Worth", with: @client.adjusted_net_worth
    fill_in "Annual Income", with: @client.annual_income
    fill_in "Annuity Exp", with: @client.annuity_exp
    fill_in "Bond Exp", with: @client.bond_exp
    fill_in "Citizenship", with: @client.citizenship
    fill_in "City", with: @client.city
    fill_in "Ddp Exp", with: @client.ddp_exp
    fill_in "Employment Status", with: @client.employment_status
    fill_in "First Name", with: @client.first_name
    fill_in "Investment Experience", with: @client.investment_experience
    fill_in "Last Name", with: @client.last_name
    fill_in "Liquid Net Worth", with: @client.liquid_net_worth
    fill_in "Mutual Fund Exp", with: @client.mutual_fund_exp
    fill_in "Occupation", with: @client.occupation
    fill_in "Option Exp", with: @client.option_exp
    fill_in "Phone Number", with: @client.phone_number
    fill_in "Reit Exp", with: @client.reit_exp
    fill_in "Risk Tolerance", with: @client.risk_tolerance
    fill_in "State", with: @client.state
    fill_in "Stock Exp", with: @client.stock_exp
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit clients_url
    click_on "Edit", match: :first

    fill_in "Account Liquidity Needs", with: @client.account_liquidity_needs
    fill_in "Account Objective", with: @client.account_objective
    fill_in "Account Time Horizon", with: @client.account_time_horizon
    fill_in "Adjusted Net Worth", with: @client.adjusted_net_worth
    fill_in "Annual Income", with: @client.annual_income
    fill_in "Annuity Exp", with: @client.annuity_exp
    fill_in "Bond Exp", with: @client.bond_exp
    fill_in "Citizenship", with: @client.citizenship
    fill_in "City", with: @client.city
    fill_in "Ddp Exp", with: @client.ddp_exp
    fill_in "Employment Status", with: @client.employment_status
    fill_in "First Name", with: @client.first_name
    fill_in "Investment Experience", with: @client.investment_experience
    fill_in "Last Name", with: @client.last_name
    fill_in "Liquid Net Worth", with: @client.liquid_net_worth
    fill_in "Mutual Fund Exp", with: @client.mutual_fund_exp
    fill_in "Occupation", with: @client.occupation
    fill_in "Option Exp", with: @client.option_exp
    fill_in "Phone Number", with: @client.phone_number
    fill_in "Reit Exp", with: @client.reit_exp
    fill_in "Risk Tolerance", with: @client.risk_tolerance
    fill_in "State", with: @client.state
    fill_in "Stock Exp", with: @client.stock_exp
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
