# nbayes

```
gem install nbayes
```

NBayes is a full-featured, Ruby implementation of ``Naive Bayes``.  Some of the features include:

* allows prior distribution on classes to be assumed uniform (optional)
* generic to work with all types of tokens, not just text
* outputs probabilities, instead of just class w/max probability
* customizable constant value for Laplacian smoothing
* optional and customizable purging of low-frequency tokens (for performance)
* optional binarized mode
* uses log probabilities to avoid underflow

For more information, view this blog post: http://blog.oasic.net/2012/06/naive-bayes-for-ruby.html

## Contributing to nbayes
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Acknowledgements

This project was supported by PaperRater's [grammar checker](http://www.PaperRater.com/) and automated proofreader. 

[![free grammar checker](http://www.PaperRater.com/images/paper-rater-logo_303x58.jpg)](http://www.PaperRater.com/)

## Copyright

Copyright (c) 2012-2016 Oasic Technologies LLC. See LICENSE.txt for further details.

