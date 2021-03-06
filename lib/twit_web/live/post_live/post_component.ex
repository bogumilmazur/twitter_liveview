defmodule  TwitWeb.PostLive.PostComponent do
  use TwitWeb, :live_component

  def render(assigns) do
  ~L"""
  <div id="post-<%= @post.id %>" class="post">
    <div class="row">
      <div class="column column-10">
        <div class="post-avatar"></div>
      </div>
      <div class="column column-90 post-body">
        <b>@<%= @post.username %></b>
        <br/>
        <%= @post.body %>
      </div>
    </div>
    <div class="row">
      <div class="column">
        <i class="far fa-heart"></i><%= @post.likes_count %>
      </div>
      <div class="column">
        <i class="far fa-retweet"></i><%= @post.repost_count %>
      </div>
      <div class="column">
        <%= live_patch to: Routes.post_index_path(@socket, :edit, @post) do %>
          edit
        <% end %>
        <%= link to: "#", phx_click: "delete", phx_value_id: @post.id, data: [confirm: "Are you sure?"] do %>
          delete
        <% end %>
      </div>
    </div>
  </div>
  """
  end
end
