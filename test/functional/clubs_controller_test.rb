require 'test_helper'

class ClubsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Club.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Club.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Club.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to club_url(assigns(:club))
  end
  
  def test_edit
    get :edit, :id => Club.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Club.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Club.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Club.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Club.first
    assert_redirected_to club_url(assigns(:club))
  end
  
  def test_destroy
    club = Club.first
    delete :destroy, :id => club
    assert_redirected_to clubs_url
    assert !Club.exists?(club.id)
  end
end
