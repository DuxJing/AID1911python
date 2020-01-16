"""
重点代码
"""
from socket import *
from select import *


s = socket()
s.setsockopt(SOL_SOCKET,SO_REUSEADDR,1)
s.bind(('0.0.0.0',8888))
s.listen(3)

p=poll()
#查找字典，用于通过文件描述符查找对象
#时刻与关注的IO保持一致
map = {s.fileno():s}
p.register(s,POLLIN)

while True:
    #{(fd,event),()}
    events = p.poll()  #将关注的IO提交操作系统监控
    for fd,event in events:
        #区分IO
        if fd == s.fileno():
            c,addr = map[fd].accept()
            print("Connect from ",addr)
            p.register(c,POLLIN) #添加关注
            map[c.fileno()] = c  #维护字典
        else:
            data = map[fd].recv(1024).decode()
            #客户端退出
            if not data:
                p.unregister(fd)
                del map[fd]
                continue
            print(data)
            map[fd].send(b'OK')

