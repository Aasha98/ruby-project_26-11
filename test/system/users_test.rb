require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Address", with: @user.address
    fill_in "Age", with: @user.age
    fill_in "Blood", with: @user.blood
    fill_in "City", with: @user.city
    fill_in "Contact", with: @user.contact
    fill_in "Country", with: @user.country
    fill_in "Doj", with: @user.doj
    fill_in "Econtact", with: @user.econtact
    fill_in "Email", with: @user.email
    fill_in "Ename", with: @user.ename
    fill_in "Fname", with: @user.fname
    fill_in "Lname", with: @user.lname
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "Pincode", with: @user.pincode
    fill_in "Pskill", with: @user.pskill
    fill_in "Sal", with: @user.sal
    fill_in "Salpm", with: @user.salpm
    fill_in "Sskill1", with: @user.sskill1
    fill_in "Sskill2", with: @user.sskill2
    fill_in "State", with: @user.state
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Address", with: @user.address
    fill_in "Age", with: @user.age
    fill_in "Blood", with: @user.blood
    fill_in "City", with: @user.city
    fill_in "Contact", with: @user.contact
    fill_in "Country", with: @user.country
    fill_in "Doj", with: @user.doj
    fill_in "Econtact", with: @user.econtact
    fill_in "Email", with: @user.email
    fill_in "Ename", with: @user.ename
    fill_in "Fname", with: @user.fname
    fill_in "Lname", with: @user.lname
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "Pincode", with: @user.pincode
    fill_in "Pskill", with: @user.pskill
    fill_in "Sal", with: @user.sal
    fill_in "Salpm", with: @user.salpm
    fill_in "Sskill1", with: @user.sskill1
    fill_in "Sskill2", with: @user.sskill2
    fill_in "State", with: @user.state
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
