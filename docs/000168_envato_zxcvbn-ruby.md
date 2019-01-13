# zxcvbn-ruby [![Build Status](https://travis-ci.org/envato/zxcvbn-ruby.svg?branch=master)](https://travis-ci.org/envato/zxcvbn-ruby)

Ruby port of [zxcvbn.js](https://github.com/dropbox/zxcvbn)

## Usage

Gemfile:

```ruby
gem 'zxcvbn-ruby', require: 'zxcvbn'
```

[RubyGems.org gem replacement vulnerability and mitigation](http://blog.rubygems.org/2016/04/06/gem-replacement-vulnerability-and-mitigation.html): not affected.

Example usage:

```ruby
$ irb
>> require 'zxcvbn'
=> true
>> Zxcvbn.test('@lfred2004', ['alfred'])
=> #<Zxcvbn::Score:0x007fd467803098 @entropy=7.895, @crack_time=0.012, @crack_time_display="instant", @score=0, @match_sequence=[#<Zxcvbn::Match matched_word="alfred", token="@lfred", i=0, j=5, rank=1, pattern="dictionary", dictionary_name="user_inputs", l33t=true, sub={"@"=>"a"}, sub_display"@ -> a", base_entropy0.0, uppercase_entropy0.0, l33t_entropy1, entropy1.0, #<Zxcvbn::Match i=6, j=9, token="2004", pattern="year", entropy=6.894817763307944], @password="@lfred2004", @calc_time=0.003436>
>> Zxcvbn.test('asdfghju7654rewq', ['alfred'])
=> #<Zxcvbn::Score:0x007fd4689c1168 @entropy=29.782, @crack_time=46159.451, @crack_time_display="14 hours", @score=2, @match_sequence=[#<Zxcvbn::Match pattern="spatial", i=0, j=15, token="asdfghju7654rewq", graph="qwerty", turns=5, shifted_count=0, entropy=29.7820508329166>], password"asdfghju7654rewq", calc_time0.00526
```

## Testing Multiple Passwords

The dictionaries used for password strength testing are loaded each request to `Zxcvbn.test`. If you you'd prefer to persist the dictionaries in memory (approx 20MB RSS) to perform lots of password tests in succession then you can use the `Zxcvbn::Tester` API:

```ruby
$ irb
>> require 'zxcvbn'
=> true
>> tester = Zxcvbn::Tester.new
=> #<Zxcvbn::Tester:0x3fe99d869aa4>
>> tester.test('@lfred2004', ['alfred'])
=> #<Zxcvbn::Score:0x007fd4689c1168 @entropy=29.782, @crack_time=46159.451, @crack_time_display="14 hours", @score=2, @match_sequence=[#<Zxcvbn::Match pattern="spatial", i=0, j=15, token="asdfghju7654rewq", graph="qwerty", turns=5, shifted_count=0, entropy=29.7820508329166>], password"asdfghju7654rewq", calc_time0.00526
>> tester.test('@lfred2004', ['alfred'])
=> #<Zxcvbn::Score:0x007fd4689c1168 @entropy=29.782, @crack_time=46159.451, @crack_time_display="14 hours", @score=2, @match_sequence=[#<Zxcvbn::Match pattern="spatial", i=0, j=15, token="asdfghju7654rewq", graph="qwerty", turns=5, shifted_count=0, entropy=29.7820508329166>], password"asdfghju7654rewq", calc_time0.00526
```

**Note**: Storing the entropy of an encrypted or hashed value provides
information that can make cracking the value orders of magnitude easier for an
attacker. For this reason we advise you not to store the results of
`Zxcvbn::Tester#test`. Further reading: [A Tale of Security Gone Wrong](http://gavinmiller.io/2016/a-tale-of-security-gone-wrong/).
