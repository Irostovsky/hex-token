# hex-token
Generate hex digit token based on the current time.

# using

```
class User
  include Hex::Token
end

User.new.hex_token
> 4366e6b70f1849a4f55653dc1fd28d8e
```
