#!/bin/bash

ERLANG_VERSION=23.2.4
ELIXIR_VERSION=1.11.3
GOLANG_VERSION=1.15.8
PYTHON_VERSION=3.9.1
RUBY_VERSION=3.0.0
TMUX_VERSION=3.2-rc


asdf install erlang $ERLANG_VERSION
asdf install elixir $ELIXIR_VERSION
asdf install golang $GOLANG_VERSION
asdf install python $PYTHON_VERSION
asdf install ruby $RUBY_VERSION
asdf install tmux $TMUX_VERSION


asdf global erlang $ERLANG_VERSION
asdf global elixir $ELIXIR_VERSION
asdf global golang $GOLANG_VERSION
asdf global python $PYTHON_VERSION
asdf global ruby $RUBY_VERSION
asdf global tmux $TMUX_VERSION


