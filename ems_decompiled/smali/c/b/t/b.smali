.class public Lc/b/t/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/t/b$c;,
        Lc/b/t/b$d;,
        Lc/b/t/b$e;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "b"

.field public static c:Lc/b/t/b;


# instance fields
.field public a:Lc/b/t/b$e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lc/b/t/b$d;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lc/b/t/b;->b()Lc/b/t/b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lc/b/t/b;->g(ILjava/lang/String;Ljava/util/HashMap;ZZLc/b/t/b$d;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Lc/b/t/b;
    .locals 1

    sget-object v0, Lc/b/t/b;->c:Lc/b/t/b;

    if-nez v0, :cond_0

    new-instance v0, Lc/b/t/b;

    invoke-direct {v0}, Lc/b/t/b;-><init>()V

    sput-object v0, Lc/b/t/b;->c:Lc/b/t/b;

    :cond_0
    sget-object v0, Lc/b/t/b;->c:Lc/b/t/b;

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lc/b/t/b$d;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lc/b/t/b;->b()Lc/b/t/b;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lc/b/t/b;->g(ILjava/lang/String;Ljava/util/HashMap;ZZLc/b/t/b$d;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Lorg/json/JSONObject;ZLc/b/t/b$d;)V
    .locals 10

    invoke-static {}, Lc/b/t/b;->b()Lc/b/t/b;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p1

    move v6, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v9}, Lc/b/t/b;->f(ILjava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;Lorg/json/JSONArray;ZZLc/b/t/b$d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c(Lc/b/t/b$d;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lc/b/t/a;

    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p2}, Lc/b/k/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lc/b/t/a;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lc/b/t/b$d;->a(Lc/b/t/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const-string p2, "No data"

    invoke-interface {p1, p2}, Lc/b/t/b$d;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public f(ILjava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;Lorg/json/JSONArray;ZZLc/b/t/b$d;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONArray;",
            "ZZ",
            "Lc/b/t/b$d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p9

    invoke-static {}, Lb/u/a;->M()Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_7

    if-eqz p6, :cond_0

    .line 1
    iget-object v0, v7, Lc/b/t/b;->a:Lc/b/t/b$e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/b/t/b$e;->l()V

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    :cond_1
    if-nez p1, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->clear()V

    move-object v10, v0

    goto :goto_1

    :cond_3
    move-object/from16 v10, p2

    :goto_1
    new-instance v11, Lc/b/t/b$a;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p6

    move-object/from16 v3, p8

    move/from16 v4, p7

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lc/b/t/b$a;-><init>(Lc/b/t/b;ZLc/b/t/b$d;ZLjava/lang/String;)V

    new-instance v12, Lc/b/t/b$b;

    move-object v0, v12

    invoke-direct/range {v0 .. v5}, Lc/b/t/b$b;-><init>(Lc/b/t/b;ZLc/b/t/b$d;ZLjava/lang/String;)V

    new-instance v13, Lc/b/t/b$c;

    move-object v0, v13

    move v2, p1

    move-object v3, v10

    move-object/from16 v4, p3

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lc/b/t/b$c;-><init>(Lc/b/t/b;ILjava/lang/String;Ljava/util/Map;Lc/a/b/l$b;Lc/a/b/l$a;)V

    if-eqz p4, :cond_4

    new-instance v13, Lc/b/t/b$c;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move-object v3, v10

    move-object/from16 v4, p4

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lc/b/t/b$c;-><init>(Lc/b/t/b;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/l$b;Lc/a/b/l$a;)V

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v13, v8}, Lc/a/b/j;->setTag(Ljava/lang/Object;)Lc/a/b/j;

    :cond_5
    new-instance v0, Lc/a/b/d;

    const/16 v1, 0x4e20

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v9, v2}, Lc/a/b/d;-><init>(IIF)V

    invoke-virtual {v13, v0}, Lc/a/b/j;->setRetryPolicy(Lc/a/b/n;)Lc/a/b/j;

    .line 3
    sget-object v0, Lb/u/a;->d:Lc/a/b/k;

    if-eqz v0, :cond_6

    .line 4
    invoke-virtual {v0, v13}, Lc/a/b/k;->a(Lc/a/b/j;)Lc/a/b/j;

    goto :goto_3

    .line 5
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz p7, :cond_9

    .line 6
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->clear()V

    move-object/from16 v1, p8

    .line 7
    invoke-virtual {p0, v1, v0}, Lc/b/t/b;->c(Lc/b/t/b$d;Ljava/lang/String;)V

    goto :goto_3

    .line 8
    :cond_9
    sget-object v0, Lcom/emsportal/AppController;->c:Lcom/emsportal/AppController;

    const v1, 0x7f100263

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void
.end method

.method public g(ILjava/lang/String;Ljava/util/HashMap;ZZLc/b/t/b$d;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lc/b/t/b$d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lc/b/t/b;->f(ILjava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;Lorg/json/JSONArray;ZZLc/b/t/b$d;Ljava/lang/String;)V

    return-void
.end method
