require 'spec_helper'

describe Event do
  let(:event) { Event.new }

  it { should belong_to(:user) }

  it { should respond_to(:title)}
  it { should respond_to(:starts_at)}
  it { should respond_to(:ends_at)}
  it { should respond_to(:all_day)}
  it { should respond_to(:description)}
  it { should respond_to(:created_at)}
  it { should respond_to(:updated_at)}
  it { should respond_to(:user_id)}

end
