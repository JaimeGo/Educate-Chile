require 'test_helper'

class ProjectCommunicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_communication = project_communications(:one)
  end

  test "should get index" do
    get project_communications_url
    assert_response :success
  end

  test "should get new" do
    get new_project_communication_url
    assert_response :success
  end

  test "should create project_communication" do
    assert_difference('ProjectCommunication.count') do
      post project_communications_url, params: { project_communication: { answers: @project_communication.answers, questions: @project_communication.questions } }
    end

    assert_redirected_to project_communication_url(ProjectCommunication.last)
  end

  test "should show project_communication" do
    get project_communication_url(@project_communication)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_communication_url(@project_communication)
    assert_response :success
  end

  test "should update project_communication" do
    patch project_communication_url(@project_communication), params: { project_communication: { answers: @project_communication.answers, questions: @project_communication.questions } }
    assert_redirected_to project_communication_url(@project_communication)
  end

  test "should destroy project_communication" do
    assert_difference('ProjectCommunication.count', -1) do
      delete project_communication_url(@project_communication)
    end

    assert_redirected_to project_communications_url
  end
end
