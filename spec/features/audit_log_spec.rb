require 'rails_helper'

describe 'AuditLog Feature' do

  let(:audit_log) {FactoryBot.create(:audit_log)}

  describe '#index' do
    it 'has an index page that can be reached' do
      visit audit_logs_path
      expect(page.status.code).to eq(200)
    end
  end

end