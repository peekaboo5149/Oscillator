class SineOscillator {
    float freq, amp, angle = 0.0f, offset = 0.0f;

    public SineOscillator(float freq, float amp) {
        this.freq = freq;
        this.amp = amp;
        this.offset = (float) (2 * Math.PI * freq);
        this.offset /= SAMPLE_RATE;
    }

    public float process() {
        float sample = (float) (amp * Math.sin(angle));
        angle += offset;
        return sample;
    }

}
