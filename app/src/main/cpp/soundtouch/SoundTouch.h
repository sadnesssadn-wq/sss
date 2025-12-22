////////////////////////////////////////////////////////////////////////////////
///
/// SoundTouch - main class for tempo/pitch/rate adjusting routines.
///
/// Notes:
/// - This is a simplified header for Android integration
/// - Full implementation should use official SoundTouch library
///
////////////////////////////////////////////////////////////////////////////////

#ifndef SOUNDTOUCH_H
#define SOUNDTOUCH_H

#include <stddef.h>
#include <limits.h>

namespace soundtouch {

    /// Sample type (16-bit signed integer)
    typedef short SAMPLETYPE;

    /// SoundTouch library version
    #define SOUNDTOUCH_VERSION "2.3.2"

    class SoundTouch {
    private:
        float pitchSemiTones;
        float tempoChange;
        float rateChange;
        uint sampleRate;
        uint channels;
        
    public:
        SoundTouch();
        virtual ~SoundTouch();

        /// Get SoundTouch library version
        static const char *getVersionString();

        /// Get SoundTouch library version ID
        static uint getVersionId();

        /// Sets new rate control value
        void setRate(float newRate);

        /// Sets new tempo control value
        void setTempo(float newTempo);

        /// Sets new rate control value as a difference in percents
        void setRateChange(float newRate);

        /// Sets new tempo control value as a difference in percents
        void setTempoChange(float newTempo);

        /// Sets new pitch control value
        void setPitch(float newPitch);

        /// Sets pitch change in octaves
        void setPitchOctaves(float newPitch);

        /// Sets pitch change in semi-tones
        void setPitchSemiTones(float newPitch);

        /// Sets the number of channels
        void setChannels(uint numChannels);

        /// Sets sample rate
        void setSampleRate(uint srate);

        /// Flushes the last samples from the processing pipeline to the output
        void flush();

        /// Adds samples to be processed
        void putSamples(const SAMPLETYPE *samples, uint numSamples);

        /// Clears all the samples in the object
        void clear();

        /// Sets routine control parameters
        void setSetting(int settingId, int value);

        /// Get routine control parameter
        int getSetting(int settingId) const;

        /// Returns number of samples currently unprocessed
        uint numUnprocessedSamples() const;

        /// Receive processed samples from the processor
        uint receiveSamples(SAMPLETYPE *output, uint maxSamples);

        /// Returns number of samples currently available
        uint numSamples() const;

        /// Returns nonzero if there aren't any samples available for outputting
        int isEmpty() const;
    };

} // namespace soundtouch

#endif // SOUNDTOUCH_H

