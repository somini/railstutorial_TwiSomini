json.array!(@brainfarts) do |brainfart|
  json.extract! brainfart, :id, :content, :user_id
  json.url brainfart_url(brainfart, format: :json)
end
