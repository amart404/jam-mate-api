class ContactsController < ApplicationController
    def index
        @contacts = Contact.all
        render json: @contacts
    end 

    def show
        @contact = Contact.find(params[:id])
        render json: @contact
    end

    def create
        @contact = Contact.create({
            link: params[:link],
            user_id: params[:user_id]
        })
        render json: @contact
    end 

    def update
        @contact = Contact.find(params[:id])

        @contact.update({
            link: params[:link],
            user_id: params[:user_id]
        })
        render json: @contact
    end

    def delete
        @contact = Contact.find(params[:id])

        @contact.destroy
    end
end