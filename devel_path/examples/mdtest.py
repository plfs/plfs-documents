import sys
sys.path += '../lib'
import expr_mgmt

mpi_options = { "np"   : [ 4, 8 ], }
mpi_program = ( "/users/user1/mdtest/mdtest" )
program_options = {
  "I" : [ 1, 10 ],
  "d" : [ "/pfs/user1/mdtest.out" ], 
  "z" : [ 1, 2 ],
  "b" : [ 1 ],
}
transducer = "/users/user1/mdtest/trans.py"
transducer_arguments = [
  [ "--desc expr1" ]
]

def get_commands():
  return expr_mgmt.get_commands(
    mpi_options=mpi_options,
    mpi_program=mpi_program,
    transducer=transducer,
    transducer_arguments=transducer_arguments,
    program_options=program_options )
