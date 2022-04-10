%% ʹ��Apriori�㷨�ھ��������
function assAnalysis(flagL, star)
if flagL == 1
    inputfile = 'G:\workspace\ws_matlab\ws_math2\txt\hairdryer_txt\hairdryer'+string(star)+'.txt'; % ������������������
    outputfile='G:\workspace\ws_matlab\ws_math2\txt\hairdryer_txt\as.txt';% ���ת����0,1�����ļ�
    rulefile = 'G:\workspace\ws_matlab\ws_math2\rule\hairdryer\hairdryerRule'+string(star)+'.txt'; % ��������ļ�
elseif flagL == 2
    inputfile = 'G:\workspace\ws_matlab\ws_math2\txt\microwave_txt\microwave'+string(star)+'.txt'; % ������������������
    outputfile='G:\workspace\ws_matlab\ws_math2\txt\microwave_txt\as.txt';% ���ת����0,1�����ļ�
    rulefile = 'G:\workspace\ws_matlab\ws_math2\rule\microwave\microwaveRule'+string(star)+'.txt'; % ��������ļ�
elseif flagL == 3
    inputfile = 'G:\workspace\ws_matlab\ws_math2\txt\pacifier_txt\pacifier'+string(star)+'.txt'; % ������������������
    outputfile='G:\workspace\ws_matlab\ws_math2\txt\pacifier_txt\as.txt';% ���ת����0,1�����ļ�
    rulefile = 'G:\workspace\ws_matlab\ws_math2\rule\pacifier\pacifierRule'+string(star)+'.txt'; % ��������ļ�
elseif flagL == 4
    inputfile = 'G:\workspace\ws_matlab\ws_math2\txt\lunwen'+string(star)+'.txt'; % ������������������
    outputfile='G:\workspace\ws_matlab\ws_math2\txt\as.txt';% ���ת����0,1�����ļ�
    rulefile = 'G:\workspace\ws_matlab\ws_math2\rule\lunwenRule'+string(star)+'.txt'; % ��������ļ�

end
minSup = 0.01; % ��С֧�ֶ�
minConf = 0.8;% ��С���Ŷ�
nRules = 800;% �����������
sortFlag = 1;% ����֧�ֶ�����

%% ����ת������ ��������ת��Ϊ0,1�����Զ��庯��
[transactions,code] = trans2matrix(inputfile,outputfile,','); 

%% ����Apriori���������㷨���Զ��庯��
[Rules,FreqItemsets] = findRules(transactions, minSup, minConf, nRules, sortFlag, code, rulefile);

disp('Apriori�㷨�ھ��Ʒ��������������ɣ�');
