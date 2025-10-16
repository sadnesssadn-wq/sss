.class public Lc/a/b/q/h;
.super Lc/a/b/q/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/b/q/i<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/l$b;Lc/a/b/l$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lc/a/b/l$b<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lc/a/b/l$a;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v3, p3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lc/a/b/q/i;-><init>(ILjava/lang/String;Ljava/lang/String;Lc/a/b/l$b;Lc/a/b/l$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc/a/b/l$b;Lc/a/b/l$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc/a/b/l$b<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lc/a/b/l$a;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc/a/b/q/i;-><init>(ILjava/lang/String;Ljava/lang/String;Lc/a/b/l$b;Lc/a/b/l$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lc/a/b/l$b;Lc/a/b/l$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lc/a/b/l$b<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lc/a/b/l$a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    move-object v4, p2

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lc/a/b/q/i;-><init>(ILjava/lang/String;Ljava/lang/String;Lc/a/b/l$b;Lc/a/b/l$a;)V

    return-void
.end method


# virtual methods
.method public parseNetworkResponse(Lc/a/b/i;)Lc/a/b/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/i;",
            ")",
            "Lc/a/b/l<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lc/a/b/i;->b:[B

    iget-object v2, p1, Lc/a/b/i;->c:Ljava/util/Map;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lb/u/a;->V(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lb/u/a;->U(Lc/a/b/i;)Lc/a/b/a$a;

    move-result-object p1

    .line 1
    new-instance v0, Lc/a/b/l;

    invoke-direct {v0, v1, p1}, Lc/a/b/l;-><init>(Ljava/lang/Object;Lc/a/b/a$a;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    .line 3
    new-instance p1, Lc/a/b/l;

    invoke-direct {p1, v0}, Lc/a/b/l;-><init>(Lcom/android/volley/VolleyError;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 4
    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    .line 5
    new-instance p1, Lc/a/b/l;

    invoke-direct {p1, v0}, Lc/a/b/l;-><init>(Lcom/android/volley/VolleyError;)V

    return-object p1
.end method
