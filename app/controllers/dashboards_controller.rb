class DashboardsController < ApplicationController
  def index
    @mods = Mod.all
  end
end
