XPTemplate priority=personal
XPT cpy " Python C boiler plate Personal
#include <Python.h>

// Define a new Exception object for the module
static PyObject *exmodError;

static PyObject* exmod_say_hello(PyObject* self, PyObject *args){
    const char* msg;
    int sts=0;

    //Extract the msg from *args which is a tuple in this case a string
    if(!PyArg_ParseTuple(args, "s", &msg)) {
        return NULL;  //Return error if none found
    }
    // Check to see if there is any problems with the inform passed from python to this module
    if (strcmp(msg, "this_is_an_error") == 0){
        //if error, raise an exception with our exception object
        PyErr_SetString(exmodError, "This is a test exception error");
        return NULL; //Propagate the error to caller (python interpreter
    } else {
        //No error found, continue normal process
        printf("This is C World\nYour message is: %s\n", msg);
        sts=21; //return 0 for success
    }

    //Just like pulling in values, you need to convert C value to python objects
    return Py_BuildValue("i", sts);
}

static PyObject* exmod_add(PyObject* self, PyObject *args){
    double a, b;
    double sts=0;

    //Extract the msg from *args which is a tuple
    if(!PyArg_ParseTuple(args, "dd", &a, &b)) {
        return NULL;  //Return error if none found
    }

    sts = a + b;
    printf("This is C World\nAddition of %f + %f = %f\n", a, b, sts);
    return Py_BuildValue("d", sts);
}

// Register methods
// Python Name, C Function Name, Argument Presentation, Description
static PyMethodDef exmod_methods[] = {
    {"hello", exmod_say_hello, METH_VARARGS, "Say hello From C"},
    {"add", exmod_add, METH_VARARGS,"Add two floats"},
    {NULL, NULL, 0, NULL}  //Sentinel
};

//register exmoderror
PyMODINIT_FUNC initexmod(void){
    PyObject *m;
    m = Py_InitModule("exmod", exmod_methods);
    if(m == NULL) return;

    exmodError = PyErr_NewException("exmod.error", NULL, NULL);  // exmod.error python error obje
ct
    Py_INCREF(exmodError);
    PyModule_AddObject(m, "error", exmodError);
}


