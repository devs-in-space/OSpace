//
// Created by kyle on 02/01/2020.
//

#ifndef OSPACE_VECTOR_H
#define OSPACE_VECTOR_H

#include <stddef.h>
#include "../memory.h"

namespace lib {
    template<typename T>
    class vector {
    public:
        vector<T>() {
            _arr = new T[0];
        }
        void push_back(T& item);
        void splice(size_t start, size_t n);
        vector operator[] (size_t i){
            return _arr[i];
        }
        size_t size() const {return _size; }

    private:
        T* _arr;
        size_t _size;
    };

    template<typename T>
    void vector<T>::push_back(T &item) {
        T* new_arr = new T[++_size];
        copy_memory(new_arr, _arr, _size);
        new_arr[_size - 1] = item;
        //TODO add free()
        _arr = new_arr;
    }
}


#endif //OSPACE_VECTOR_H
