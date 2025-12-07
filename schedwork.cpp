#ifndef RECCHECK
#include <set>
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <map>
#include <algorithm>
// add or remove necessary headers as you please


#endif

#include "schedwork.h"

using namespace std;

// a constant that can be used to indicate an INVALID 
// worker ID if that is useful to your implementation.
// Feel free to not use or delete.
static const Worker_T INVALID_ID = (unsigned int)-1;


// Add prototypes for any helper functions here
bool backpack(int day, const int numNeeded, const AvailabilityMatrix& availability,
                int shift, const int maxshift, DailySchedule& schedule, vector<size_t>& numTaken);

// Add your implementation of schedule() and other helper functions here

bool schedule(
    const AvailabilityMatrix& avail,
    const size_t dailyNeed,
    const size_t maxShifts,
    DailySchedule& sched
)
{
    if(avail.size() == 0U){
        return false;
    }
    sched.clear();
    // Add your code below
    const int numWorkers = avail[0].size(); // total num workers
    const int numDays = avail.size(); // total num work days


    // if no workers, no days to work, or if we need more staff than we have
    if (numWorkers == 0 || numDays == 0 || static_cast<size_t>(numWorkers) < dailyNeed) {
        return false;
    }


    sched.assign(numDays, vector<Worker_T>(dailyNeed, INVALID_ID));

    vector<size_t> numTaken(numWorkers, 0);

    bool viable = backpack(0,dailyNeed,avail, 0, maxShifts, sched, numTaken);

    return viable;

}

bool backpack(int day, const int numNeeded, const AvailabilityMatrix& availability,
    int shift, const int maxshift, DailySchedule& s, vector<size_t>& numTaken)
{
    const int numWorkers = availability[0].size(); // total num workers
    const int numDays = availability.size(); // total num work days

    // finished all days
    if (numDays == day) {
        return true;
    }

    // if today is done, continue to tmrw
    if (shift == numNeeded) {
        return backpack(day + 1, numNeeded, availability, 0, maxshift, s, numTaken);
    }

    for (int i = 0; i < numWorkers; i++) {
        // skip if unavail
        if (!availability[day][i]) {continue;}

        // worker can't work more than maxshifts
        if (!(numTaken[i] < static_cast<size_t>(maxshift))) {continue;}

        // workers only work once a day
        if (find(s[day].begin(), s[day].begin() + shift,
            static_cast<Worker_T>(i)) != s[day].begin() + shift) {
                continue;
            }

        s[day][shift] = static_cast<Worker_T>(i);
        numTaken[i]++;

        // move onto next shift
        if (backpack(day, numNeeded, availability, shift + 1, maxshift, s, numTaken)) {
            return true;
        }

        // reversing an assignment or backtracking
        --numTaken[i];
        s[day][shift] = INVALID_ID;
    }

    return false;

}
