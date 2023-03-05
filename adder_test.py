import cocotb
from cocotb.triggers import Timer, RisingEdge

@cocotb.test()
async def adder(dut):
    a = (3 , 4 , 5 , 6)
    b = (3 , 4 , 5 , 6)
    c = (6 , 8 , 10 , 12)

    for i in range(4):
        dut.clk.value = 0
        await Timer(1, units="ns")
        dut.clk.value = 1
        await Timer(1, units="ns")
        
        dut.a.value = a[i]
        dut.b.value = b[i]

        await Timer(1, units="ns")
        dut._log.info("output c = %s", dut.c.value)
        #assert dut.c.value == c[i], "Error"

    pass