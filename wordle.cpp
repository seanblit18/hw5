#ifndef RECCHECK
// For debugging
#include <iostream>
// For std::remove
#include <algorithm> 
#include <map>
#include <set>
#endif

#include "wordle.h"
#include "dict-eng.h"
using namespace std;


// Add prototypes of helper functions here
void oppastoppa(string& curry, unsigned int indy, string floater, const set<string>& dict, set<string>& finalans, int missing);
bool prunster(const set<string>& dict, const string& pre, size_t n);

// Definition of primary wordle function
std::set<std::string> wordle(
    const std::string& in,
    const std::string& floating,
    const std::set<std::string>& dict)
{
    // Add your code here
    set<string> final_answers; // set to put validated words with dict
    string curry = in; // copy of original string
    string floater = floating; // copy of floating letters
    size_t missing = 0; // counts num of slots that don't have a fixed letter
    
   for (size_t i = 0; i < curry.size(); i++) {
        if (curry[i] == '-') {
            missing++;
        }
        else {
            size_t pos = floater.find(curry[i]);
            if (pos != string::npos) {floater.erase(pos,1);}
        }
   }

   // if there are more floating than missing, IMPOSSIBLE

   if (floater.size() > missing) {
        return final_answers;
   }

   oppastoppa(curry, 0, floater, dict, final_answers, missing);
   return final_answers;
}

// Define any helper functions here
void oppastoppa(string& curry, unsigned int indy, 
            string floater, const set<string>& dict, 
            set<string>& finalans, int missing) 
{

    // base case --> current word is at n letters and follows constraints
    if (indy == curry.size()) {
        // valid iff no floating letters left and found in dict
        if (floater.empty() && (dict.find(curry) != dict.end())) {
            finalans.insert(curry);
        }
        return;
    }

    // if fixed, continue
    if (curry[indy] != '-') {
        if (curry.size() >= 12) {
            string prefix = curry.substr(0, indy + 1);
            if (!prunster(dict, prefix, curry.size())) {
                return;
            }
        }
        oppastoppa(curry, indy + 1, floater, dict, finalans, missing);
        return;
    }

    // curry[indy] atp = '-'
    // go through floating letters
    for (size_t i = 0; i < floater.size(); i++) {
        char sza = floater[i];
        string kendrick = floater;
        kendrick.erase(i, 1);
        curry[indy] = sza;

        bool ihate104 = true;
        if (curry.size() >= 12) {
            string prefix = curry.substr(0, indy + 1);
            if (!prunster(dict, prefix, curry.size())) {
                ihate104 = false;
            }
        }
       
        if (ihate104) {
            oppastoppa(curry, indy + 1, kendrick, dict, finalans, missing - 1);
        }        
        curry[indy] = '-';
    }

    // brute force remaining letters iff there are enough spots for any remaining floaters
    if (static_cast<int>(floater.size()) < missing) {
        for (char c = 'a'; c <= 'z'; c++) { // hehe c++
            if (floater.find(c) != string::npos) {
                continue;
            }
            curry[indy] = c;

            bool ilove104 = true;
            if (curry.size() >= 12) {
                string prefix = curry.substr(0, indy + 1);
                if (!prunster(dict, prefix, curry.size())) {
                    ilove104 = false;
                }
            }

            if (ilove104) {
                oppastoppa(curry, indy + 1, floater, dict, finalans, missing - 1);
            }
            curry[indy] = '-';
        }
    }
}

bool prunster(const set<string>& dict, const string& pre, size_t n) 
{
    set<string>::const_iterator it = dict.begin();
    while (it != dict.end()) {
        if (it->size() == n) {
            bool check = true;
            for (size_t i = 0; i < pre.size(); i++) {
                if (i >= it->size() || (*it)[i] != pre[i]) {
                    check = false;
                    break;
                }
            }
            if (check) {
                return true;
            }
        }
        ++it;
    }
    return false;
}

