# Debug variables in the view, outputted in yaml, same as saying y @variable in irb I think?

Controller
def index
  @variable = some_local_ variable
end

View
<p>
  <%= debug @variable %>
</p>
<p>
  <%= debug params %>
</p>