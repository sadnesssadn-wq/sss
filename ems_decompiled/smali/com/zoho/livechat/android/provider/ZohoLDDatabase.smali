.class public Lcom/zoho/livechat/android/provider/ZohoLDDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/provider/ZohoLDDatabase$OldTables;,
        Lcom/zoho/livechat/android/provider/ZohoLDDatabase$Tables;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "siq_mobilisten.db"

.field private static final DATABASE_VERSION:I = 0x5


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "siq_mobilisten.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/zoho/livechat/android/provider/ZohoLDDatabase;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/zoho/livechat/android/provider/ZohoLDDatabase;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE SIQ_CONVERSATIONS (_id INTEGER PRIMARY KEY AUTOINCREMENT, CHATID TEXT , VISITORID TEXT , VISITID TEXT , ATTENDER TEXT , TIME LONG not null, DEPTID TEXT, QUESTION TEXT, ATTENDER_IMGKEY TEXT, LASTMSG TEXT, ISBOTATTENDER INT, LMTIME TEXT, ATTENDER_ID TEXT, ATTENDER_EMAIL TEXT, DEPTNAME TEXT, DRAFT TEXT, SHOW_FEEDBACK INT, SHOW_CONTINUE_CHAT INT, STATUS INT not null)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, " CREATE TABLE SIQ_MESSAGES (_id INTEGER PRIMARY KEY AUTOINCREMENT, CHATID TEXT not null, STIME LONG not null, CTIME LONG , TYPE INT not null, TEXT TEXT , MSGID TEXT , SENDER TEXT not null, DNAME TEXT , META TEXT , MSGMETA TEXT , RESPONDED_VALUE TEXT , IS_BOT INT , STATUS INT not null)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE SIQ_NOTIFICATIONS (_id INTEGER PRIMARY KEY AUTOINCREMENT, CHATID TEXT          , SENDER TEXT          , DNAME TEXT          , TIMEUID TEXT \t\t   , GROUPID TEXT \t\t   , TYPE INT  not null, MESSAGE TEXT  not null, NAVLNK TEXT          , IMGURL TEXT          , STIME LONG not null)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE SIQ_ARTICLE_DEPTS (_id INTEGER PRIMARY KEY AUTOINCREMENT, COUNT INT          , DEPT_ID TEXT  unique not null, DEPT_NAME TEXT not null)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE SIQ_ARTICLES (_id INTEGER PRIMARY KEY AUTOINCREMENT, ARTICLE_ID TEXT unique not null , CATEGORY_ID TEXT , CATEGORY_NAME TEXT , VISITORS_VIEWED INT , USAGE_COUNT INT , LIKES INT , DISLIKES INT , DEPT_ID TEXT , CTIME LONG , MTIME LONG , ARTICLE_MESSAGE TEXT , LAST_SEARCH_TIME TEXT , LAST_VIEWED_TIME TEXT , RATED_TYPE INT , ARTICLE_INFO TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE SIQ_ARTICLES_SYNC (_id INTEGER PRIMARY KEY AUTOINCREMENT, DEPT_ID TEXT , LAST_SYNC_TIME TEXT , CLIENT_CRC TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 19

    move-object/from16 v1, p1

    move/from16 v0, p2

    const-string v2, "STATUS"

    const-string v3, "CHATID"

    const-string v4, "DEPTID"

    const/4 v5, 0x2

    if-ne v0, v5, :cond_a

    invoke-virtual/range {p0 .. p1}, Lcom/zoho/livechat/android/provider/ZohoLDDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/zoho/livechat/android/provider/ZohoLDDatabase;->context:Landroid/content/Context;

    const/4 v7, 0x0

    const-string v8, "siq_session"

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v7, "visid"

    const-string v8, "resend"

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "chatid"

    invoke-interface {v0, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "attenderid"

    const-string v10, "NA"

    invoke-interface {v0, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    const-string v11, ""

    const/4 v12, 0x0

    if-eqz v10, :cond_0

    const-string v10, "fetch_messages"

    invoke-static {v10, v11}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object v10, v12

    move-object v13, v10

    goto :goto_0

    :cond_0
    const/4 v5, 0x5

    const-string v10, "attname"

    invoke-interface {v0, v10, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "attenderemail"

    invoke-interface {v0, v13, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_0
    const-string v14, "ques"

    invoke-interface {v0, v14, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :try_start_1
    const-string v12, "SELECT * FROM ldchathistory WHERE CHATID = \'"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\'"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const/4 v15, 0x0

    :try_start_2
    invoke-virtual {v1, v12, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "VISID"

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v6, "DOC"

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 p3, v12

    :try_start_4
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v12, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v3

    const-string v3, "VISITORID"

    invoke-virtual {v12, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "VISITID"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "TIME"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v12, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v12, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "QUESTION"

    invoke-virtual {v12, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ISBOTATTENDER"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v10, :cond_1

    const-string v3, "ATTENDER_ID"

    invoke-virtual {v12, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ATTENDER"

    invoke-virtual {v12, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ATTENDER_EMAIL"

    invoke-virtual {v12, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "SIQ_CONVERSATIONS"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v3, 0x0

    cmp-long v7, v5, v3

    if-lez v7, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "activechat_pkid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_2
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM ldchatmsg WHERE CHATID = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' AND TYPE = \'0\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "DOM"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v6, v18

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "STIME"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "CTIME"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "TYPE"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "TEXT"

    invoke-virtual {v5, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "annonid"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "SENDER"

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v4, "$12212"

    :goto_1
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "DNAME"

    const-string v6, "livechatname"

    invoke-interface {v0, v6, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "SIQ_MESSAGES"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :try_start_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v12, v3

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v12, v3

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v4

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v4

    goto :goto_3

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    :goto_2
    move-object v12, v2

    goto :goto_5

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    :goto_3
    move-object v12, v2

    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v12, :cond_7

    :try_start_a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_3
    move-exception v0

    :goto_5
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    move-object/from16 v12, p3

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v12, p3

    goto :goto_9

    :cond_6
    move-object/from16 p3, v12

    :cond_7
    :goto_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object/from16 p3, v12

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 p3, v12

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v2, v15

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v2, v15

    goto :goto_8

    :catchall_7
    move-exception v0

    const/4 v2, 0x0

    :goto_7
    move-object v12, v2

    goto :goto_a

    :catch_6
    move-exception v0

    const/4 v2, 0x0

    :goto_8
    move-object v12, v2

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object v2, v12

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v2, v12

    :goto_9
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_9
    move-exception v0

    :goto_a
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :cond_9
    :goto_b
    const-string v0, "DROP TABLE IF EXISTS ldchatmsg"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS ldchathistory"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS ldchatpush"

    goto :goto_c

    :cond_a
    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_c

    goto :goto_d

    :cond_b
    const-string v0, "CREATE TABLE SIQ_ARTICLE_DEPTS (_id INTEGER PRIMARY KEY AUTOINCREMENT, COUNT INT          , DEPT_ID TEXT  unique not null, DEPT_NAME TEXT not null)"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE SIQ_ARTICLES (_id INTEGER PRIMARY KEY AUTOINCREMENT, ARTICLE_ID TEXT unique not null , CATEGORY_ID TEXT , CATEGORY_NAME TEXT , VISITORS_VIEWED INT , USAGE_COUNT INT , LIKES INT , DISLIKES INT , DEPT_ID TEXT , CTIME LONG , MTIME LONG , ARTICLE_MESSAGE TEXT , LAST_SEARCH_TIME TEXT , LAST_VIEWED_TIME TEXT , RATED_TYPE INT , ARTICLE_INFO TEXT )"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE SIQ_ARTICLES_SYNC (_id INTEGER PRIMARY KEY AUTOINCREMENT, DEPT_ID TEXT , LAST_SYNC_TIME TEXT , CLIENT_CRC TEXT )"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE SIQ_CONVERSATIONS ADD DEPTNAME TEXT"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_c
    const-string v0, "ALTER TABLE SIQ_CONVERSATIONS ADD DRAFT TEXT"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE SIQ_CONVERSATIONS ADD SHOW_FEEDBACK TEXT"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE SIQ_CONVERSATIONS ADD SHOW_CONTINUE_CHAT TEXT"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE SIQ_MESSAGES ADD IS_BOT INT"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE SIQ_MESSAGES ADD MSGMETA TEXT"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE SIQ_MESSAGES ADD RESPONDED_VALUE TEXT"

    :goto_c
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_d
    return-void
.end method
