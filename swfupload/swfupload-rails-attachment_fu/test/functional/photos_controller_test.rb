require File.dirname(__FILE__) + '/../test_helper'

class PhotosControllerTest < ActionController::TestCase
  def assert_truth
    assert true
  end

  def test_should_create_photo_and_transliterate_filename
    photo = fixture_file_upload("/files/IT's, UPPERCASE!  AND, WeIRD.JPG", "image/jpeg")

    # Upload using standard create action
    assert_difference 'Photo.count', 3 do
      post :create, :photo => { :uploaded_data => photo }, :html => { :multipart => true }
    end

    assert_equal "it_s_uppercase_and_weird.jpg", assigns(:photo).filename

    # Test if physical file is actually added (and later deleted)
    filepath = assigns(:photo).public_filename
    assert File.exists?(filepath)
    
    # Also test the destruction of the file and file data. Included as one test because of the
    # time it takes to run these tests and I don't want to leave files in the temporary directory
    assert_difference 'Photo.count', -3 do
      delete :destroy, :id => assigns(:photo).id
    end

    # Did the file get deleted?
    assert !File.exists?(filepath)
  end

  def test_should_create_photo_using_swfupload_action
    photo = fixture_file_upload("/files/IT's, UPPERCASE!  AND, WeIRD.JPG", "application/octet-stream")

    assert_difference 'Photo.count', 3 do
      post :swfupload, :story_id => @story_id, :Filedata => photo, :html => { :multipart => true }
    end

    assert_difference 'Photo.count', -3 do
      delete :destroy, :story_id => @story_id, :id => assigns(:photo).id
    end
  end
end
