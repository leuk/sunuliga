require 'test_helper'

class TeamPlayersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => TeamPlayer.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    TeamPlayer.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    TeamPlayer.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to team_player_url(assigns(:team_player))
  end
  
  def test_edit
    get :edit, :id => TeamPlayer.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    TeamPlayer.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TeamPlayer.first
    assert_template 'edit'
  end
  
  def test_update_valid
    TeamPlayer.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TeamPlayer.first
    assert_redirected_to team_player_url(assigns(:team_player))
  end
  
  def test_destroy
    team_player = TeamPlayer.first
    delete :destroy, :id => team_player
    assert_redirected_to team_players_url
    assert !TeamPlayer.exists?(team_player.id)
  end
end
