describe Time do
  describe '.measure' do
    it 'returns the time measure' do
      expect(described_class.measure { 'some_code' }).to be_instance_of(Time::Measure)
    end

    it 'uses implicit conversion for multiple assignment' do
      result, duration = described_class.measure { 'result' }
      expect([result, duration]).to match(['result', instance_of(Float)])
    end
  end
end
