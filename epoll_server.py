
"""
epoll
重点代码
"""
from socket import *
from select import *


s = socket()
s.setsockopt(SOL_SOCKET,SO_REUSEADDR,1)
s.bind(('0.0.0.0',8888))
s.listen(3)

#创建epoll对象
ep= epoll()
#查找字典，用于通过文件描述符查找对象
#时刻与关注的IO保持一致
map = {s.fileno():s}
ep.register(s,EPOLLIN)

while True:
    #{(fd,event),()}
    events = ep.poll()  #将关注的IO提交操作系统监控
    for fd,event in events:
        #区分IO
        if fd == s.fileno():
            c,addr = map[fd].accept()
            print("Connect from ",addr)
            ep.register(c,EPOLLIN) #添加关注
            map[c.fileno()] = c  #维护字典
        else:
            data = map[fd].recv(1024).decode()
            #客户端退出
            if not data:
                ep.unregister(fd)
                del map[fd]
                continue
            print(data)
            map[fd].send(b'OK')

