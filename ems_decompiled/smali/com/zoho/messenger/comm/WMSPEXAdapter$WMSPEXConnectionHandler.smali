.class public Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/wms/common/pex/PEXConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/messenger/comm/WMSPEXAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WMSPEXConnectionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zoho/messenger/comm/WMSPEXAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeConnect()V
    .locals 1

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$100()Lcom/zoho/messenger/api/handler/ConnectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/messenger/api/handler/ConnectionHandler;->onBeforeconnect()V

    return-void
.end method

.method public onConnect()V
    .locals 2

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->CONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    invoke-static {v0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$202(Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;)Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isreconnect:Z

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    :cond_0
    sput v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->recvar:I

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$100()Lcom/zoho/messenger/api/handler/ConnectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/messenger/api/handler/ConnectionHandler;->onOpen()V

    return-void
.end method

.method public onDisconnect()V
    .locals 4

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->DISCONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    invoke-static {v0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$202(Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;)Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$400()Lcom/zoho/wms/common/pex/PEX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEX;->getCredentials()Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/zoho/wms/common/pex/credentials/OauthToken;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/zoho/wms/common/pex/credentials/OauthToken;

    invoke-virtual {v1}, Lcom/zoho/wms/common/pex/credentials/OauthToken;->unscheduleTask()V

    :cond_0
    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$100()Lcom/zoho/messenger/api/handler/ConnectionHandler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$500()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$600()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/zoho/wms/common/pex/credentials/OauthToken;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zoho/wms/common/pex/credentials/OauthToken;

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/credentials/OauthToken;->clearInstance()V

    :cond_1
    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$100()Lcom/zoho/messenger/api/handler/ConnectionHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zoho/messenger/api/handler/ConnectionHandler;->onDisconnect(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$100()Lcom/zoho/messenger/api/handler/ConnectionHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/zoho/messenger/api/handler/ConnectionHandler;->onDisconnect(Z)V

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->RECONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    invoke-static {v0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$202(Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;)Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    :cond_3
    :goto_0
    invoke-static {v3}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$502(Z)Z

    :try_start_0
    sget-boolean v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isreconnect:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$600()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$400()Lcom/zoho/wms/common/pex/PEX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEX;->isHold()Z

    move-result v0

    if-nez v0, :cond_4

    sput-boolean v2, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isreconnect:Z

    invoke-virtual {p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler;->schedule()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onMessage(Ljava/util/Hashtable;)V
    .locals 42

    move-object/from16 v1, p1

    const-string v2, "mtype"

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$100()Lcom/zoho/messenger/api/handler/ConnectionHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$100()Lcom/zoho/messenger/api/handler/ConnectionHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/messenger/api/handler/ConnectionHandler;->isAppinBackground()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->setNoReconnect()V

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->hold()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    const-string v4, "uname"

    const-string v5, "nname"

    const-string v6, "msg"

    if-nez v3, :cond_7

    :try_start_3
    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$800()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-eqz v9, :cond_1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$802(Ljava/lang/Long;)Ljava/lang/Long;

    :cond_1
    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$100()Lcom/zoho/messenger/api/handler/ConnectionHandler;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const-string v2, "orgid"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    const-string v2, "rsid"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    const-string v2, "deprecated"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "deprecated"

    invoke-virtual {v13, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v13, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v2, "xa"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$902(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "emailid"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v3, "emailid"

    invoke-virtual {v13, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v2, "sid"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "t"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v3, "t"

    invoke-virtual {v13, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v2, "ttl"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v2, "ttl"

    invoke-virtual {v13, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$100()Lcom/zoho/messenger/api/handler/ConnectionHandler;

    move-result-object v7

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1000()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$900()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v7 .. v13}, Lcom/zoho/messenger/api/handler/ConnectionHandler;->onConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto/16 :goto_18

    :cond_7
    const/4 v7, -0x3

    const/4 v8, 0x0

    if-ne v3, v7, :cond_9

    sget-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->CONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    invoke-static {v1}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$202(Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;)Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    sput-boolean v8, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isreconnect:Z

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    :cond_8
    sput v8, Lcom/zoho/messenger/comm/WMSPEXAdapter;->recvar:I

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$100()Lcom/zoho/messenger/api/handler/ConnectionHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/messenger/api/handler/ConnectionHandler;->onReconnect()V

    goto/16 :goto_18

    :cond_9
    const/4 v7, -0x4

    if-ne v3, v7, :cond_b

    sget-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->CONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    invoke-static {v1}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$202(Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;)Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    sput-boolean v8, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isreconnect:Z

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    :cond_a
    sput v8, Lcom/zoho/messenger/comm/WMSPEXAdapter;->recvar:I

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$100()Lcom/zoho/messenger/api/handler/ConnectionHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/messenger/api/handler/ConnectionHandler;->onNetworkUp()V

    goto/16 :goto_18

    :cond_b
    const/16 v7, -0xb

    const/4 v9, 0x1

    if-ne v3, v7, :cond_c

    invoke-static {v9}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$502(Z)Z

    goto/16 :goto_18

    :cond_c
    sget-object v7, Lcom/zoho/messenger/api/constants/MType;->WM_JOIN:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v7}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-string v10, "title"

    const-string v11, "addinfo"

    const-string v12, "chid"

    const-string v13, "ctype"

    if-ne v3, v7, :cond_f

    :try_start_4
    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "customgroup"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "history"

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "pcount"

    invoke-virtual {v1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "blockpnsinterval"

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "users"

    invoke-virtual {v1, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    const-string v12, "context"

    invoke-virtual {v1, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v12, "context"

    invoke-virtual {v11, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-eqz v4, :cond_e

    const-string v1, "customgroup"

    invoke-virtual {v11, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1100()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/zoho/messenger/api/handler/ChatInterface;

    move-object v13, v3

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v9

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move-object/from16 v19, v7

    move-object/from16 v20, v11

    invoke-interface/range {v12 .. v20}, Lcom/zoho/messenger/api/handler/ChatInterface;->onJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_1

    :cond_f
    sget-object v7, Lcom/zoho/messenger/api/constants/MType;->WM_TXT_MSG:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v7}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string v14, "lmsgtime"

    const-string v15, "h"

    const-string v9, "msglist"

    const-string v8, "nc"

    move-object/from16 v18, v10

    const-string v10, "dname"

    move-object/from16 v19, v5

    const-string v5, "time"

    if-ne v3, v7, :cond_18

    :try_start_5
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    goto :goto_2

    :cond_10
    const/4 v8, 0x0

    :goto_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-virtual {v1, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/ArrayList;

    goto :goto_3

    :cond_11
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Hashtable;

    invoke-virtual {v9, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 p1, v1

    const-string v1, "sender"

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v3

    const-string v3, "meta"

    invoke-virtual {v9, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v34, v10

    const-string v10, "msgid"

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v35, v12

    const-string v12, "msguid"

    invoke-virtual {v9, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v36, v6

    const-string v6, "m"

    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v37, v6

    move-object/from16 v6, v19

    check-cast v6, Ljava/lang/String;

    move-object/from16 v19, v3

    const-string v3, "history"

    invoke-virtual {v9, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-virtual {v9, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    :cond_12
    move-object/from16 v39, v2

    move/from16 v2, v18

    move-object/from16 v40, v5

    invoke-virtual {v9, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v4, v14, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    if-eqz v6, :cond_14

    invoke-virtual {v4, v15, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v5, "temp_info"

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "temp_info"

    const-string v6, "temp_info"

    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {v9, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1100()Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v41, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_17

    sget-object v11, Lcom/zoho/messenger/api/constants/MType;->WM_TXT_MSG:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v11}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v11

    if-ne v2, v11, :cond_16

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v20, v9

    check-cast v20, Lcom/zoho/messenger/api/handler/ChatInterface;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v21, v13

    move-object/from16 v22, v1

    move-object/from16 v23, v16

    move-object/from16 v24, v3

    move-object/from16 v25, v17

    move-object/from16 v26, v10

    move-object/from16 v27, v12

    move-object/from16 v28, v38

    move-object/from16 v30, v5

    move-object/from16 v31, v19

    move-object/from16 v32, v37

    move-object/from16 v33, v4

    invoke-interface/range {v20 .. v33}, Lcom/zoho/messenger/api/handler/ChatInterface;->onMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_5

    :cond_16
    sget-object v11, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_ATTACH:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v11}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v11

    if-ne v2, v11, :cond_17

    const-string v11, "mod"

    invoke-virtual {v9, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v20, v11

    check-cast v20, Lcom/zoho/messenger/api/handler/ChatInterface;

    move-object/from16 v21, v13

    move-object/from16 v22, v1

    move-object/from16 v23, v16

    move-object/from16 v24, v17

    move-object/from16 v25, v10

    move-object/from16 v26, v12

    move-object/from16 v27, v3

    move-object/from16 v28, v9

    move/from16 v29, v8

    move-object/from16 v30, v38

    move-object/from16 v31, v5

    move-object/from16 v32, v37

    move-object/from16 v33, v4

    invoke-interface/range {v20 .. v33}, Lcom/zoho/messenger/api/handler/ChatInterface;->onAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    goto :goto_6

    :cond_17
    move-object/from16 v1, p1

    move v3, v2

    move-object/from16 v10, v34

    move-object/from16 v12, v35

    move-object/from16 v6, v36

    move-object/from16 v2, v39

    move-object/from16 v5, v40

    move-object/from16 v11, v41

    goto/16 :goto_4

    :cond_18
    move-object/from16 v40, v5

    move-object/from16 v36, v6

    move-object/from16 v34, v10

    move-object/from16 v41, v11

    move-object/from16 v35, v12

    sget-object v2, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_ATTACH:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v2}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-ne v3, v2, :cond_1e

    :try_start_6
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v5, v36

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    goto :goto_7

    :cond_19
    const/4 v8, 0x0

    :goto_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v1, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/ArrayList;

    goto :goto_8

    :cond_1a
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    move-object/from16 v6, v35

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "sender"

    invoke-virtual {v4, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v10, v40

    invoke-virtual {v4, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "mod"

    invoke-virtual {v4, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "m"

    invoke-virtual {v4, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p1, v1

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    move-object/from16 v40, v10

    const-string v10, "history"

    invoke-virtual {v4, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v35, v6

    const-string v6, "msgid"

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v16, v13

    const-string v13, "msguid"

    invoke-virtual {v4, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v17, v11

    invoke-virtual {v4, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1b

    invoke-virtual {v2, v14, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    if-eqz v1, :cond_1c

    invoke-virtual {v2, v15, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    move-object/from16 v11, v41

    invoke-virtual {v4, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v36, v14

    move-object/from16 v14, v34

    invoke-virtual {v4, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v34, v15

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1100()Ljava/util/HashMap;

    move-result-object v15

    move-object/from16 v41, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-eqz v11, :cond_1d

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v20, v15

    check-cast v20, Lcom/zoho/messenger/api/handler/ChatInterface;

    move-object/from16 v21, v7

    move-object/from16 v22, v9

    move-object/from16 v23, v18

    move-object/from16 v24, v4

    move-object/from16 v25, v6

    move-object/from16 v26, v13

    move-object/from16 v27, v10

    move-object/from16 v28, v12

    move/from16 v29, v8

    move-object/from16 v30, v17

    move-object/from16 v31, v1

    move-object/from16 v32, v16

    move-object/from16 v33, v2

    invoke-interface/range {v20 .. v33}, Lcom/zoho/messenger/api/handler/ChatInterface;->onAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_a

    :cond_1d
    move-object/from16 v1, p1

    move-object/from16 v15, v34

    move-object/from16 v34, v14

    move-object/from16 v14, v36

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v1, v0

    :goto_b
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_18

    :cond_1e
    move-object/from16 v14, v34

    move-object/from16 v5, v36

    sget-object v2, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_USERSTATUS:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v2}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v2

    if-ne v3, v2, :cond_21

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    move-object/from16 v2, v35

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "scode"

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "smsg"

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "status"

    invoke-virtual {v1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1100()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zoho/messenger/api/handler/ChatInterface;

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    new-instance v9, Lcom/zoho/messenger/api/constants/UserStatus;

    invoke-direct {v9, v5, v6}, Lcom/zoho/messenger/api/constants/UserStatus;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2, v3, v4, v9}, Lcom/zoho/messenger/api/handler/ChatInterface;->onMemberIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/messenger/api/constants/UserStatus;)V

    goto :goto_c

    :cond_20
    const-string v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    new-instance v9, Lcom/zoho/messenger/api/constants/UserStatus;

    invoke-direct {v9, v5, v6}, Lcom/zoho/messenger/api/constants/UserStatus;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2, v3, v4, v9}, Lcom/zoho/messenger/api/handler/ChatInterface;->onMemberOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/messenger/api/constants/UserStatus;)V

    goto :goto_c

    :cond_21
    move-object/from16 v2, v35

    sget-object v6, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_MEMBERADD:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v6}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    const-string v7, "zuid"

    if-ne v3, v6, :cond_23

    :try_start_8
    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v6, v40

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "opruser"

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    const-string v6, "pcount"

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_22
    move-object/from16 v8, v19

    invoke-virtual {v5, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "users"

    invoke-virtual {v1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1100()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v20, v8

    check-cast v20, Lcom/zoho/messenger/api/handler/ChatInterface;

    move-object/from16 v21, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v7

    move-object/from16 v25, v6

    move-object/from16 v26, v3

    invoke-interface/range {v20 .. v26}, Lcom/zoho/messenger/api/handler/ChatInterface;->onMembersAdded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_23
    move-object/from16 v8, v19

    move-object/from16 v6, v40

    sget-object v9, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_MEMBERDELETE:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v9}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v9

    if-ne v3, v9, :cond_25

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "opruser"

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    const-string v6, "pcount"

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_24
    invoke-virtual {v5, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "users"

    invoke-virtual {v1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1100()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lcom/zoho/messenger/api/handler/ChatInterface;

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v6

    move-object/from16 v20, v3

    invoke-interface/range {v14 .. v20}, Lcom/zoho/messenger/api/handler/ChatInterface;->onMembersDeleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_25
    sget-object v9, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_INVITE:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v9}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v9

    if-ne v3, v9, :cond_26

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1100()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zoho/messenger/api/handler/ChatInterface;

    invoke-interface {v5, v2, v3, v4}, Lcom/zoho/messenger/api/handler/ChatInterface;->onInvite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_26
    sget-object v9, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_REMOVE:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v9}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v9

    if-ne v3, v9, :cond_27

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1100()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zoho/messenger/api/handler/ChatInterface;

    invoke-interface {v5, v2, v3, v4}, Lcom/zoho/messenger/api/handler/ChatInterface;->onRemove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_27
    sget-object v9, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_INFOMSG:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v9}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v9

    if-ne v3, v9, :cond_29

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    const-string v4, "mode"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v9, v18

    invoke-virtual {v3, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "access"

    invoke-virtual {v3, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "opruser"

    invoke-virtual {v3, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Hashtable;

    invoke-virtual {v11, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v12, v41

    invoke-virtual {v1, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "userslist"

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1100()Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-eqz v11, :cond_41

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_41

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v19, v13

    check-cast v19, Lcom/zoho/messenger/api/handler/ChatInterface;

    if-eqz v4, :cond_28

    const-string v13, "CALLNOTIFICATION"

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_28

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v10

    move-object/from16 v23, v9

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v1

    move-object/from16 v28, v12

    invoke-interface/range {v19 .. v28}, Lcom/zoho/messenger/api/handler/ChatInterface;->onInfoMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_11

    :cond_28
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v10

    move-object/from16 v23, v9

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v6

    move-object/from16 v27, v1

    move-object/from16 v28, v12

    invoke-interface/range {v19 .. v28}, Lcom/zoho/messenger/api/handler/ChatInterface;->onInfoMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_11

    :cond_29
    move-object/from16 v9, v18

    sget-object v2, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_TYPING:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v2}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    const/4 v8, 0x2

    const-string v10, "oc"

    const/4 v11, 0x4

    const-string v12, ":"

    if-ne v3, v2, :cond_2a

    :try_start_9
    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    aget-object v1, v1, v8

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1100()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zoho/messenger/api/handler/ChatInterface;

    invoke-interface {v4, v2, v1}, Lcom/zoho/messenger/api/handler/ChatInterface;->onTyping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_2a
    sget-object v2, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_IDLE:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v2}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v2

    if-ne v3, v2, :cond_2b

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    aget-object v1, v1, v8

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1100()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zoho/messenger/api/handler/ChatInterface;

    invoke-interface {v4, v2, v1}, Lcom/zoho/messenger/api/handler/ChatInterface;->onIdle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_2b
    sget-object v2, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_TXTENTRD:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v2}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v2

    if-ne v3, v2, :cond_2c

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    aget-object v1, v1, v8

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1100()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zoho/messenger/api/handler/ChatInterface;

    invoke-interface {v4, v2, v1}, Lcom/zoho/messenger/api/handler/ChatInterface;->onTextEntered(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_2c
    sget-object v2, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_TITLECHANGE:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v2}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v2

    if-ne v3, v2, :cond_2d

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    aget-object v2, v2, v8

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    invoke-virtual {v5, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1100()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_41

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zoho/messenger/api/handler/ChatInterface;

    invoke-interface {v6, v3, v2, v5, v1}, Lcom/zoho/messenger/api/handler/ChatInterface;->onTitleChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_2d
    sget-object v2, Lcom/zoho/messenger/api/constants/MType;->WM_CONTACTS_MSG:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v2}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v2

    if-ne v3, v2, :cond_33

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    const-string v4, "email"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    const-string v4, "st"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    const-string v4, "scode"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    const-string v4, "smsg"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1200()Lcom/zoho/messenger/api/handler/ContactsHandler;

    move-result-object v4

    if-eqz v4, :cond_41

    const-string v4, "-1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1200()Lcom/zoho/messenger/api/handler/ContactsHandler;

    move-result-object v6

    invoke-virtual/range {v6 .. v13}, Lcom/zoho/messenger/api/handler/ContactsHandler;->onInvite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_2e
    const-string v4, "10"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1200()Lcom/zoho/messenger/api/handler/ContactsHandler;

    move-result-object v6

    invoke-virtual/range {v6 .. v13}, Lcom/zoho/messenger/api/handler/ContactsHandler;->onAccept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_2f
    const-string v4, "-4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1200()Lcom/zoho/messenger/api/handler/ContactsHandler;

    move-result-object v6

    invoke-virtual/range {v6 .. v13}, Lcom/zoho/messenger/api/handler/ContactsHandler;->onDelete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_30
    const-string v4, "-3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1200()Lcom/zoho/messenger/api/handler/ContactsHandler;

    move-result-object v6

    invoke-virtual/range {v6 .. v13}, Lcom/zoho/messenger/api/handler/ContactsHandler;->onAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_31
    const-string v4, "-5"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1200()Lcom/zoho/messenger/api/handler/ContactsHandler;

    move-result-object v6

    invoke-virtual/range {v6 .. v13}, Lcom/zoho/messenger/api/handler/ContactsHandler;->onRemove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_32
    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1300()Lcom/zoho/messenger/api/handler/MessageHandler;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1300()Lcom/zoho/messenger/api/handler/MessageHandler;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_16
    invoke-virtual {v2, v3, v1}, Lcom/zoho/messenger/api/handler/MessageHandler;->onMessage(Ljava/lang/Integer;Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_33
    sget-object v2, Lcom/zoho/messenger/api/constants/MType;->WM_STATUS_CHANGE:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v2}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v2

    const/4 v4, 0x0

    if-ne v3, v2, :cond_35

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v2, v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v19, v2, v3

    invoke-virtual {v1, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v21, v2, v1

    const/4 v1, 0x1

    aget-object v22, v2, v1

    array-length v1, v2

    const/4 v3, 0x5

    if-ne v1, v3, :cond_34

    aget-object v4, v2, v11

    :cond_34
    move-object/from16 v23, v4

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1200()Lcom/zoho/messenger/api/handler/ContactsHandler;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1200()Lcom/zoho/messenger/api/handler/ContactsHandler;

    move-result-object v17

    move-object/from16 v18, v19

    invoke-virtual/range {v17 .. v23}, Lcom/zoho/messenger/api/handler/ContactsHandler;->onStatusChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_35
    sget-object v2, Lcom/zoho/messenger/api/constants/MType;->WM_CUSTOM_MSG:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v2}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v2

    if-ne v3, v2, :cond_36

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1300()Lcom/zoho/messenger/api/handler/MessageHandler;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1300()Lcom/zoho/messenger/api/handler/MessageHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zoho/messenger/api/handler/MessageHandler;->onCustomMessage(Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_36
    sget-object v2, Lcom/zoho/messenger/api/constants/MType;->WM_CROSSPRD_MSG:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v2}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v2

    if-ne v3, v2, :cond_37

    const-string v2, "prd"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1300()Lcom/zoho/messenger/api/handler/MessageHandler;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1300()Lcom/zoho/messenger/api/handler/MessageHandler;

    move-result-object v3

    new-instance v4, Lcom/zoho/wms/common/WmsService;

    invoke-direct {v4, v2}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1}, Lcom/zoho/messenger/api/handler/MessageHandler;->onCrossProductMessage(Lcom/zoho/wms/common/WmsService;Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_37
    sget-object v2, Lcom/zoho/messenger/api/constants/MType;->ZOHO_MSG:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v2}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v2

    if-ne v3, v2, :cond_38

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    const-string v3, "prd"

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "MSG"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v3, "URL"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    const-string v3, "URLSTRING"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    const-string v3, "CATEGORY"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    const-string v3, "SENDER"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    const-string v3, "ATTACHMENTS"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const-string v3, "PARAMS"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    const-string v3, "ID"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    const-string v3, "DNAME"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    const-string v3, "ORGS"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    const-string v3, "GROUPS"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1300()Lcom/zoho/messenger/api/handler/MessageHandler;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1300()Lcom/zoho/messenger/api/handler/MessageHandler;

    move-result-object v4

    new-instance v5, Lcom/zoho/wms/common/WmsService;

    invoke-direct {v5, v1}, Lcom/zoho/wms/common/WmsService;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v4 .. v16}, Lcom/zoho/messenger/api/handler/MessageHandler;->onZohoMessage(Lcom/zoho/wms/common/WmsService;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_38
    sget-object v2, Lcom/zoho/messenger/api/constants/MType;->WM_ACS_MSG:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v2}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v2

    if-ne v3, v2, :cond_39

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "data"

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1300()Lcom/zoho/messenger/api/handler/MessageHandler;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1300()Lcom/zoho/messenger/api/handler/MessageHandler;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/zoho/messenger/api/handler/MessageHandler;->onACSMessage(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_39
    sget-object v2, Lcom/zoho/messenger/api/constants/MType;->WM_CONTACTS_UPDATE:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v2}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v6

    if-eq v3, v6, :cond_3e

    sget-object v6, Lcom/zoho/messenger/api/constants/MType;->WM_CONTACTS_DETAILS:Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v6}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v6

    if-ne v3, v6, :cond_3a

    goto :goto_17

    :cond_3a
    const/4 v2, -0x1

    if-ne v3, v2, :cond_3b

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$400()Lcom/zoho/wms/common/pex/PEX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/wms/common/pex/PEX;->isHold()Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    if-nez v1, :cond_41

    :try_start_a
    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$400()Lcom/zoho/wms/common/pex/PEX;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/zoho/wms/common/pex/PEX;->reconnect(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_18

    :catch_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_b

    :cond_3b
    const/4 v2, -0x5

    if-ne v3, v2, :cond_3d

    const/4 v2, 0x1

    :try_start_b
    invoke-static {v2}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$602(Z)Z

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    :cond_3c
    const/4 v2, 0x0

    sput v2, Lcom/zoho/messenger/comm/WMSPEXAdapter;->recvar:I

    :cond_3d
    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1300()Lcom/zoho/messenger/api/handler/MessageHandler;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1300()Lcom/zoho/messenger/api/handler/MessageHandler;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_16

    :cond_3e
    :goto_17
    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    const-string v6, "meta"

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const-string v6, "meta"

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    const-string v6, "count"

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const-string v4, "count"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_3f
    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1200()Lcom/zoho/messenger/api/handler/ContactsHandler;

    move-result-object v1

    if-eqz v1, :cond_41

    invoke-virtual {v2}, Lcom/zoho/messenger/api/constants/MType;->getNumericType()I

    move-result v1

    if-ne v3, v1, :cond_40

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1200()Lcom/zoho/messenger/api/handler/ContactsHandler;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lcom/zoho/messenger/api/handler/ContactsHandler;->onReinit(Ljava/util/Hashtable;Ljava/lang/String;)V

    goto :goto_18

    :cond_40
    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$1200()Lcom/zoho/messenger/api/handler/ContactsHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/zoho/messenger/api/handler/ContactsHandler;->onUpdate(Ljava/util/Hashtable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_18

    :catch_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_41
    :goto_18
    return-void
.end method

.method public schedule()V
    .locals 4

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {v0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$302(Ljava/util/Timer;)Ljava/util/Timer;

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$300()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler$1;

    invoke-direct {v1, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler$1;-><init>(Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler;)V

    sget-object v2, Lcom/zoho/messenger/comm/WMSPEXAdapter;->rectime:Ljava/util/List;

    sget v3, Lcom/zoho/messenger/comm/WMSPEXAdapter;->recvar:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
