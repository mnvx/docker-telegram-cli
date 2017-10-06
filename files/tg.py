from pytg import Telegram
from pytg.utils import coroutine
import os
import sys

tg = Telegram(telegram="telegram-cli", pubkey_file="/work/tg/tg-server.pub")
receiver = tg.receiver
sender = tg.sender

sender.send_msg(sys.argv[2], sys.argv[3])


res = sender.channel_list()
print(res)

res2 = sender.history(sys.argv[1])
print(res2)