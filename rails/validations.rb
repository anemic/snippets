# validates urls
validates_format_of :url, :with => /^(https?://)?([^/]+)(/.+)?$/i