require 'test_helper'

class BookmarkletsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Bookmarklet.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Bookmarklet.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Bookmarklet.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to bookmarklet_url(assigns(:bookmarklet))
  end
  
  def test_edit
    get :edit, :id => Bookmarklet.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Bookmarklet.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Bookmarklet.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Bookmarklet.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Bookmarklet.first
    assert_redirected_to bookmarklet_url(assigns(:bookmarklet))
  end
  
  def test_destroy
    bookmarklet = Bookmarklet.first
    delete :destroy, :id => bookmarklet
    assert_redirected_to bookmarklets_url
    assert !Bookmarklet.exists?(bookmarklet.id)
  end
end
