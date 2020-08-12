describe Time::Measure do
  let(:measure) { described_class.new { 1 + 2 } }

  describe '.version' do
    it 'has a version number' do
      expect(described_class::VERSION).to eq('0.1.2')
    end
  end

  describe '#result' do
    it 'returns the result of block execution' do
      expect(measure.result).to eq(3)
    end
  end

  describe '#start_time' do
    it 'returns the time of the start of the block' do
      expect(measure.start_time).to be_instance_of(Time)
    end

    it 'start time is not equal to end time' do
      expect(measure.start_time).not_to eq(measure.end_time)
    end
  end

  describe '#stop_time' do
    it 'returns the time of the end of the block' do
      expect(measure.end_time).to be_instance_of(Time)
    end

    it 'end time is not equal to start time' do
      expect(measure.end_time).not_to eq(measure.start_time)
    end
  end

  describe '#duration' do
    it 'returns the duration of the block execution' do
      expect(measure.duration).to eq(measure.end_time - measure.start_time)
    end
  end

  describe '#to_ary' do
    it 'returns the result and duration' do
      expect(measure.to_ary).to eq([3, measure.end_time - measure.start_time])
    end

    it 'uses implicit conversion for multiple assignment' do
      result, duration = measure
      expect([result, duration]).to eq(measure.to_ary)
    end
  end
end
