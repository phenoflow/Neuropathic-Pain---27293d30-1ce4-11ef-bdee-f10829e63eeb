# Rebecca M Joseph, Ruth H Jack, Richard Morriss, Roger David Knaggs, Debbie Buttler, Chris Hollis, Julia Hippisley-Cox, Carrol Coupland, 2024.

import sys, csv, re

codes = [{"code":"F171z00","system":"readv2"},{"code":"F374A00","system":"readv2"},{"code":"F366.00","system":"readv2"},{"code":"C109B12","system":"readv2"},{"code":"A531300","system":"readv2"},{"code":"F371100","system":"readv2"},{"code":"F375.00","system":"readv2"},{"code":"C106.12","system":"readv2"},{"code":"Fyu7.00","system":"readv2"},{"code":"F171100","system":"readv2"},{"code":"F374100","system":"readv2"},{"code":"F365.00","system":"readv2"},{"code":"F368100","system":"readv2"},{"code":"F374900","system":"readv2"},{"code":"C10EC00","system":"readv2"},{"code":"F376.00","system":"readv2"},{"code":"F368200","system":"readv2"},{"code":"F371000","system":"readv2"},{"code":"F36..00","system":"readv2"},{"code":"F170.00","system":"readv2"},{"code":"F170z00","system":"readv2"},{"code":"F360z00","system":"readv2"},{"code":"F364.00","system":"readv2"},{"code":"F373.00","system":"readv2"},{"code":"C10EC11","system":"readv2"},{"code":"F171.00","system":"readv2"},{"code":"F362.00","system":"readv2"},{"code":"F360.00","system":"readv2"},{"code":"F342400","system":"readv2"},{"code":"Fyu7000","system":"readv2"},{"code":"C10FB00","system":"readv2"},{"code":"F37..11","system":"readv2"},{"code":"Fyu7800","system":"readv2"},{"code":"C10FB11","system":"readv2"},{"code":"F377.00","system":"readv2"},{"code":"Fyu1300","system":"readv2"},{"code":"F372.11","system":"readv2"},{"code":"F372.12","system":"readv2"},{"code":"F374500","system":"readv2"},{"code":"F374200","system":"readv2"},{"code":"F374800","system":"readv2"},{"code":"F374400","system":"readv2"},{"code":"F36yz00","system":"readv2"},{"code":"F372.00","system":"readv2"},{"code":"F36z.00","system":"readv2"},{"code":"F374300","system":"readv2"},{"code":"C109B11","system":"readv2"},{"code":"F36y.00","system":"readv2"},{"code":"F367.00","system":"readv2"},{"code":"C106.13","system":"readv2"},{"code":"F368000","system":"readv2"},{"code":"F368.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('neuropathic-pain-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["xpolyneuropathy-neuropathic-pain---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["xpolyneuropathy-neuropathic-pain---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["xpolyneuropathy-neuropathic-pain---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
