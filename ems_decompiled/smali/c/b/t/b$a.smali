.class public Lc/b/t/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/t/b;->f(ILjava/lang/String;Ljava/util/HashMap;Lorg/json/JSONObject;Lorg/json/JSONArray;ZZLc/b/t/b$d;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/b/l$b<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lc/b/t/b$d;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lc/b/t/b;


# direct methods
.method public constructor <init>(Lc/b/t/b;ZLc/b/t/b$d;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/t/b$a;->e:Lc/b/t/b;

    iput-boolean p2, p0, Lc/b/t/b$a;->a:Z

    iput-object p3, p0, Lc/b/t/b$a;->b:Lc/b/t/b$d;

    iput-boolean p4, p0, Lc/b/t/b$a;->c:Z

    iput-object p5, p0, Lc/b/t/b$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lorg/json/JSONObject;

    .line 1
    iget-object v0, p0, Lc/b/t/b$a;->e:Lc/b/t/b;

    iget-boolean v1, p0, Lc/b/t/b$a;->a:Z

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lc/b/t/b;->a:Lc/b/t/b$e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/b/t/b$e;->j()V

    .line 3
    :cond_0
    sget-object v0, Lc/b/t/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESULT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lc/b/t/b$a;->b:Lc/b/t/b$d;

    if-eqz v0, :cond_3

    new-instance v0, Lc/b/t/a;

    invoke-direct {v0, p1}, Lc/b/t/a;-><init>(Lorg/json/JSONObject;)V

    .line 4
    iget-boolean p1, v0, Lc/b/t/a;->c:Z

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lc/b/t/b$a;->b:Lc/b/t/b$d;

    invoke-interface {p1, v0}, Lc/b/t/b$d;->a(Lc/b/t/a;)V

    iget-boolean p1, p0, Lc/b/t/b$a;->c:Z

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, v0, Lc/b/t/a;->e:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lc/b/t/b$a;->d:Ljava/lang/String;

    const-string v2, "time_updated"

    .line 8
    :try_start_0
    iget-object v0, v0, Lc/b/t/a;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "0"

    .line 9
    :goto_0
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v2

    iget-object v2, v2, Lc/b/k/a;->b:Lc/b/k/f/b;

    const-string v3, "/"

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 11
    monitor-enter v2

    :try_start_1
    invoke-virtual {v2}, Lc/b/k/f/b;->a()V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "request"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "response"

    invoke-virtual {v3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "time_updated"

    invoke-virtual {v3, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v2, Lc/b/k/f/b;->b:Lc/b/k/f/a;

    .line 12
    iget-object p1, p1, Lc/b/k/f/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "caching"

    const/4 v1, 0x0

    const/4 v4, 0x5

    .line 13
    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 14
    iget-object p1, v2, Lc/b/k/f/b;->b:Lc/b/k/f/a;

    invoke-virtual {p1}, Lc/b/k/f/a;->close()V

    .line 15
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 16
    :cond_1
    iget-object p1, v0, Lc/b/t/a;->d:Ljava/lang/String;

    .line 17
    iget v1, v0, Lc/b/t/a;->b:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 18
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v1, p0, Lc/b/t/b$a;->b:Lc/b/t/b$d;

    invoke-interface {v1, p1}, Lc/b/t/b$d;->b(Ljava/lang/String;)V

    .line 19
    iget p1, v0, Lc/b/t/a;->b:I

    if-nez p1, :cond_3

    .line 20
    iget-object p1, p0, Lc/b/t/b$a;->e:Lc/b/t/b;

    .line 21
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "token expired"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "ACTION_RESET_APP"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    sget-object v0, Lcom/emsportal/AppController;->c:Lcom/emsportal/AppController;

    .line 23
    invoke-virtual {v0, p1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void
.end method
