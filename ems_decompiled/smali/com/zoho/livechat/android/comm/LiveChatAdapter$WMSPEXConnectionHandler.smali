.class public Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/wms/common/pex/PEXConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/comm/LiveChatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WMSPEXConnectionHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$800(Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;->schedule()V

    return-void
.end method

.method private schedule()V
    .locals 4

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {v0}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$202(Ljava/util/Timer;)Ljava/util/Timer;

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler$1;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler$1;-><init>(Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;)V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$900()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$300()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public onBeforeConnect()V
    .locals 0

    return-void
.end method

.method public onConnect()V
    .locals 2

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    invoke-static {v0}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$002(Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;)Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$102(Z)Z

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    :cond_0
    invoke-static {v0}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$302(I)I

    const-string v0, "PEX | CONNECT"

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->DISCONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    invoke-static {v0}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$002(Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;)Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    const-string v0, "PEX | DISCONNECTED"

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$400()Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->onDisconnect()V

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$500()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->RECONNECT:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    invoke-static {v0}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$002(Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;)Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$100()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$500()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$600()Lcom/zoho/wms/common/pex/PEX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEX;->isHold()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$102(Z)Z

    invoke-direct {p0}, Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;->schedule()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessage(Ljava/util/Hashtable;)V
    .locals 8

    const-string v0, "PEX | Data: "

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/String;)V

    const-string v0, "mtype"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "msg"

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    const-string v0, "xa"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "sid"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const/4 v3, 0x0

    const-string v4, "t"

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "stime"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$1100()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "zuid"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "wmsid"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "accesskey"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "screenname"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "embeduname"

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$400()Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->onConnect()V

    goto/16 :goto_0

    :cond_3
    const/4 v2, -0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    sget-object p1, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    invoke-static {p1}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$002(Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;)Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    invoke-static {v3}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$102(Z)Z

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    :cond_4
    invoke-static {v3}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$302(I)I

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$400()Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->onReconnect()V

    goto/16 :goto_0

    :cond_5
    const/4 v2, -0x4

    if-ne v0, v2, :cond_7

    sget-object p1, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    invoke-static {p1}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$002(Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;)Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    invoke-static {v3}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$102(Z)Z

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    :cond_6
    invoke-static {v3}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$302(I)I

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$400()Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->onNetworkUp()V

    goto/16 :goto_0

    :cond_7
    const/4 v2, -0x5

    if-ne v0, v2, :cond_9

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$502(Z)Z

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$200()Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    :cond_8
    invoke-static {v3}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$302(I)I

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$400()Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->onDisconnect()V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$400()Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->onCustomMessage(Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_a
    const/16 v2, 0xc

    if-ne v0, v2, :cond_b

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$400()Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->onTextMessage(Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_b
    const/16 v2, 0x14

    if-ne v0, v2, :cond_c

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$400()Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->onAttachmentMessage(Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_c
    const/16 v2, 0x68

    if-ne v0, v2, :cond_d

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$400()Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->onTyping(Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_d
    const/16 v2, 0x69

    if-ne v0, v2, :cond_e

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$400()Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->onIdle(Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_e
    const/16 v2, 0x6e

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    if-ne v0, v2, :cond_f

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$400()Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->onTextEntered(Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_f
    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$400()Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->onMessage(ILjava/util/Hashtable;)V

    :goto_0
    return-void
.end method
