.class public Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/wms/common/websocket/WebSocketHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/salesiqembed/android/tracking/UTS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WSHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;


# direct methods
.method public constructor <init>(Lcom/zoho/salesiqembed/android/tracking/UTS;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$002(Lcom/zoho/salesiqembed/android/tracking/UTS;I)I

    iget-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-static {p1}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$100(Lcom/zoho/salesiqembed/android/tracking/UTS;)Lcom/zoho/wms/common/pex/PEXConnectionHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/zoho/wms/common/pex/PEXConnectionHandler;->onDisconnect()V

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "sid"

    const-string v3, "_zldp"

    const-string v4, "_zldt"

    const-string v5, "o"

    const-string v6, "d"

    const-string v7, "zldt"

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    instance-of v8, v0, Ljava/util/ArrayList;

    if-eqz v8, :cond_9

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/Hashtable;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_4

    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/Hashtable;

    invoke-virtual {v11, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v12, 0x0

    const-string v13, "siq_session"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, v1, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-virtual {v11, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v0, v14}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$202(Lcom/zoho/salesiqembed/android/tracking/UTS;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v13, v12}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v15, "handshakekey"

    const-string v12, "zldtexpiry"

    if-nez v14, :cond_0

    :try_start_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v14, v1, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-static {v14}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$200(Lcom/zoho/salesiqembed/android/tracking/UTS;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v7, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    :try_start_4
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v12, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    :cond_0
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    const/4 v4, 0x0

    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-static {v5}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$200(Lcom/zoho/salesiqembed/android/tracking/UTS;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v4, v1, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-static {v4}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$200(Lcom/zoho/salesiqembed/android/tracking/UTS;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v12, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_1
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    :cond_2
    :goto_3
    invoke-virtual {v11, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-virtual {v11, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$302(Lcom/zoho/salesiqembed/android/tracking/UTS;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v13, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "zldp"

    iget-object v5, v1, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-static {v5}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$300(Lcom/zoho/salesiqembed/android/tracking/UTS;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    invoke-virtual {v11, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-virtual {v11, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$402(Lcom/zoho/salesiqembed/android/tracking/UTS;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v13, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "utssid"

    iget-object v5, v1, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-static {v5}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$400(Lcom/zoho/salesiqembed/android/tracking/UTS;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_4
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    :cond_5
    :goto_5
    const/4 v0, 0x2

    if-ne v10, v0, :cond_6

    iget-object v0, v1, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$200(Lcom/zoho/salesiqembed/android/tracking/UTS;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v4, "opr"

    const-string v5, "ack"

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "uvid"

    iget-object v5, v1, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-static {v5}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$200(Lcom/zoho/salesiqembed/android/tracking/UTS;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-static {v4}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$500(Lcom/zoho/salesiqembed/android/tracking/UTS;)Lcom/zoho/wms/common/websocket/WebSocket;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/zoho/wms/common/websocket/WebSocket;->write(Ljava/lang/String;)Z

    :cond_6
    const/4 v0, 0x1

    if-ne v10, v0, :cond_8

    iget-object v0, v1, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$500(Lcom/zoho/salesiqembed/android/tracking/UTS;)Lcom/zoho/wms/common/websocket/WebSocket;

    move-result-object v0

    const-string v4, "--1--"

    invoke-virtual {v0, v4}, Lcom/zoho/wms/common/websocket/WebSocket;->write(Ljava/lang/String;)Z

    goto :goto_6

    :cond_7
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    :cond_8
    :goto_6
    iget-object v0, v1, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$100(Lcom/zoho/salesiqembed/android/tracking/UTS;)Lcom/zoho/wms/common/pex/PEXConnectionHandler;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/zoho/wms/common/pex/PEXConnectionHandler;->onMessage(Ljava/util/Hashtable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    return-void
.end method

.method public onOpen()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$002(Lcom/zoho/salesiqembed/android/tracking/UTS;I)I

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTS;->access$100(Lcom/zoho/salesiqembed/android/tracking/UTS;)Lcom/zoho/wms/common/pex/PEXConnectionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/zoho/wms/common/pex/PEXConnectionHandler;->onConnect()V

    return-void
.end method
