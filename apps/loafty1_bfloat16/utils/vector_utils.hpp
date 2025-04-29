#include <vector>

template<typename U, typename T>
vector<U> castVector(const vector<T>& input) {
    vector<U> output;
    output.reserve(input.size());
    for (const T& val : input) {
        output.push_back(static_cast<U>(val));
    }
    return output;
}

template<typename T>
vector<T> operator*(vector<T> lhs, vector<T> rhs) {
    if(lhs.size() != rhs.size())
        throw invalid_argument( "Different sized a vectors cannot be multiplied." );

    auto outputSize = lhs.size();
    vector<T> result(outputSize);
    for(auto i=0; i<outputSize; i++) 
        result[i] = lhs[i]*rhs[i];
    
    return result;
}

template<typename T>
vector<T> operator+(vector<T> lhs, vector<T> rhs) {
    if(lhs.size() != rhs.size())
        throw invalid_argument( "Different sized a vectors cannot be added." );

    auto outputSize = lhs.size();
    vector<T> result(outputSize);
    for(auto i=0; i<outputSize; i++) 
        result[i] = lhs[i]+rhs[i];
    
    return result;
}

template<typename T>
vector<T> operator-(vector<T> lhs, vector<T> rhs) {
    if(lhs.size() != rhs.size())
        throw invalid_argument( "Different sized a vectors cannot be subtracted." );

    auto outputSize = lhs.size();
    vector<T> result(outputSize);
    for(auto i=0; i<outputSize; i++) 
        result[i] = lhs[i]-rhs[i];
    
    return result;
}

template<typename T>
vector<T> operator*(vector<T> lhs, T factor) {
    auto outputSize = lhs.size();
    vector<T> result(outputSize);
    for(auto i=0; i<outputSize; i++) 
        result[i] = lhs[i]*factor;
    
    return result;
}

template<typename T>
vector<T> cos(vector<T> v) {
    auto outputSize = v.size();
    vector<T> result(outputSize);
    for(auto i=0; i<outputSize; i++) 
        result[i] = cos(v[i]);
    
    return result;
}

template<typename T>
vector<T> sin(vector<T> v) {
    auto outputSize = v.size();
    vector<T> result(outputSize);
    for(auto i=0; i<outputSize; i++) 
        result[i] = sin(v[i]);
    
    return result;
}

template<typename T>
T mean(vector<T> v){
    if(v.empty()){
        return 0;
    }

    auto const count = static_cast<T>(v.size());
    return reduce(v.begin(), v.end()) / count;
}