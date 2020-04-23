class ToolsController < ApplicationController

    def index
        @tools = Tool.all 

        render json: @tools
    end

    def show
        @tool = Tool.find(params[:id])

        render json: @tool
    end

    def create 
        @tool = Tool.create({
        tool_type: params[:tool_type],
        constructive_type: params[:constructive_type],
        tool_material: params[:tool_material],
        working_area: params[:working_area],
        price: params[:price]
        })

        render json: @tool
    end

    def update
        @tool = Tool.find(params[:id])
        @tool.update({
            tool_type: params[:tool_type],
            constructive_type: params[:constructive_type],
            tool_material: params[:tool_material],
            working_area: params[:working_area],
            price: params[:price] 
        })

        render json: @tool
    end

    def destroy
        @tools = Tool.all 
        @tool = Tool.find(params[:id])
        @tool.destroy

        render json: @tools
    end
end
