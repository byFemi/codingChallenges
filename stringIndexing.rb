# In this challenge, your task is to code a serial_average method which is described below:
#                                                                                        It takes a fixed width string in format: SSS-XX.XX-YY.YY. SSS is a three digit serial number, XX.XX and YY.YY are two digit numbers including up to two decimal digits.
#     It returns a string containing the answer in format SSS-ZZ.ZZ where SSS is the serial number of that input string, and ZZ.ZZ is the average of XX.XX and YY.YY.
#     All numbers are rounded off to two decimal places.

def serial_average(serialNumber)
  # in function, slice the first and second value (XX.XX and YY.YY)
  # get the average of the two
  # get the slice of the first number (SSS)
  # build a return string
  # assuming the input is sanitised and has everything needed.
  # SSS-XX.XX-YY.YY
  # SSS-ZZ.ZZ
  sVal = serialNumber[0,3]
  xVal = serialNumber[4,5]
  yVal = serialNumber[10,5]
  zVal = [xVal.to_f, yVal.to_f].sum.fdiv(2).round(2).to_s
  retString = sVal+'-'+zVal
  return retString
end
