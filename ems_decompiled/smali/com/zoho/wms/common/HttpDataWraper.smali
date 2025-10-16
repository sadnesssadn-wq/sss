.class public Lcom/zoho/wms/common/HttpDataWraper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    instance-of v0, p0, Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static constructJSON(Ljava/util/ArrayList;Z)Lorg/json/JSONArray;
    .locals 3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/Hashtable;

    invoke-static {v1, p1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/Hashtable;Z)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    :cond_0
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/ArrayList;Z)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_1

    :cond_1
    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v1, p1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/HashMap;Z)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const-string v2, ""

    invoke-static {v2, v1}, Lc/a/a/a/a;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static constructJSON(Ljava/util/HashMap;Z)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Hashtable;

    const-string v5, ""

    if-eqz v4, :cond_0

    invoke-static {v5, v2}, Lc/a/a/a/a;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v3, Ljava/util/Hashtable;

    invoke-static {v3, p1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/Hashtable;Z)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_1

    :cond_0
    instance-of v4, v3, Ljava/util/HashMap;

    if-eqz v4, :cond_1

    invoke-static {v5, v2}, Lc/a/a/a/a;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v3, p1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/HashMap;Z)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_1

    :cond_1
    instance-of v4, v3, Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lc/a/a/a/a;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_2

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/ArrayList;Z)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {v5, v3}, Lc/a/a/a/a;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static constructJSON(Ljava/util/Hashtable;Z)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Hashtable;

    const-string v5, ""

    if-eqz v4, :cond_0

    invoke-static {v5, v2}, Lc/a/a/a/a;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v3, Ljava/util/Hashtable;

    invoke-static {v3, p1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/Hashtable;Z)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_1

    :cond_0
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    invoke-static {v5, v2}, Lc/a/a/a/a;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/ArrayList;Z)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_1

    :cond_1
    instance-of v4, v3, Ljava/util/HashMap;

    invoke-static {v5, v2}, Lc/a/a/a/a;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_2

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v3, p1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/HashMap;Z)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {v5, v3}, Lc/a/a/a/a;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static getEvent(Ljava/lang/String;)Lcom/zoho/wms/common/WmsEvent;
    .locals 1

    new-instance v0, Lcom/zoho/wms/common/WmsEvent;

    invoke-static {p0}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    invoke-direct {v0, p0}, Lcom/zoho/wms/common/WmsEvent;-><init>(Ljava/util/Hashtable;)V

    return-object v0
.end method

.method public static getMap(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMap(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/zoho/wms/common/HttpDataWraper;->getMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/zoho/wms/common/HttpDataWraper;->getMap(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getMap(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/zoho/wms/common/HttpDataWraper;->getMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/zoho/wms/common/HttpDataWraper;->getMap(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Lorg/json/JSONObject;)Ljava/util/Hashtable;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getObject(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Lorg/json/JSONObject;)Ljava/util/Hashtable;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getObject(Lorg/json/JSONObject;)Ljava/util/Hashtable;
    .locals 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Lorg/json/JSONObject;)Ljava/util/Hashtable;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    instance-of v0, p0, Lcom/zoho/wms/common/WmsEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/zoho/wms/common/WmsEvent;

    invoke-virtual {p0}, Lcom/zoho/wms/common/WmsEvent;->wrap()Ljava/util/Hashtable;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/Hashtable;Z)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Hashtable;

    invoke-static {p0, v1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/Hashtable;Z)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/ArrayList;Z)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/util/HashMap;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/HashMap;

    invoke-static {p0, v1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/HashMap;Z)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getValuesAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    instance-of v0, p0, Lcom/zoho/wms/common/WmsEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p0, Lcom/zoho/wms/common/WmsEvent;

    invoke-virtual {p0}, Lcom/zoho/wms/common/WmsEvent;->wrap()Ljava/util/Hashtable;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/Hashtable;Z)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Hashtable;

    invoke-static {p0, v1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/Hashtable;Z)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/ArrayList;Z)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/util/HashMap;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/HashMap;

    invoke-static {p0, v1}, Lcom/zoho/wms/common/HttpDataWraper;->constructJSON(Ljava/util/HashMap;Z)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
