<input type="hidden" name="team_id" value="<%= @team.id %>">

<select id="set_team" name="name" >
  <% @team.each do |team| %>
      <option value=<%= team.name%>><%= team.name %></option>
  <% end %>
  </select>

  CREATE TABLE hero_teams(
    id SERIAL8 PRIMARY KEY,
    team_id SERIAL8 REFERENCES teams(id),
    hero_id SERIAL8 UNIQUE REFERENCES heroes(id)
    #UNIQUE means id can't be repeated
  );