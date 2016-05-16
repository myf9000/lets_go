require "rails_helper"

describe EventsRepository do
  let(:error) { EventsRepository::EventNotFound }
  let(:error_msg) { "Couldn't find Event with 'id'=0" }
  let(:repository) { described_class.new }
  let(:wrong_id) { 0 }

  describe "#all_events" do
    context "when no events" do
      it { expect(repository.all_events).to eq([]) }
    end

    context "when we have events" do
      before do
        create(:event)
      end

      it { expect(repository.all_events.count).to eq(1) }
      it { expect(repository.all_events).to be_an(Array) }
    end
  end

  describe "#find" do
    subject { repository.find(id) }

    context "when good id" do
      let(:event) { create(:event) }
      let(:id) { event.id }

      before { subject }

      it { expect(subject(event.id)).to eq(event) }
      it { expect(subject(event.id)).to be_an(EventEntity) }
    end

    context "when wrong id" do
      let(:id) { wrong_id }

      before { subject }

      it { expect { subject }.to raise_error(error, error_msg) }
    end
  end
end
