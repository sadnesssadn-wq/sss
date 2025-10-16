.class public final enum Lcom/zoho/livechat/android/provider/CursorUtility;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zoho/livechat/android/provider/CursorUtility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zoho/livechat/android/provider/CursorUtility;

.field public static final enum INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zoho/livechat/android/provider/CursorUtility;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/zoho/livechat/android/provider/CursorUtility;

    aput-object v0, v1, v2

    sput-object v1, Lcom/zoho/livechat/android/provider/CursorUtility;->$VALUES:[Lcom/zoho/livechat/android/provider/CursorUtility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zoho/livechat/android/provider/CursorUtility;
    .locals 1

    const-class v0, Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zoho/livechat/android/provider/CursorUtility;

    return-object p0
.end method

.method public static values()[Lcom/zoho/livechat/android/provider/CursorUtility;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->$VALUES:[Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v0}, [Lcom/zoho/livechat/android/provider/CursorUtility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zoho/livechat/android/provider/CursorUtility;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p3
.end method

.method public executeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContentProvider;->dbHelper:Lcom/zoho/livechat/android/provider/ZohoLDDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContentProvider;->dbHelper:Lcom/zoho/livechat/android/provider/ZohoLDDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    return-void
.end method

.method public insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 8

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatMessage;->contenturi:Landroid/net/Uri;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getChid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CHATID"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "STIME"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "STATUS"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SENDER"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "META"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getDname()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getDname()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DNAME"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getCtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, "CTIME"

    cmp-long v7, v2, v4

    if-eqz v7, :cond_4

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getCtime()J

    move-result-wide v2

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->isBot()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "IS_BOT"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMetaInfo()Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMetaInfo()Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSGMETA"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getRespondedValue()Ljava/util/Hashtable;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getRespondedValue()Ljava/util/Hashtable;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RESPONDED_VALUE"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz p3, :cond_8

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, ""

    if-eqz p3, :cond_7

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getChid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p3, v3

    invoke-static {v5}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v4

    const-string p2, "CHATID =? AND ( MSGID =? OR STIME =? )"

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    new-array p3, v4, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getChid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v2

    const-string p2, "CHATID =? AND STIME =? "

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :goto_1
    return-void
.end method

.method public insertPushNotification(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$PushNotification;->contenturi:Landroid/net/Uri;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_0

    const-string v2, "CHATID"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "SENDER"

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    const-string p2, "DNAME"

    invoke-virtual {v1, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p11, :cond_3

    const-string p2, "STIME"

    invoke-virtual {v1, p2, p11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    if-eqz p6, :cond_4

    const-string p2, "GROUPID"

    invoke-virtual {v1, p2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p7, :cond_5

    const-string p2, "TIMEUID"

    invoke-virtual {v1, p2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "TYPE"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "MESSAGE"

    if-eqz p8, :cond_6

    invoke-virtual {v1, p2, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz p9, :cond_7

    const-string p3, "NAVLNK"

    invoke-virtual {v1, p3, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz p10, :cond_8

    invoke-virtual {v1, p2, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public syncArticleDepartments(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;)V
    .locals 5

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$ArticleDepts;->contenturi:Landroid/net/Uri;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->getDeptId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEPT_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->getDeptName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEPT_NAME"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->getCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v3, "COUNT"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v2, :cond_1

    const/4 p2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from SIQ_ARTICLE_DEPTS WHERE DEPT_ID = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v4, v3}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-nez v4, :cond_0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, p2

    const-string p2, "DEPT_ID=?"

    invoke-virtual {p1, v0, v1, p2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public syncArticles(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQArticle;)V
    .locals 5

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$Articles;->contenturi:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQArticle;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from SIQ_ARTICLES WHERE ARTICLE_ID = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v4, v3}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-nez v4, :cond_0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v2

    const-string p2, "ARTICLE_ID=?"

    invoke-virtual {p1, v0, v1, p2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public syncArticlesClientCrc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$ArticlesSync;->contenturi:Landroid/net/Uri;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "DEPT_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "LAST_SYNC_TIME"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "CLIENT_CRC"

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM SIQ_ARTICLES_SYNC WHERE DEPT_ID = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v3, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-nez v3, :cond_0

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 p1, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, p3

    const-string p1, "DEPT_ID=?"

    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    return-void
.end method

.method public syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V
    .locals 8

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "CHATID"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "VISITORID"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "TIME"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUS"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "ATTENDER"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "QUESTION"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderImgkey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "ATTENDER_IMGKEY"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getLastmsginfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "LASTMSG"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getLastmsgtime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "LMTIME"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->isBotAttender()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v3, "ISBOTATTENDER"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitid()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_8

    const-string v3, "VISITID"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDeptid()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_9

    const-string v3, "DEPTID"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDeptname()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_a

    const-string v3, "DEPTNAME"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderid()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderid()Ljava/lang/String;

    move-result-object p3

    const-string v3, "ATTENDER_ID"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderEmail()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_c

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderEmail()Ljava/lang/String;

    move-result-object p3

    const-string v3, "ATTENDER_EMAIL"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDraft()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_d

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDraft()Ljava/lang/String;

    move-result-object p3

    const-string v3, "DRAFT"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->canShowFeedback()Z

    move-result p3

    const-string v3, "SHOW_FEEDBACK"

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-eqz p3, :cond_e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    :cond_e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_0
    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->canShowContinueChat()Z

    move-result p3

    const-string v3, "SHOW_CONTINUE_CHAT"

    if-eqz p3, :cond_f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_1

    :cond_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_1
    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v2, :cond_11

    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from SIQ_CONVERSATIONS WHERE CHATID = \'"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v3, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v3, p3}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v3, :cond_10

    :try_start_1
    const-string v3, "_id"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x1

    goto :goto_2

    :catch_0
    move-exception p3

    const/4 v3, 0x1

    goto :goto_3

    :cond_10
    const/4 v3, 0x0

    :goto_2
    :try_start_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p3

    goto :goto_3

    :catch_2
    move-exception p3

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_11
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_12

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_5

    :cond_12
    new-array p3, v7, [Ljava/lang/String;

    aput-object v2, p3, v4

    const-string v2, "CHATID=?"

    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_5
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p1

    if-lez p1, :cond_13

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_13

    const-wide/16 p1, -0x1

    cmp-long p3, v5, p1

    if-eqz p3, :cond_13

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->setActiveChatPKID(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "STIME"

    const-string v3, "CHATID = \'"

    const-string v4, " = \'"

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getChid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' AND ( "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MSGID"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'  OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\' )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getChid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from SIQ_MESSAGES WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v2, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getCtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    const-string v2, "CTIME"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setCtime(J)V

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    return-void
.end method

.method public updateRecentArticleSearch(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$Articles;->contenturi:Landroid/net/Uri;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v2

    const-string v3, "LAST_SEARCH_TIME"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "ARTICLE_ID=?"

    invoke-virtual {v2, v0, v1, p1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
