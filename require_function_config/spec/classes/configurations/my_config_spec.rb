# frozen_string_literal: true

require 'spec_helper'

describe 'require_function_config::configurations::my_config' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile.with_all_deps }
    end
  end
end
