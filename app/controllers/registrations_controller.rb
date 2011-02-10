class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new params[:registration]

    if @registration.create
      redirect_to root_path, :notice => 'Регистрацията ви е успешна. Проверете си пощата за допълнителни инструкции.'
    else
      render :action => :new
    end
  end
end
